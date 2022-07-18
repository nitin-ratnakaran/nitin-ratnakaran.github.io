---
title:  "Microservices Vs Monolith : A layman's analogy"
date:   2022-06-06 00:00:00 +0530
categories: 
  - microservices 
tags: 
  - microservices
excerpt: "How to explain difference between microservices and monoliths to a non-technical person"
header:
  overlay_image: /images/code-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Pankaj Patel](https://unsplash.com/@pankajpatel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/programming?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
toc: true
toc_sticky: true
---

Recently I had to explain difference between microservices and monolith to someone who is not very technical. I needed some real world analogy that could illustrate and simplify the differences. Here is something I came up with.

Let's say we have a job to lift up and move something very heavy, say a shipping container, and then place it down at a designated spot.

## The monolith way

One way to do the job would be to use a crane. 

{% include figure image_path="assets/images/crane-lifting-container.png" alt="" caption="" %}{: .align-center .width-half}

This is equivalent to a monolith.
- A crane is a very heavy and complex piece of machinery
- Building a new crane or even maintaining and upgrading an existing crane could be a whole project in itself.
- It has limited range of movement, usually in meters
- difficult to scale up. If lift weight exceeds capacity, you need to get a bigger crane, which is not trivial.

But...
- It does the job very easily
- A single person can operate it

## The microservices way

A second way to do the job, would be to use multiple drones, maybe even tens or hundreds of drones, to lift up the shipping container

{% include figure image_path="assets/images/drone-lifting-container.png" alt="" caption="" %}{: .align-center .width-half}

This is equivalent to microservices

- Each drone by itself is a simple machine, easy to manufacture, maintain, upgrade or even replace
- Carrying capacity of a single drone maybe less, but together they can carry very heavy loads. If more carrying capacity is needed, adding more drones is relatively trivial
- The movements can include complex maneuvers around objects or even long ranges maybe even in kilometers

But...
- Operating this fleet of drones is not possible manually, even with a dedicated person per drone. It would require specialized software and the movement path has to be coded beforehand or use AI based auto pilot system


So which method is better? As always, the answer is it depends.

Neither is better than the other one in doing the job. It all depends on the requirements and circumstances.