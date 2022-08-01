---
title:  "A guide to developing mature Microservices"
date:   2022-08-01 00:00:00 +0530
categories: 
  - microservices 
tags: 
  - microservices
  - maturity model
excerpt: "A structured guide to build a mature microservices ecosystem"
header:
  overlay_image: /images/code-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Pankaj Patel](https://unsplash.com/@pankajpatel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/programming?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
toc: true
toc_sticky: true
---

Microservices have become the defacto architecture for most enterprise software and everybody is trying to either convert their monolith applications to microservices or start with greenfield microservices. Many start with creating spring boot apps and think they are doing microservices. And initially everything is going great. But as the number of microservices grow they become hard to maintain and support in production. We have all been there. 


{% include figure image_path="/assets/images/not-easy.jpeg" alt="" caption="" %}{: .align-center .width-half}

A structured approach is what we need to guide us on the journey to build a mature microservices ecosystem. A Google search for [Microservices Maturity Model](https://www.google.com/search?q=microservices+maturity+model){:target="_blank"} threw up many good references to get started. 

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
Most enterprise applications are at this stage before they start their microservice journey. It's one big application that contains all the functions. 
- [Pattern: Monolithic Architecture][1]{:target="_blank"}

### Tightly Coupled Services
Applications that start migrating towards microservices, if not done correctly, can end up in this state. And there is a good reason for that. Most monolith applications are internally modularized as layers using **Layered Architecture** or [**N-Tiered Architecture**][3], and thats a good thing. Applications mave have a presentation layer, an API layer, a services layer, a batch-processing layer etc. For folks getting started with microservices, these layer boundaries can seem like very obvious candidates for microservice boundaries. But beware, *down that path lies madness*. The monolith when broken up along these *horizontal* boundaries can end up becoming a [**Distributed Monolith**][4]. The typical symptoms of this condition are : 
- Tightly coupled services which together make up a single function.
- Services which are too chatty with each other
- Services which share same database tables for read and write.


### Independent Services
So if layer boundaries are not the right way to slice a monolith, what is?

Enter Domain Driven Design or DDD. DDD popularized the concepts of bounded concepts. DDD helps us identity what are the important pieces of the monolith and how they relate to each other. It helps us draw boundaries in such a way that the pieces stay cohesive, yet loosely coupled. These individual pieces or domains then become good candidates to become independent services, if they need to. 
A good place to start getting familiar with Domain Driven Design is ofcourse the book that started it all: [*Domain-Driven Design: Tackling Complexity in the Heart of Software* by Eric Evans][5]. Here are some other online references:
- [Martin Fowler's articles on DDD][6]
- [DZone Refcard on DDD][7]
- [Microsoft Architecture eBook- Section on DDD and CQRS][8]
- [DDD Examples][9]


### Functions
Once we have converted our application into a nice set of independent services using DDD, it's time to evaluate whether they can be upgraded to Functions as a Service (FaaS), aka, serverless compute.

If some of your services are not required to be "always on", have highly varying load, or have extreme scaling requirements then it may be worth the effort to migrate those services to a serverless platform. All the major cloud platforms provide the ability to just submit your code and the cloud platform takes the responsibility of managing the runtime availability and scalability as per incoming load. Using these cloud platforms also means you lose some portability. 

|Cloud Platform    | FaaS Offering |
|---------------   |---------------|
|AWS               |[AWS Lambda][10]{:target="_blank"} |
|Google Cloud      |[Cloud Functions][11]{:target="_blank"}|
|Microsoft Azure   |[Azure Functions][12]{:target="_blank"}|
|Alibaba Cloud     |[Function Compute][13]{:target="_blank"}|
|Kubernetes        |[Knative][14]{:target="_blank"}, [OpenFaas][15]{:target="_blank"}|


## Configuration Management
### Static Config Files
All configuration is saved in application.properties files. We may even have multiple copies of the application.properties file for each of our environments. I have even seen examples of an application that maintained a copy of the properties file for each server within a single environment. That's a lot of static files to maintain if we have many environments.
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
[3]: https://en.wikipedia.org/wiki/Multitier_architecture
[4]: https://www.google.com/search?q=distributed+monolith
[5]: https://www.amazon.in/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215
[6]: https://martinfowler.com/tags/domain%20driven%20design.html
[7]: https://dzone.com/refcardz/getting-started-domain-driven
[8]: https://docs.microsoft.com/en-us/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/
[9]: https://github.com/ddd-by-examples
[10]: https://aws.amazon.com/lambda/
[11]: https://cloud.google.com/functions
[12]: https://azure.microsoft.com/en-in/services/functions/
[13]: https://www.alibabacloud.com/product/function-compute
[14]: https://www.cncf.io/projects/knative/
[15]: https://www.openfaas.com/