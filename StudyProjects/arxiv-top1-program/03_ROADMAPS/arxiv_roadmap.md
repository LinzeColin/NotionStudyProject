# arXiv Roadmap

Project: `arxiv-top1-program`
Notion target: `Codex Study Timeline / arXiv Roadmap`
Program window: `2026-06-13` to `2030-12-18`
Status: integrated roadmap generated on 2026-06-14

## Source And Blockers

- Source of truth for timing: `state.json`.
- Source for active route detail: `10_PROGRAM_STATE/group_routes/Q-FIN.csv`, `PHYS.csv`, `MATH.csv`, and taxonomy manifest.
- `QFIN_Notion_Simple_Import_Pack.zip` was not found at `/Users/linzezhang/Downloads/QFIN_Notion_Simple_Import_Pack.zip`; broader search was stopped after timeout, so that package is a blocker.
- ChatGPT, Claude, and Perplexity connectors are unavailable in the current tool context; this is recorded as `blocked_unavailable`.
- Two configured external agent reviewers completed: Ramanujan and Pascal.
- `CS.csv` date windows were repaired on 2026-06-14; `state.json`, `CS.csv`, and Notion CS timeline now align on `2027-09-06 -> 2030-12-18`.

## Project-Cycle Strategy

This is not a broad encyclopedia route. It is a rolling Top 1% judgment program. Each archive is a 30-day cycle:

1. Day 1-3: concept skeleton, why this archive matters, core anti-misunderstanding.
2. Day 4-12: mechanism map, minimal math/model, failure modes, examples.
3. Day 13-22: representative papers, methods, assumptions, evidence quality.
4. Day 23-27: cross-group bridge to trading, research systems, agents, AI, physics, math, and real decisions.
5. Day 28-30: synthesis memo, active recall, next-archive gate.

Daily judgment question:

```text
如果我是交易系统/研究系统/agent 系统，今天这个概念会让我避免哪一种亏钱、误判或伪知识错觉？
```

# Group: Q-FIN - Quantitative Finance

Group strategy: Q-FIN is the highest immediate ROI group because it directly affects trading, alpha judgment, execution quality, risk control, and agent workspace design.

## Archive: q-fin.TR - Trading and Market Microstructure

Learn price formation, limit order book, spread, depth, liquidity, slippage, stop orders, and why a signal can make money on paper but fail in execution.

## Archive: q-fin.RM - Risk Management

Learn drawdown, tail risk, leverage, position sizing, stress scenarios, and why risk is a system constraint rather than a reporting metric.

## Archive: q-fin.ST - Statistical Finance

Learn statistical properties of financial time series, noisy evidence, regime shift, overfitting, and sample-out failure.

## Archive: q-fin.PR - Pricing of Securities

Learn pricing logic, discounting, stochastic assumptions, model boundary, and when a price is a model output rather than ground truth.

## Archive: q-fin.PM - Portfolio Management

Learn correlation, diversification, allocation, rebalancing, objective functions, and why single-trade edge is not portfolio edge.

## Archive: q-fin.MF - Mathematical Finance

Learn stochastic calculus intuition, martingales, hedging, arbitrage boundary, and why mathematical elegance can hide implementation risk.

## Archive: q-fin.CP - Computational Finance

Learn numerical methods, backtesting, simulation, Monte Carlo, model calibration, and compute-driven false precision.

## Archive: q-fin.EC - Economics

Learn market micro-to-macro links, incentives, institutions, liquidity cycles, and why market behavior changes when rules change.

## Archive: q-fin.GN - General Finance

Synthesize the finance map, connect subfields, identify what to specialize in next, and produce a finance judgment memo.

# Group: PHYS - Physics

Group strategy: PHYS trains state, observation, uncertainty, measurement, systems, scale, and model-boundary judgment. Treat physics as a complex-system thinking gym, not formula memorization.

## Archive: quant-ph - Quantum Physics

Learn state as computable information compression, amplitude vs probability, measurement, uncertainty, and why observation changes what can be known.

## Archive: physics.data-an - Data Analysis, Statistics and Probability

Learn noisy measurement, uncertainty estimates, statistical inference, and evidence quality in experimental systems.

## Archive: physics.comp-ph - Computational Physics

Learn simulation, numerical experiment, discretization error, stability, and why computed reality is model-filtered reality.

## Archive: cond-mat.stat-mech - Statistical Mechanics

Learn ensemble thinking, macro behavior from micro rules, phase transition, and why averages can hide regime changes.

