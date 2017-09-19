---
layout: page
permalink: /posts/
title: Posts
comments: FALSE
---

  <h1 class="page-heading">Posts</h1>

  <ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

        <h2>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>

Links, topics, and posts discussed on this site are by no means the end-all or definitive write-up of a topic and do not reflect anything other than personal opinion and perspective of a critical care physician/neuroscientist. If you are interest in contributing to neuroccm.org as a contributing author for future blog posts, then please contact me: houman[at]ccmd[dot]io

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
