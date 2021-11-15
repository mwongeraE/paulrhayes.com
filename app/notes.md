---
tags: false
layout: collection
title: Notes
pagination:
  data: collections.notes
  reverse: true
  size: 50
permalink: "notes/{% if pagination.pageNumber > 0 %}page/{{ pagination.pageNumber + 1 }}{% endif %}/"
posts:
  title: Notes
eleventyComputed:
  eleventyNavigation:
    key: Notes
    parent: home
---
