---
layout: default
title: Blog
---
<ul>
{% for post in site.posts %}
<li>
<span>{{ post.date | date: "%B %e, %Y" }} - </span> <a href="{{ post.url }}">{{ post.title }}</a>
</li>
{% endfor %}
</ul>