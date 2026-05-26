---
title: Temperature-Activated d0 Magnetism in hBN
description: "DFT + MD study of defective monolayer hBN revealing heat-induced magnetism via spin-phonon coupling."
thumbnail: /assets/images/hBN_spin_BB_1225K.png
tags: [Quantum ESPRESSO, LAMMPS, ReaxFF, hBN, DFT, MD]
mathjax: true
---

Undergraduate thesis investigating the electronic and magnetic
properties of monolayer hexagonal boron nitride (hBN) under thermal
treatment using a combined DFT + MD approach.

### Systems studied

- **Pristine hBN** — non-magnetic insulator, band gap ~4.45 eV
- **N_B antisite defect** (N replacing B) — anomalous band gap *blueshift*
- **B_N antisite defect** (B replacing N) — **temperature-activated $d^0$ magnetism**

### Key finding

The B_N defect system showed magnetisation growing from $0\,\mu_B$
at 800 K to **$1.85\,\mu_B$ at 1225 K** — a rare case of
**spin-phonon coupling** where heat induces rather than destroys
magnetic order.

<figure class="figure">
  <img src="/assets/images/hBN_spin_BB_1225K.png" alt="Spin density of B_N defect hBN at 1225 K showing induced magnetization">
  <figcaption>Spin density isosurface of B_N antisite hBN at 1225 K. Yellow/blue lobes indicate spin polarization.</figcaption>
</figure>

<figure class="figure">
  <img src="/assets/images/simple_bands_pdos_BB_1225K.png" alt="Band structure and PDOS of B_N defect hBN at 1225 K">
  <figcaption>Band structure and projected density of states for B_N defect at 1225 K. Spin splitting confirms magnetic ordering.</figcaption>
</figure>

### Methods

| Tool | Role |
|---|---|
| LAMMPS | MD with ReaxFF (Lele 2022) — NVT ensemble, 800–1225 K |
| Quantum ESPRESSO 7.1 | DFT with PBEsol PAW — SCF, NSCF, bands, DOS, PDOS |
| ALELEON HPC (ITS) | SLURM cluster — MPI parallelization |

### Outputs

- Full thesis (LaTeX, 500+ pages)
- Manuscript draft: *"Temperature-Activated d0 Magnetism in Defective Monolayer Boron Nitride via Spin-Phonon Coupling"*
- Beamer presentations, 100+ result figures (band structures, DOS, charge/spin densities)
