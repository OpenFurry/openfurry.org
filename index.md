---
layout: default
title: Home
---

OpenFurry is a community resource for open-source furry and furry-adjacent software and devs.  The project offers hosting and development tools for anyone interested in working on open source software within, for, or tangential to the furry community.  Not all works may be totally furry, nor deployed to furry-specific means, but, as creativity is at the heart of the subculture, so to is it with OpenFurry!

<div class="post-list">
    <h2>Recent updates</h2>
    {% for post in site.posts limit:5 %}
        <div class="post-list-item">
            <h3><a href="{{ post.url }}">{{ post.title }}</a> <small>Posted on {{ post.date|date_to_string }} by <a href="/contributors#{{ post.author }}">{{ post.author }}</a></small></h3>
            <div class="post-excerpt">
                {{ post.excerpt }}
            </div>
        </div>
    {% endfor %}
</div>
