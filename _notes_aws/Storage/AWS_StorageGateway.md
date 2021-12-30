---
title:  AWS Storage Gateway
date: 2021-11-02 00:00:00 +0530
categories: 
  - AWS
tags: 
  - Storage
  - Storage Gateway
excerpt: AWS Storage Gateway is a set of hybrid cloud services that gives you on-premises access to virtually unlimited cloud storage.
---

## Overview
AWS Storage Gateway is a set of hybrid cloud services that gives you on-premises access to virtually unlimited cloud storage.

## References
- [HomePage](https://aws.amazon.com/storagegateway)
- [FAQ](https://aws.amazon.com/storagegateway/faqs/)


## Four different types of gateways –

### Amazon S3 File Gateway,

Amazon S3 File Gateway presents a file interface that enables you to store files as objects in Amazon S3 using the industry-standard NFS and SMB file protocols, and access those files via NFS and SMB from your data center or Amazon EC2, or access those files as objects directly in Amazon S3.
![](https://d1.awsstatic.com/cloud-storage/Amazon%20S3%20File%20Gateway%20How%20It%20Works%20Diagram.96e9f7180c6ec8b6212b4d6fadc4a9ac4507b421.png)

#### Benefits

- Extends the AWS Cloud to your datacenter
- Requires no changes to existing applications
- Reduces physical infrastructure, cost and complexity

### Amazon FSx File Gateway,

Amazon FSx File Gateway provides fast, low-latency on-premises access to fully managed, highly reliable, and scalable file shares in the cloud using the industry-standard SMB protocol.
![](https://d1.awsstatic.com/cloud-storage/Amazon%20FSx%20File%20Gateway%20How%20It%20Works%20Diagram.edbf58e4917d47d04e5a5c22132d44bd92733bf5.png)

### Tape Gateway

Tape Gateway presents a virtual tape library (VTL) consisting of virtual tape drives and a virtual media changer to your backup application using storage industry standard iSCSI protocol.
![](https://d1.awsstatic.com/cloud-storage/tape-gateway-diagram.4b6ca2b4e3f97d4df7988544400ae91424503248.png)

#### Benefits

- Replaces physical tape libraries
- Lowers total cost of ownership
- Simplifies management
- Provides security and compliance

### Volume Gateway

Volume Gateway presents your applications block storage volumes using the iSCSI protocol.
Data written to these volumes can be asynchronously backed up as point-in-time snapshots of your volumes, and stored in the cloud as Amazon EBS snapshots.

![](https://d1.awsstatic.com/cloud-storage/volume-gateway-diagram.eedd58ab3fb8a5dcae088622b5c1595dac21a04b.png)

#### Benefits

- Integrates seamlessly with on-premises applications
- Provides low-latency access to cloud backed storage
- Offers flexible data protection and recovery

## How it works

![How it Works](https://d1.awsstatic.com/cloud-storage/product-page-diagram_AWS-Storage-Gateway_HIW%402x.6df96d96cdbaa61ed3ce935262431aabcfb9e52d.png)

## Key Features

- Standard storage protocols
- Fully managed cache
- Optimised and Secure data transfer
- High availability on VM Ware

## AWS Geek

![](https://www.awsgeek.com/AWS-Storage-Gateway/AWS-Storage-Gateway.jpg)