## Archive: math-ph - Mathematical Physics

Learn how mathematics encodes physical structure; use it as a bridge to MATH, not a proof-heavy detour.

## Archive: nlin.AO - Adaptation and Self-Organizing Systems

Learn local rules, adaptation, emergence, and how systems organize without central control.

## Archive: nlin.CD - Chaotic Dynamics

Learn sensitivity, nonlinear evolution, attractors, and why deterministic systems can still be practically unpredictable.

## Archive: nlin.CG - Cellular Automata and Lattice Gases

Learn simple-rule systems, discrete dynamics, simulation worlds, and emergent behavior.

## Archive: nlin.PS - Pattern Formation and Solitons

Learn stable patterns, waves, nonlinear structures, and why persistence can emerge from dynamics.

## Archive: nlin.SI - Exactly Solvable and Integrable Systems

Learn why solvable systems are rare, what structure makes prediction possible, and where the analogy breaks.

## Archive: gr-qc - General Relativity and Quantum Cosmology

Learn model scale, spacetime assumptions, and how theory constrains observables.

## Archive: hep-th - High Energy Physics - Theory

Learn theory-building constraints, abstraction, symmetry, and why elegant theories still need empirical grounding.

## Archive: hep-ph - High Energy Physics - Phenomenology

Learn bridge from theory to observable effects, parameter constraints, and testable prediction.

## Archive: hep-ex - High Energy Physics - Experiment

Learn experimental design, detection, confidence, and how hard measurements shape theory.

## Archive: hep-lat - High Energy Physics - Lattice

Learn discretized computation for field theories, numerical approximation, and compute-bound knowledge.

## Archive: nucl-th - Nuclear Theory

Learn mesoscopic physical models, binding, interactions, and theory under scale constraints.

## Archive: nucl-ex - Nuclear Experiment

Learn measurement systems, instrumentation, uncertainty, and experimental validation.

## Archive: astro-ph.CO - Cosmology and Nongalactic Astrophysics

Learn inference from indirect evidence, large-scale models, and model dependence in cosmology.

## Archive: astro-ph.HE - High Energy Astrophysical Phenomena

Learn extreme regimes, rare events, and why tail phenomena matter.

## Archive: astro-ph.IM - Instrumentation and Methods for Astrophysics

Learn how instruments shape knowledge, detection limits, and source of measurement bias.

## Archive: astro-ph.SR - Solar and Stellar Astrophysics

Learn dynamic stellar systems, long time scales, and model-based inference.

## Archive: astro-ph.EP - Earth and Planetary Astrophysics

Learn planetary systems, data constraints, and cross-scale physical reasoning.

## Archive: astro-ph.GA - Astrophysics of Galaxies

Learn structure formation, aggregation, and inference from partial observation.

## Archive: cond-mat.dis-nn - Disordered Systems and Neural Networks

Learn disorder, energy landscapes, spin glass intuition, and bridges to neural networks.

## Archive: cond-mat.mes-hall - Mesoscale and Nanoscale Physics

Learn scale effects, quantum transport, and why macro intuition fails at small scales.

## Archive: cond-mat.mtrl-sci - Materials Science

Learn structure-property relationships, phase, defects, and industrial material judgment.

## Archive: cond-mat.quant-gas - Quantum Gases

Learn many-body quantum systems, collective behavior, and controlled experimental platforms.

## Archive: cond-mat.soft - Soft Condensed Matter

Learn deformable systems, polymers, fluids, and biological-material bridges.

## Archive: cond-mat.str-el - Strongly Correlated Electrons

Learn correlation, collective effects, and why independent-particle assumptions fail.

## Archive: cond-mat.supr-con - Superconductivity

Learn phase coherence, collective quantum effects, and model/experiment boundary.

## Archive: cond-mat.other - Other Condensed Matter

Use as synthesis and map-building for condensed matter long tail.

## Archive: physics.acc-ph - Accelerator Physics

Learn engineered physical systems, control, beams, and infrastructure-heavy experimentation.

## Archive: physics.app-ph - Applied Physics

Learn translation from theory to devices, measurement, and industrial application.

## Archive: physics.ao-ph - Atmospheric and Oceanic Physics

Learn fluid systems, climate-scale dynamics, and noisy large-system inference.

## Archive: physics.atm-clus - Atomic and Molecular Clusters

Learn cluster-scale physics and transitions between atom and material behavior.

