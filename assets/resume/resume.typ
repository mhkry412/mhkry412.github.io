// Typst Resume for Handar
// Compile with: typst compile resume.typ resume.pdf

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

align(center, text(size: 20pt, weight: 700, "Handar"))

v(0.15cm)
align(center, text(size: 9pt, fill: gray, "Software Engineer"))

v(0.1cm)
align(center, text(size: 8pt, fill: gray, "hello@handar.dev  /  github.com/handar  /  linkedin.com/in/handar"))

v(0.5cm)

// ─── Summary ───

section-title("Summary")

Software engineer with 8+ years of experience building web applications
and distributed systems. Passionate about clean architecture, developer
tooling, and minimalist design.

// ─── Experience ───

section-title("Experience")

#entry(
  "Software Engineer",
  subtitle: "Freelance",
  date: "2022 – Present",
  body: [
    Design and build full-stack web applications for clients across
    industries. Focus on clean architecture and performance.

    - Built and deployed 10+ production applications
    - Reduced page load times by 40% through optimization
    - Migrated legacy monoliths to modern stack
  ]
)

#entry(
  "Frontend Developer",
  subtitle: "Digital Agency",
  date: "2020 – 2022",
  body: [
    Developed responsive web applications and component libraries.

    - Led redesign of flagship product interface
    - Established design system used by 3 teams
    - Mentored 2 junior developers
  ]
)

#entry(
  "Junior Developer",
  subtitle: "Startup",
  date: "2018 – 2020",
  body: [
    First engineering hire. Built the initial product from scratch.

    - Shipped MVP in 3 months
    - Grew user base from 0 to 5,000
    - Set up CI/CD and monitoring infrastructure
  ]
)

// ─── Skills ───

section-title("Skills")

#grid(
  columns: (auto, 1fr),
  row-gutter: 0.2cm,
  [*Languages:*],  "TypeScript, Go, Rust, Python, SQL, HTML/CSS",
  [*Frontend:*],   "React, Vue.js, Svelte, Tailwind CSS, Next.js",
  [*Backend:*],    "Node.js, Express, PostgreSQL, Redis, gRPC",
  [*Infra:*],      "Docker, Kubernetes, AWS, CI/CD",
  [*Tools:*],      "Figma, Git, Linux, System Design",
)

// ─── Education ───

section-title("Education")

#entry(
  "B.Sc. Computer Science",
  subtitle: "University",
  date: "2014 – 2018",
)
