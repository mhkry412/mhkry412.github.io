---
layout: page
title: LaTeX Example
permalink: /latex-example/
mathjax: true
---

Here is an example of LaTeX rendering with MathJax.

### Inline math

The quadratic formula is $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$.

### Display math

$$
\int_{a}^{b} f(x) \, dx = F(b) - F(a)
$$

$$
\sum_{k=1}^{n} k = \frac{n(n+1)}{2}
$$

### Matrices

$$
A = \begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{pmatrix}
$$

### Proof example

**Theorem:** The sum of the angles of a triangle is $\pi$ radians.

**Proof:**

Let $\triangle ABC$ be a triangle. Draw a line through $A$ parallel to $BC$.

$$
\angle BAC + \angle ABC + \angle ACB = \pi
$$

$\blacksquare$

---

_To enable MathJax on any page, add `mathjax: true` to the front matter._
