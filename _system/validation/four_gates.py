#!/usr/bin/env python3
"""四道门校验器｜Study OS v0.0.0.3

融合 LinzeColin/Governance 的双平面七文件治理标准（体积门 / 中文门 / 纯净门 /
阻塞重审门），按本仓实际结构改造为：

  体积门     治理文件不得超出 AGENTS.md 第一节声明的行数上限
  中文门     治理文件正文不得出现未登记在口径字典的英文术语
  证据纯净门 项目 HANDOFF.md 的「无 AI 独立证据」区不得出现提示后完成 / AI 生成字样
  登记门     所有 active / paused 项目必须登记进 README.md 的项目登记表

用法（从仓库根目录）：
    python3 _system/validation/four_gates.py

退出码 0 = 四道门全过；1 = 至少一道门失败。
「绿的门是假门」：证据未接通时状态文件应显示未评估 / 未取证，门保持红。
"""

import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
os.chdir(ROOT)

# ---- 体积门预算：与 AGENTS.md 第一节表格保持一致；None = 不限 ----
BUDGET = {
    "AGENTS.md": 240,
    "STUDY_PRODUCT.md": 200,
    "STUDY_ARCHITECTURE.md": 340,
    "STUDY_ORCHESTRATOR_ROUTE.md": 180,
    "TEACHING_METHOD_REGISTRY.md": None,
    "SESSION_ACCEPTANCE_AND_REVIEW.md": 280,
    "MEMORY_RECOVERY_AND_EVOLUTION.md": 220,
    "SKILL_RULES_CHECKLIST.md": None,
}
GOVERNANCE_FILES = list(BUDGET)
DICT_FILE = "STUDY_ARCHITECTURE.md"
INDEX = "_system/STUDY_INDEX.md"
README = "README.md"

# 结构性豁免：不是术语，不需要登记（见口径字典 11.6 末尾）
STRUCTURAL = re.compile(
    r"""^(
        v\d+(\.\d+)*        # 版本号 v0.0.0.3
      | [A-J]              # 章节字母
      | [SCG]\d{1,2}       # 规则编号 S01 / C1 / G21
      | [EHR]\d            # 等级代号 E0 H4 R6
      | D\d+               # 课程编号 D01
      | W\d+               # 周编号 W01
      )$""",
    re.X,
)

fails = []
passes = []


def ok(msg):
    passes.append(msg)
    print(f"PASS  {msg}")


def bad(msg):
    fails.append(msg)
    print(f"FAIL  {msg}")


def strip_exempt(text):
    """去掉代码块、行内代码、网址、链接目标 —— 这些一律豁免。

    围栏可能是 3 个以上反引号（正文里用 4 个反引号包 3 个反引号是合法写法），
    必须按开栏长度配对收栏，否则会错配并把后续正文误当代码放行/误当正文拦截。
    """
    # 围栏代码块：开栏 N 个反引号，收栏至少 N 个反引号，按 N 精确配对
    text = re.sub(r"^(`{3,})[^\n]*\n.*?^\1`*[ \t]*$", " ", text, flags=re.S | re.M)
    # 行内代码：同样按反引号数量配对，支持 ``...`` 这类包含反引号的写法
    text = re.sub(r"(`+)(?:(?!\1).)+?\1", " ", text, flags=re.S)
    text = re.sub(r"<https?://[^>]*>", " ", text)
    text = re.sub(r"\]\([^)]*\)", " ", text)          # markdown 链接目标
    text = re.sub(r"https?://\S+", " ", text)
    return text


def load_registry():
    """从口径字典 11.6 抽出已登记的英文术语。"""
    body = open(DICT_FILE, encoding="utf-8").read()
    m = re.search(r"### 11\.6[^\n]*\n(.*?)(?=\n## )", body, flags=re.S)
    if not m:
        return None
    terms = set()
    for line in m.group(1).splitlines():
        if not line.startswith("|") or set(line) <= set("|- "):
            continue
        cells = line.split("|")
        if len(cells) < 2:
            continue
        for w in re.findall(r"[A-Za-z][A-Za-z0-9]*", cells[1]):
            terms.add(w.lower())
    return terms


