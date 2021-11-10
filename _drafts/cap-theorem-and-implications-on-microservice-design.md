---
title:  CAP Theorem and microservices
date: 2021-11-10 00:00:00 +0530
categories: 
  - microservices
tags: 
  - design
excerpt: What is CAP theorem and what are its implications when designing microservices
header:
  overlay_image: /assets/images/circuit-manueljota-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Manuel](https://unsplash.com/@manueljota?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/electronic?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
---

## So what is CAP Theorem
The [CAP theorem](https://en.wikipedia.org/wiki/CAP_theorem){:target="_blank"} was first proposed by Eric Brewer in 1998 and later proved by Seth Gilbert and Nancy Lynch in 2002. 

The theorem states states that any distributed data store can only provide two of the following three guarantees
- **Consistency**: Every read receives the most recent write or an error.
- **Availability**: Every request receives a (non-error) response, without the guarantee that it contains the most recent write.
- **Partition tolerance**: The system continues to operate despite an arbitrary number of messages being dropped (or delayed) by the network between nodes.
{: .notice--info}

What this essentially means is that in the event of a network failure, your distributed system gets partitioned. When that happens you will have to choose between whether your system provides **Consistency** or **Availability**

{% include figure image_path="/assets/images/cap-theorem-fig01.svg" alt="" caption="A partitioned system" %}

**See also** : [Split Brain](https://en.wikipedia.org/wiki/Split-brain_(computing)){:target="_blank"}
{: .notice--info}

## Implications for microservice design
This theorem is about choosing between data (state) being available or consistent in the event of partitions. If your microservices are stateless (as they should be!) then you dont have to worry about this. At least not at the business layer. 

If for some reason your microservices are stateful, see if you can live with having a single instance. Scale vertically if required, but avoid horizontal scaling. If you don't have peers then you don't have to worry about getting partitioned. 

Recovering from this condition requires some heavy lifting (See above link on Split Brain) and is best avoided. 

Now comes the real meat. Choosing your data persistence layer. 