## Archive: physics.atom-ph - Atomic Physics

Learn controlled quantum systems, spectroscopy, and precision measurement.

## Archive: physics.bio-ph - Biological Physics

Learn physical principles in living systems, noise, feedback, and complex constraints.

## Archive: physics.chem-ph - Chemical Physics

Learn reaction dynamics, molecular systems, and energy landscapes.

## Archive: physics.class-ph - Classical Physics

Learn the baseline intuition and where classical assumptions still work.

## Archive: physics.ed-ph - Physics Education

Learn how physics concepts are taught, misunderstood, and remediated.

## Archive: physics.flu-dyn - Fluid Dynamics

Learn turbulence, flow, instability, and industrial process relevance.

## Archive: physics.gen-ph - General Physics

Use as map-building and synthesis across physics.

## Archive: physics.geo-ph - Geophysics

Learn earth systems, indirect measurement, and large-scale uncertainty.

## Archive: physics.hist-ph - History and Philosophy of Physics

Learn how scientific concepts evolved and how model assumptions changed.

## Archive: physics.ins-det - Instrumentation and Detectors

Learn detectors, observability, and why measurement tools define possible knowledge.

## Archive: physics.med-ph - Medical Physics

Learn applied measurement, imaging, dose, and safety-critical physics.

## Archive: physics.optics - Optics

Learn waves, imaging, signal, and sensing systems.

## Archive: physics.plasm-ph - Plasma Physics

Learn high-energy collective dynamics, instability, and control.

## Archive: physics.pop-ph - Popular Physics

Use as communication training; do not mistake popularization for mastery.

## Archive: physics.soc-ph - Physics and Society

Learn system-level models applied to social behavior; watch for overreach.

## Archive: physics.space-ph - Space Physics

Learn plasma, fields, solar-terrestrial systems, and measurement limits.

# Group: MATH - Mathematics

Group strategy: MATH is the shared language for Q-FIN, PHYS, AI, and agent systems. Learn it as a tool for compression, inference, optimization, structure, and proof discipline.

## Archive: math.PR - Probability

Learn uncertainty compression, random variables, distributions, stochastic processes, and decision under uncertainty.

## Archive: math.ST - Statistics Theory

Learn evidence quality, estimation, confidence, bias, and what data can or cannot prove.

## Archive: math.OC - Optimization and Control

Learn objectives, constraints, control feedback, policy, and why optimized systems exploit bad metrics.

## Archive: math.IT - Information Theory

Learn entropy, information, coding, compression, and connection to AI/RAG/evidence.

## Archive: math.NA - Numerical Analysis

Learn numerical error, convergence, stability, and why computation can look precise but be wrong.

## Archive: math.DS - Dynamical Systems

Learn state evolution, fixed points, stability, chaos, and long-run behavior.

## Archive: math.FA - Functional Analysis

Learn spaces, operators, norms, and the language behind modern analysis and quantum theory.

## Archive: math.AP - Analysis of PDEs

Learn continuous dynamics, propagation, stability, and field-like systems.

## Archive: math.CO - Combinatorics

Learn discrete structures, counting, graphs, and combinatorial optimization.

## Archive: math.LO - Logic

Learn formal systems, proof limits, and machine-verifiable reasoning.

## Archive: math.MP - Mathematical Physics

Bridge math structures to physical theories.

## Archive: math.SP - Spectral Theory

Learn eigenvalues, operators, resonances, and structure revealed by spectra.

## Archive: math.CA - Classical Analysis and ODEs

Learn continuous functions, ODEs, and classical dynamic modeling.

## Archive: math.DG - Differential Geometry

Learn manifolds, curvature, and geometric structure.

## Archive: math.MG - Metric Geometry

Learn distance, shape, convergence, and geometric abstraction.

## Archive: math.CT - Category Theory

Learn compositional abstraction and structure-preserving maps; defer deep formalism.

## Archive: math.RT - Representation Theory

Learn symmetry through linear actions and group representations.

## Archive: math.GR - Group Theory

Learn symmetry, transformations, invariance, and algebraic structure.

## Archive: math.OA - Operator Algebras

Learn algebra of operators, non-commutative structure, and quantum bridges.

## Archive: math.QA - Quantum Algebra

Learn algebraic structures emerging from quantum theory.

## Archive: math.AG - Algebraic Geometry

Learn geometric solutions to algebraic systems; keep it as long-term structure map.

## Archive: math.NT - Number Theory

