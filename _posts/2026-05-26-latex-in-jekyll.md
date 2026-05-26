---
layout: post
title: "LaTeX in Jekyll with MathJax"
date: 2026-05-26
tags: [latex, math, jekyll]
mathjax: true
---

Jekyll + MathJax = beautiful math on the web.

This site ships with MathJax 3, so you can embed LaTeX anywhere.

### Inline example

The Pythagorean theorem: $a^2 + b^2 = c^2$.

### Display example

$$
\frac{\partial}{\partial t} \psi(\mathbf{r}, t) =
-\frac{\hbar^2}{2m} \nabla^2 \psi(\mathbf{r}, t) + V(\mathbf{r}) \psi(\mathbf{r}, t)
$$

### In your own posts

Just add `mathjax: true` to the front matter of any page or post:

```yaml
---
layout: post
title: "My post"
mathjax: true
---
```

Then write LaTeX naturally in your Markdown content.
