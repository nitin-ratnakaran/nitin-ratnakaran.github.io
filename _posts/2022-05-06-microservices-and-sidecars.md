---
title:  "Microservices and sidecars : a dream team"
date:   2022-05-06 00:00:00 +0530
categories: 
  - microservices 
tags: 
  - microservices
  - sidecar
  - service mesh
  - envoy proxy
excerpt: "A story of how a sidecar teamed up with a microservice, and together became super awesome"
header:
  overlay_image: /images/code-unsplash.jpg
  overlay_filter: 0.7
  caption: "Photo by [Pankaj Patel](https://unsplash.com/@pankajpatel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/programming?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)"
toc: true
toc_sticky: true
---

*This is a work of fiction. Names, responsibilities and characteristics of the characters and microservices portrayed here are a result of the authors poor imagination. Any resemblance to actual characters or microservices is entirely coincidental and not the authors fault.*
{: .notice--info}

## Preface
Once upon a time, there lived a microservice `GreeterService`. He led a simple, self-sufficient and content life and was very good at his job. His job was to respond with a simple greeting. 

![]({{ site.url }}{{ site.baseurl }}/assets/images/sidecar/panel-01.svg){: .align-center}
![]({{ site.url }}{{ site.baseurl }}/assets/images/sidecar/panel-01-1.svg){: .align-center}

## responsibilities
The architect, **Q**, was very pleased with `GreeterService` and decided to give him additional responsibilities. He wanted `GreeterService` to also show summary of new messages in the inbox.

![]({{ site.url }}{{ site.baseurl }}/assets/images/sidecar/panel-02.svg){: .align-center}

## A grim realization
`GreeterService` was more than happy to take on these new responsibilities, but soon realized that this was not going to be easy. He would have to communicate with `InboxService` to get the inbox details. 

But `InboxService` did not work out of the same localhost, and `GreeterService` would have *to step out of his comfortable localhost and venture out into the wild place they called,* **the network**. 

He realized he would have to step out of his core competency and comfort zone. He had so many questions and doubts ...

- He didn't know where `InboxService` operated, how would he locate him (Service Discovery).
- He wasn't sure how many instances of `InboxService` were there and which one to talk to (Load Balancing). 
- What if `InboxService` was down  and couldn't respond (Circuit Breaker) or just too busy handling other work to respond on time (Timeouts). 
- What if `InboxService` only accepted and sent encrypted messages? (TLS and Certificates)

... and many more such uncertainties.

`GreeterService` would have to handle all of these situations. His time and energy would have to be diverted from his main job towards these new capabilities. Life didn't seem simple and content anymore.

![]({{ site.url }}{{ site.baseurl }}/assets/images/sidecar/panel-03.svg){: .align-center}


## Help arrives

**Q** accepted that this was a tricky situation, but he had a suggestion for `GreeterService`. *You know, even superheroes sometimes have side-kicks to help them out. Why don't you get a side-kick (or sidecar as some like to call them) for yourself to help you out with these tasks, so that you can focus on greeting agents*. 

`GreeterService` thought that's a splendid idea and readily accepted the sidecar sent to him by **Q**. The sidecar and the microservice quickly became an efficient team as they divided the responsibilities among themselves and worked together from the same localhost. `GreeterService` handled all the business logic related to greetings, and his sidecar took care of all the complexities of communicating over the network.

![]({{ site.url }}{{ site.baseurl }}/assets/images/sidecar/panel-04.svg){: .align-center}

***Together, they were awesome!!***

## Conclusion
Microservices swear by SRP (Single Responsibility Principle). But in practice they end up taking on much more responsibilities, other than their core competency business functions, due to the distributed nature of a microservice ecosystem. As the systems and microservices get more complex, it could be a good idea to handoff some of the responsibilities to a sidecar whose core competency is handling the communications over the network. 

Sidecars don't often come alone. In a complex system with many microservices, there will be many sidecars as well. To manage them centrally, there will be a controlling service or Control Plane. This Control Plane and all the sidecars together form a **Service Mesh**. (That's a whole another story)

Some such Service Mesh that are available for hire are:

- [Envoy Proxy](https://www.envoyproxy.io/){:target="_blank"} along with [Istio](https://istio.io/){:target="_blank"} 
- [Linkerd](https://linkerd.io/){:target="_blank"} 
- [Hashicorp Consul](https://www.consul.io/){:target="_blank"} 


Well, would you hire a sidecar for your microservice? Let me know your thoughts and comments. 