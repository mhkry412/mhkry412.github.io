// Typst Resume — Hanandaru Mahaputra Purwanto
// Compile: typst compile resume.typ resume.pdf

#set page(paper: "a4", margin: (top: 2.5cm, bottom: 2cm, left: 2.5cm, right: 2.5cm))
#set text(font: ("Helvetica", "Arial", "system-ui"), size: 10pt, lang: "en")

#let section-title(title) = {
  v(0.8cm)
  text(size: 11pt, weight: 700, title)
  line(length: 100%, stroke: 0.5pt)
  v(0.3cm)
}

#let entry(title, subtitle: "", date: "", body: "") = {
  grid(
    columns: (1fr, auto),
    {
      text(weight: 600, size: 10pt, title)
      if subtitle != "" {
        text(size: 9pt, fill: gray, subtitle)
      }
    },
    text(size: 8pt, fill: gray, date)
  )
  body
  v(0.3cm)
}

// ─── Header ───

align(center, text(size: 20pt, weight: 700, "Hanandaru Mahaputra Purwanto"))

v(0.15cm)
align(center, text(size: 9pt, fill: gray, "Computational Physicist"))

v(0.1cm)
align(center, text(size: 8pt, fill: gray, "handarpurwanto02@gmail.com  /  github.com/mhkry412  /  linkedin.com/in/handar-purwanto"))

v(0.5cm)

// ─── Summary ───

section-title("Summary")

Computational physicist specializing in DFT and MD simulations of
2D materials. Research Assistant at BRIN's Quantum Physics Research
Center. M.Sc. candidate at Universitas Indonesia. Experienced in
HPC workflows, electronic structure analysis, and atomistic
modeling of low-dimensional systems.

// ─── Experience ───

section-title("Experience")

#entry(
  "Research Assistant",
  subtitle: "BRIN — Pusat Riset Fisika Kuantum",
  date: "Feb 2026 – Present",
  body: [
    Atomistic simulations of MoS₂ CVD growth on mica using
    LAMMPS/ReaxFF and Quantum ESPRESSO on BRIN HPC.

    - Simulated monolayer MoS₂ nucleation and growth via LPCVD
    - Managed HPC workflows on Mahameru & Quasi Cluster (SLURM)
    - Built Python pipelines for trajectory analysis and visualization
  ]
)

#entry(
  "Research Intern",
  subtitle: "BRIN — Pusat Riset Fisika Kuantum",
  date: "Jan 2024 – Feb 2024",
  body: [
    DFT study of topological properties of stanene using
    Quantum ESPRESSO with spin-orbit coupling.

    - Computed band structure and DOS of stanene
    - Investigated topological edge states
  ]
)

#entry(
  "Research Intern",
  subtitle: "ITS / G'nomaC",
  date: "Mar 2023 – Dec 2023",
  body: [
    Synthesized graphene oxide from coconut fiber biomass for
    sustainable nanomaterials research.

    - Developed GO synthesis route from agricultural waste
    - Characterized products via XRD, FTIR, Raman, SEM
  ]
)

#entry(
  "Teaching Assistant — Mechanics Physics",
  subtitle: "ITS International Undergraduate Program",
  date: "Sep 2024 – Dec 2024",
  body: [
    Led tutorial sessions and mentored IUP students in
    fundamental physics.
  ]
)

#entry(
  "Lab Assistant — Basic Physics",
  subtitle: "ITS Dept. of Physics",
  date: "Sep 2023 – Nov 2024",
  body: [
    Guided undergraduates in mechanics and electromagnetism
    laboratory experiments and data analysis.
  ]
)

// ─── Education ───

section-title("Education")

#entry(
  "M.Sc. Physics",
  subtitle: "Universitas Indonesia",
  date: "2026 – Present",
  body: [Degree by Research (DbR) scholarship — BRIN partnership.]
)

#entry(
  "B.Sc. Physics (S.Si.)",
  subtitle: "Institut Teknologi Sepuluh Nopember",
  date: "2021 – 2025",
  body: [GPA 2.99. Thesis on DFT+MD study of hBN magnetic properties.]
)

#entry(
  "COIL Program",
  subtitle: "Shibaura Institute of Technology, Japan",
  date: "2024",
  body: [Topics: superconductivity, magnetism, advanced heat transfer.]
)

// ─── Skills ───

section-title("Skills")

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.2cm,
  [*DFT:*],     "Quantum ESPRESSO, SIESTA, band structure, DOS, PDOS, SOC",
  [*MD:*],      "LAMMPS, ReaxFF, OVITO, RDF, MSD, coordination analysis",
  [*Code:*],    "Python, Bash, LaTeX, Typst, ASE, pymatgen, matplotlib",
  [*HPC:*],     "SLURM, MPI, Mahameru, Linux, Git",
  [*Lang:*],    "Indonesian (native), English (professional)",
)
