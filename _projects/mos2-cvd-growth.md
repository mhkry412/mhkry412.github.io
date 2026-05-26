---
title: MoS₂ CVD Growth on Mica
description: "Reactive MD simulation of monolayer MoS₂ nucleation and growth on muscovite mica via LPCVD."
image: /assets/images/MoS2_structure.png
tags: [LAMMPS, ReaxFF, MoS₂, Mica, CVD, MD]
mathjax: true
---

Master's thesis project simulating the atomistic growth mechanism of
monolayer molybdenum disulfide (MoS₂) on muscovite mica substrate
during Low-Pressure Chemical Vapor Deposition (LPCVD).

### Methods

A 5-phase MD protocol using LAMMPS with the ReaxFF H2S-MoCO6 force
field (Ponomarev 2022):

| Phase | Step | Duration |
|---|---|---|
| 0 | Energy minimization | — |
| 1 | Substrate equilibration | 25 ps at 923 K |
| 2 | CVD deposition (Mo + S injection) | 1.5 ns |
| 3 | High-temperature anneal | 500 ps at 1073 K |
| 4 | Slow cooling to 300 K | 250 ps |
| 5 | Characterization | 50 ps at 300 K |

### Goals

- Understand atomistic mechanisms of MoS₂ nucleation on mica
- Quantify effects of temperature and S:Mo ratio on film quality
- Bridge MD (nm/ns) and experimental (μm/min) scales

### Infrastructure

- **Mahameru HPC** (BRIN) — SLURM jobs, MPI parallelization
- **Quasi Cluster** (BRIN) — Local GPU cluster
- Analysis via OVITO, Python (ASE, MDanalysis, matplotlib)

<figure class="figure">
  <img src="/assets/images/MoS2_bands_dos.png" alt="Band structure and DOS of monolayer MoS2">
  <figcaption>Electronic band structure and density of states of monolayer MoS₂.</figcaption>
</figure>
