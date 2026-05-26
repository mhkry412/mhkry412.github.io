# portfolio

A minimal portfolio website built with **Jekyll**, **Markdown**, **LaTeX** (MathJax), and **Typst** — following the [Dead Simple Sites](https://deadsimplesites.com/) philosophy.

**Less, but better.**

---

## Features

- **Jekyll static site** — structured layouts, includes, data files, collections
- **Markdown content** — all pages, posts, and projects in plain `.md`
- **LaTeX / MathJax** — add `mathjax: true` to any page for beautiful math
- **Typst resume** — compile `assets/resume/resume.typ` to PDF
- **DSS design** — monochrome palette, content-first, no bloat
- **GitHub Pages ready** — zero-config deployment
- **Responsive** — works on all screen sizes

## Quick start

### Prerequisites

- [Ruby](https://www.ruby-lang.org/) + [Bundler](https://bundler.io/)
- [Typst](https://typst.app/) (optional, for resume PDF)

### Local development

```bash
# Install dependencies
bundle install

# Start dev server
bundle exec jekyll serve

# Open http://localhost:4000
```

### Deploy to GitHub Pages

1. Push this repo to GitHub.
2. Go to **Settings → Pages**.
3. Under "Source", select "GitHub Actions" or "Deploy from a branch".
4. If using branch deploy: set branch to `main`, folder to `/ (root)`.
5. Your site will be live at `https://<username>.github.io/portfolio/`.

For the `username.github.io` repo (user site), set `baseurl: ""` in `_config.yml`.

## How to update content

### Edit homepage text

Change `site.description` and `site.tagline` in `_config.yml`.

### Add experience

Edit `_data/experience.yml`:

```yaml
- role: Senior Engineer
  company: New Company
  dates: "2024 – Present"
  description: >
    What you did there.
  highlights:
    - Achievement 1
    - Achievement 2
```

### Add a project

Create a new file in `_projects/`:

```markdown
---
title: My Project
description: Short description
tags: [React, Node.js]
---

Longer description in Markdown...
```

### Write a blog post

Create a new file in `_posts/`:

```markdown
---
layout: post
title: "My Post"
date: 2026-05-26
tags: [tech, thoughts]
---

Your content here...
```

### Add LaTeX math

Add `mathjax: true` to any page or post front matter:

```markdown
---
mathjax: true
---

The quadratic formula: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$
```

## Compile Typst resume

```bash
cd assets/resume
typst compile resume.typ resume.pdf
```

The compiled PDF can be linked from the site.

## Project structure

```
portfolio/
  _config.yml          # Jekyll configuration
  Gemfile              # Ruby dependencies
  index.md             # Homepage (Markdown, uses home layout)
  404.md               # 404 page
  _layouts/            # HTML templates (default, home, page, post)
  _includes/           # Reusable HTML partials
  _data/               # YAML data files (experience, skills, social, interests)
  _projects/           # Project collection (Markdown)
  _posts/              # Blog posts (Markdown)
  pages/               # Additional pages (about, contact, latex-example, projects)
  assets/
    css/main.scss      # Stylesheet (Sass)
    resume/resume.typ  # Typst resume source
  README.md
```

## Customization

### Colors and fonts

Edit the `:root` CSS variables in `assets/css/main.scss`:

```css
:root {
  --black: #000;
  --gray-100: #f5f5f5;
  --gray-900: #1a1a1a;
  --font: 'SF Mono', 'JetBrains Mono', monospace;
  --font-body: system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
  --max-w: 720px;
}
```

### Theme settings

Edit `_config.yml` under `theme:`.

## License

MIT
