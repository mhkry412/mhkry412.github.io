---
layout: page
title: Projects
permalink: /projects/
---

{% for project in site.projects %}
### [{{ project.title }}]({{ project.url | relative_url }})

{{ project.description }}

{% if project.tags.size > 0 %}{% for tag in project.tags %}`{{ tag }}` {% endfor %}{% endif %}

{% endfor %}
