---
layout: default
title: Archive
---

### Welcome to _indspenceable.com_

More content coming soon...

<ul>
{% for post in site.posts %}
<li>
<span>{{ post.date | date: "%B %e, %Y" }} - </span> <a href="{{ post.url }}">{{ post.title }}</a>
</li>
{% endfor %}
</ul>