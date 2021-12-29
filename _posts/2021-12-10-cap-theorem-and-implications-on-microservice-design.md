---
title:  CAP Theorem and microservices
date: 2021-12-10 00:00:00 +0530
categories: 
  - microservices
  - architecture
tags: 
  - database
  - cap theorem
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

What this essentially means is that in the event of a network failure, your distributed system gets partitioned and you will have to choose between whether your system responds by providing **Consistency** or **Availability**

{% include figure image_path="/assets/images/cap-theorem-fig01.svg" alt="" caption="A partitioned system" %}

**Note** : In the above diagram, peer1 is not down. It's just not reachable from peer2. It's still up and running and potentially servicing requests reaching it.
{: .notice--info}

**See also** : [Split Brain](https://en.wikipedia.org/wiki/Split-brain_(computing)){:target="_blank"}
{: .notice--info}

## Implications for microservice design
This theorem is about choosing between data (state) being available or consistent in the event of network failure. If your microservices are stateless (as they should be!) then you dont have to worry about this. At least not at the business layer. 

If for some reason your microservices are stateful, see if you can live with having a single instance. Scale vertically if required, but avoid horizontal scaling. If you don't have peers then you don't have to worry about getting partitioned. 

Recovering from partitioned state requires some pretty heavy lifting to bring them back in sync (See some strategies at above url on Split Brain). Its best to just avoid getting into that situation. 

Now comes the part where CAP theorem becomes a more significant driver in your architectural design. Choosing your data persistence layer. In most non-trivial applications you will require multi-node databases for reasons of scalability (read replicas) and disaster recovery. 

Almost all the relational databases favour consistency over availability. This comes from their support for [ACID](https://en.wikipedia.org/wiki/ACID){:target="_blank"} (atomicity, consistency, isolation, durability) transactions. The No-SQL databases on the other hand favour availability over consistency and support **eventual** consistency, ([BASE](https://en.wikipedia.org/wiki/Eventual_consistency){:target="_blank"}). The acronym is an opposite to ACID!! (High school chemistry flashback!!)

When your application requires strong consistency of data, such as payment applications, trades, transactional systems, etc, prefer a relational database. 

When your application does not require strong consistency and can live with eventual consistency, prefer a No-Sql database.

This is not a hard and fast rule. Some NoSql databases like MongoDb does favour consistency over availability. The point is that when you are selecting a database do spend some time to understand how that database deals with the CAP theorem and whether it will suit your application requirements.