Learn arithmetic structure, primes, modularity, and cryptographic/complexity bridges.

## Archive: math.AC - Commutative Algebra

Learn rings, ideals, modules, and algebraic foundations.

## Archive: math.RA - Rings and Algebras

Learn non-commutative algebraic structures.

## Archive: math.AT - Algebraic Topology

Learn homotopy, homology, and topological invariants.

## Archive: math.GT - Geometric Topology

Learn manifolds, knots, and geometric structures.

## Archive: math.SG - Symplectic Geometry

Learn Hamiltonian systems and geometry of mechanics.

## Archive: math.CV - Complex Variables

Learn holomorphic functions and complex-analytic structure.

## Archive: math.KT - K-Theory and Homology

Learn advanced invariants and structure classification.

## Archive: math.GN - General Topology

Learn point-set topology and space concepts.

## Archive: math.GM - General Mathematics

Use for synthesis and map-building.

## Archive: math.HO - History and Overview

Use for historical framing, concept evolution, and communication.

# Group: STAT - Statistics

Group strategy: STAT starts after Q-FIN completes. It is the evidence-calibration layer: avoid false alpha, overfitting, bad inference, and unjustified confidence.

## Archive: stat.ML - Machine Learning

Learn statistical learning, generalization, overfitting, validation, and model selection.

## Archive: stat.ME - Methodology

Learn methods for inference, modeling, missing data, and applied evidence quality.

## Archive: stat.TH - Statistics Theory

Learn theoretical limits, asymptotics, estimation, and proof-backed inference.

## Archive: stat.CO - Computation

Learn computational statistics, MCMC, simulation, and approximation risks.

## Archive: stat.AP - Applications

Learn applied statistical design, domain assumptions, and interpretation.

## Archive: stat.OT - Other Statistics

Use as synthesis and map-building.

# Group: CS - Computer Science

Group strategy: CS is the implementation and systemization layer. Do not let CS tool-building replace Q-FIN/PHYS/MATH judgment training. Use `state.json` for timeline dates because `CS.csv` currently conflicts.

## Archive: cs.AI - Artificial Intelligence

Learn intelligence architectures, search, reasoning, planning, and limits of symbolic/model-based AI.

## Archive: cs.LG - Machine Learning

Learn learning systems, training/evaluation, generalization, and model failure.

## Archive: cs.CL - Computation and Language

Learn language modeling, NLP, embeddings, retrieval, prompting, and linguistic uncertainty.

## Archive: cs.MA - Multiagent Systems

Learn agent interaction, game dynamics, coordination, incentives, and failure modes.

## Archive: cs.SE - Software Engineering

Learn reliable delivery, tests, maintainability, requirements, and engineering judgment.

## Archive: cs.CR - Cryptography and Security

Learn security boundaries, adversarial thinking, privacy, authentication, and abuse control.

## Archive: cs.DB - Databases

Learn data modeling, transactions, indexes, query planning, and source-of-truth design.

## Archive: cs.DC - Distributed, Parallel, and Cluster Computing

Learn concurrency, distributed failure, consistency, scaling, and cluster execution.

## Archive: cs.IR - Information Retrieval

Learn search, ranking, retrieval evaluation, and RAG foundations.

## Archive: cs.CV - Computer Vision and Pattern Recognition

Learn image understanding, detection, multimodal evidence, and visual model failure.

## Archive: cs.RO - Robotics

Learn perception-action loops, control, planning, and embodied uncertainty.

## Archive: cs.PL - Programming Languages

Learn abstractions, type systems, interpreters, and tool-building discipline.

## Archive: cs.OS - Operating Systems

Learn processes, memory, filesystems, scheduling, and runtime constraints.

## Archive: cs.DS - Data Structures and Algorithms

Learn computational primitives and complexity-aware implementation.

## Archive: cs.CE - Computational Engineering, Finance, and Science

Bridge computation to engineering, finance, and scientific modeling.

## Archive: cs.NI - Networking and Internet Architecture

Learn network protocols, latency, failure, and distributed system boundaries.

## Archive: cs.SY - Systems and Control

Learn control systems, feedback, stability, and cyber-physical architecture.

## Archive: cs.GT - Computer Science and Game Theory

Learn incentives, mechanism design, strategic behavior, and multi-agent competition.

## Archive: cs.HC - Human-Computer Interaction

Learn user behavior, interface design, cognitive load, and workflow adoption.

## Archive: cs.CY - Computers and Society

Learn social effects, governance, ethics, and deployment externalities.

