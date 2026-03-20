---
layout: page
permalink: /news/
title: News
comments: FALSE
---

  <h1 class="page-heading">News</h1>

  <ul class="post-list">
    {% assign news_posts = site.posts | where_exp: "post", "post.categories contains 'News'" %}
    {% for post in news_posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

        <h2>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>

News and announcements from the Stroke Innovation Lab. For more, visit [strokeinnovationlab.ca](https://www.strokeinnovationlab.ca/).