print("== 门 1/4  体积门 ==")
for f, lim in BUDGET.items():
    if not os.path.exists(f):
        bad(f"治理文件缺失：{f}")
        continue
    n = sum(1 for _ in open(f, encoding="utf-8"))
    if lim is None:
        ok(f"{f}  {n} 行（不限）")
    elif n <= lim:
        ok(f"{f}  {n}/{lim} 行")
    else:
        bad(f"{f} 超出行数上限 {n}/{lim} —— 请精简内容，不要调大上限")

print("\n== 门 2/4  中文门 ==")
registry = load_registry()
if registry is None:
    bad(f"读不到口径字典 11.6 登记表（{DICT_FILE}）")
else:
    ok(f"口径字典已登记 {len(registry)} 个英文术语")
    for f in GOVERNANCE_FILES:
        if not os.path.exists(f):
            continue
        text = strip_exempt(open(f, encoding="utf-8").read())
        unreg = set()
        for w in re.findall(r"[A-Za-z][A-Za-z0-9]*", text):
            if STRUCTURAL.match(w) or w.lower() in registry:
                continue
            unreg.add(w)
        if unreg:
            bad(f"{f} 正文出现未登记英文术语：{sorted(unreg)}")
        else:
            ok(f"{f} 正文无未登记英文术语")

print("\n== 门 3/4  证据纯净门 ==")
# 「无 AI 独立证据」区（E3/E4）出现下列字样即判失败
DIRTY = ["提示后", "AI 生成", "AI生成", "同轮纠正", "代答", "assisted", "prompted"]
checked = 0
for slug in sorted(os.listdir("StudyProjects")) if os.path.isdir("StudyProjects") else []:
    h = os.path.join("StudyProjects", slug, "HANDOFF.md")
    if not os.path.exists(h):
        continue
    body = open(h, encoding="utf-8").read()
    m = re.search(r"### Reliable without AI \(E3/E4\)\n(.*?)(?=\n### )", body, flags=re.S)
    if not m:
        continue
    checked += 1
    seg = m.group(1)
    hit = [d for d in DIRTY if d in seg]
    if hit:
        bad(f"{h} 的「无 AI 独立证据」区出现 {hit} —— 应移到对应的辅助 / 暂定等级区")
if checked:
    ok(f"已检查 {checked} 个项目交接文件的独立证据区")
else:
    bad("没有任何项目交接文件带可识别的独立证据区 —— 结构可能已漂移")

print("\n== 门 4/4  登记门 ==")
if not os.path.exists(README):
    bad(f"{README} 不存在，无法核验项目登记")
elif not os.path.exists(INDEX):
    bad(f"{INDEX} 不存在，无法取得项目清单")
else:
    readme = open(README, encoding="utf-8").read()
    idx = open(INDEX, encoding="utf-8").read()
    rows = re.search(r"## Canonical Projects\n(.*?)(?=\n## )", idx, flags=re.S)
    missing, routable = [], 0
    if rows:
        for line in rows.group(1).splitlines():
            if not line.startswith("| `"):
                continue
            cells = [c.strip() for c in line.split("|")]
            if len(cells) < 4:
                continue
            slug, status = cells[1].strip("` "), cells[3]
            if status in ("active", "paused"):
                routable += 1
                if f"`{slug}`" not in readme:
                    missing.append(slug)
    if missing:
        bad(f"下列 active/paused 项目未登记进 {README}：{missing}")
    elif routable == 0:
        bad("派生索引里没有任何 active/paused 项目 —— 结构可能已漂移")
    else:
        ok(f"{routable} 个 active/paused 项目全部登记在 {README}")
    # Notion 一致性：本仓无 Notion 连接器，只能要求「如实声明」而非假绿
    if "Notion 同步状态" in readme:
        ok("README 含 Notion 同步状态章节（阻塞需如实记录，不得假绿）")
    else:
        bad("README 缺少「Notion 同步状态」章节 —— 双向登记无法追溯")

print("\n" + "=" * 30)
print(f"四道门  通过 {len(passes)}  失败 {len(fails)}")
print("=" * 30)
sys.exit(1 if fails else 0)