## Archive: cs.IT - Information Theory

Learn information, coding, compression, channel limits, and AI/RAG bridges.

## Archive: cs.NE - Neural and Evolutionary Computing

Learn evolutionary search, neural computation, and alternative optimization.

## Archive: cs.AR - Hardware Architecture

Learn compute hardware, memory, parallelism, and performance constraints.

## Archive: cs.ET - Emerging Technologies

Use for scanning frontier tools and technology shifts.

## Archive: cs.CC - Computational Complexity

Learn hard problems, tractability, reductions, and what cannot scale.

## Archive: cs.LO - Logic in Computer Science

Learn formal logic, verification, and proof systems.

## Archive: cs.DM - Discrete Mathematics

Learn graphs, combinatorial objects, and discrete reasoning.

## Archive: cs.FL - Formal Languages and Automata Theory

Learn automata, grammars, computation models, and formal systems.

## Archive: cs.CG - Computational Geometry

Learn geometric algorithms and spatial computation.

## Archive: cs.GR - Graphics

Learn rendering, geometry, simulation, and visual computation.

## Archive: cs.MM - Multimedia

Learn media systems, multimodal processing, and representation.

## Archive: cs.SI - Social and Information Networks

Learn networks, diffusion, influence, and graph-based systems.

## Archive: cs.PF - Performance

Learn measurement, profiling, bottlenecks, and system efficiency.

## Archive: cs.SC - Symbolic Computation

Learn algebraic computation and symbolic manipulation.

## Archive: cs.MS - Mathematical Software

Learn software for math, numerical tools, and correctness constraints.

## Archive: cs.NA - Numerical Analysis

Learn numerical computation from a CS implementation angle.

## Archive: cs.SD - Sound

Learn audio signal processing and representation.

## Archive: cs.DL - Digital Libraries

Learn knowledge organization, scholarly data, and retrieval infrastructure.

## Archive: cs.GL - General Literature

Use as synthesis and map-building.

## Archive: cs.OH - Other Computer Science

Use as miscellaneous frontier/map archive.

# Group: ECON - Economics

Group strategy: ECON starts after MATH completes. It explains incentives, institutions, market structure, and how behavior changes under rules.

## Archive: econ.EM - Econometrics

Learn causal inference, identification, panel/time-series evidence, and why correlation is not enough.

## Archive: econ.TH - Theoretical Economics

Learn incentives, equilibrium, information, mechanism design, and decision theory.

## Archive: econ.GN - General Economics

Use for macro map, institutional context, and synthesis.

# Group: EE/EESS - Electrical Engineering and Systems Science

Group strategy: EE/EESS bridges signals, control, image/video, and engineered systems. It is useful for agent sensors, industrial systems, and automation.

## Archive: eess.SP - Signal Processing

Learn signals, filtering, frequency, noise, and detection.

## Archive: eess.IV - Image and Video Processing

Learn visual signals, image/video pipelines, and multimodal preprocessing.

## Archive: eess.AS - Audio and Speech Processing

Learn speech/audio signal processing and human-machine interaction signals.

## Archive: eess.SY - Systems and Control

Learn feedback, stability, control design, and engineered system boundaries.

# Group: Q-BIO - Quantitative Biology

Group strategy: Q-BIO trains complex adaptive-system judgment: feedback, networks, evolution, noise, robustness, and biological constraints.

## Archive: q-bio.BM - Biomolecules

Learn molecular systems and structure-function relationships.

## Archive: q-bio.CB - Cell Behavior

Learn cellular decision-making, signaling, and local-to-global behavior.

## Archive: q-bio.GN - Genomics

Learn sequence data, high-dimensional inference, and biological evidence.

## Archive: q-bio.MN - Molecular Networks

Learn network regulation, feedback loops, and emergent behavior.

## Archive: q-bio.NC - Neurons and Cognition

Learn neural systems, cognition, information processing, and biological intelligence.

## Archive: q-bio.OT - Other Quantitative Biology

Use as synthesis and map-building.

## Archive: q-bio.PE - Populations and Evolution

Learn adaptation, selection, population dynamics, and evolutionary incentives.

## Archive: q-bio.QM - Quantitative Methods

Learn quantitative modeling methods for biological data.

## Archive: q-bio.SC - Subcellular Processes

Learn intracellular mechanisms and multi-scale biology.

## Archive: q-bio.TO - Tissues and Organs

Learn system-level biological organization and physiology.
