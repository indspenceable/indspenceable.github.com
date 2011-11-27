---
layout: default
title: Index
---

### Welcome

It looks like I, **Danny Spencer**, am starting a blog. It's basically going to be the best thing ever. Don't you agree? I think it is going to be fantastic.

<ul>
{% for post in site.posts %}
<li>
<span>{{ post.date | date: "%B %e, %Y" }}</span> <a href="{{ post.url }}">{{ post.title }}</a>
</li>
{% endfor %}
</ul>