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

These posts are a work in progress. Will be trying to post more regularly, post more often! Links, topics, and posts discussed on this site are for educational purposes only. There is no duty of care and none of the content is meant to be used for or instead of expert clinical advice. Also these reflect personal opinion and perspective of a stroke/critical care physician/neuroscientist and not of my place of employment or academic affiliation.

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
