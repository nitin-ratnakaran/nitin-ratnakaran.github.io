---
title:  "Master Reference on Mature Microservices"
date:   2022-01-29 00:00:00 +0530
categories: 
  - microservices 
tags: 
  - microservices
  - maturity model
excerpt: "A roadmap to excelling at microservices"
header:
  overlay_image: /images/code-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Pankaj Patel](https://unsplash.com/@pankajpatel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/programming?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
toc: true
toc_sticky: true
---

Microservices have become the defacto architecture for most enterprise software and everybody is trying to build microservices. Many start with creating spring boot apps and think they are doing microservices. And initially everything is going great. But as the number of microservices grow they become hard to maintain and support in production. We have all been there. 


{% include figure image_path="/assets/images/not-easy.jpeg" alt="" caption="" %}{: .align-center .width-half}

I felt a need to follow a structured approach to build a mature microservices ecosystem. A Google search for [Microservices Maturity Model](https://www.google.com/search?q=microservices+maturity+model){:target="_blank"} threw up many good references to get started. 

Here I am sharing just one of them which I could relate to and add some thoughts around how I could use this model to build more mature microservices.

## Microservices Maturiy Matrix / Model
[Microservices Maturity Matrix by Container Solutions](https://blog.container-solutions.com/how-mature-is-your-microservices-architecture)
{: .notice--info}

This Microservices Maturity Model gives us a suitable framework to evaluate where we are in our journey and guides us forward.

{% include figure image_path="/assets/images/MicroServicesMaturityModel-Model.png" alt="" caption="" %}

* This model shows how various aspects of the application can evolve moving left to right.
* As we move more to the right, we can realize the promised benefits of microservice architecture. 
* However, complexity also increases as we move to the right. 
* The team needs to be higly capable to manage this higher complexity. But the most capable team can only do so much. The complexity needs to be managed by automated processes. 
* An application may not evolve uniformly along each of the aspects. It may evolve more in some and less in others. However a more uniform evolution helps to better realize the benefits of microservices and also to better manage the complexities. 

We could track our current status by superimposing our progress against each aspect, something like so.

{% include figure image_path="/assets/images/MicroServicesMaturityModel-Status.png" alt="" caption="" %}

Lets look at some suggestions on what we could do at each stage of our journey. 
(The example mentioned below are for Java microservices built using Spring Boot. If you are partial to other languages or frameworks, I hope you would be able to follow along)

Lets see how each of the aspects evolve as we move to the right. 


## Functionality Coupling

### Single Monolith application
Most enterprise applications are at this stage before they start their microservice journey. Its one big application that contains all the functions. 
- [Pattern: Monolithic Architecture][1]{:target="_blank"}

### Tightly Coupled Services

### Independent Services

### Functions



## Configuration Management
### Static Config Files
All configuration is saved in application.properties files. We may even have multiple copies of the application.properties file for each of our environments. I have even seen examples of an application that maintained a copy of the properties file for each server within a single environment. Thats a lot of static files to maintain if we have many environments.
- [Spring Boot Properties and Configuration][2]{:target="_blank"}

### Mutable vs Immutable Infrastructure

### Config as Code / Infra as Code 

### GitOps


## Testing
### Regression
Before every release, the whole application needs to be tested to ensure all the functionality is still working. This testing is usually manual with some automated tests. 

### Automated Pre-Production Testing


### Automated Production Testing


### Chaos Engineering


## Delivery
### Regular Releases
Monoliths usually have regular but infrequent releases, ranging from once a year to once in a quarter. Increase in frequency more than this is usually limited by the need to run many regression tests before each release.

### Continuous Integration

### Continuous Delivery

### Progressive Delivery


## Observability
### Structured Logs
Spring Boot offers semi-structured logs out of the box, with a fixed width layout. The layout is still text based and suitable for human eyes. The logs, however, are not queryable and easily searchable.

### Performance / Application Metrics

### Integrated Metrics

### Request Tracing


## Scalability
### Full Replica
The only way the monolith can be scaled out is by having a full replica instance of the monolith running on the same or another server. This is waste of computing resources, if it was only one or few functions within the monolith that needed the additional scale. 

### Manual Per Service

### Reactive Auto-Scaling

### Predictie Auto-Scaling


## Orchestration
### Virtual Machines
The infrastructure has progressed from using bare metal servers to virtual machines. This allows faster requisition than bare metal servers, but are still like pets. They stick around for long time and need a lot of individual care and attention in the form of OS patches.

### Hybrid

### Containers (Kubernetes)

### Kubernetes Platform as a Service

---
[1]: https://microservices.io/patterns/monolithic.html
[2]: https://docs.spring.io/spring-boot/docs/current/reference/html/howto.html#howto.properties-and-configuration
