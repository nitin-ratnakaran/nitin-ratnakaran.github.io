---
title:  AWS IAM
date: 2021-12-02 00:00:00 +0530
categories: 
  - AWS
tags: 
  - Security
  - IAM
excerpt: AWS Identity and Access Management (IAM) enables you to manage access to AWS services and resources securely.
---


## Overview
AWS Identity and Access Management (IAM) enables you to manage access to AWS services and resources securely. Using IAM, you can create and manage AWS users and groups, and use permissions to allow and deny their access to AWS resources.
IAM is a feature of your AWS account offered at no additional charge. You will be charged only for use of other AWS services by your users.

## References
- [Home Page](https://aws.amazon.com/iam/)
- [FAQs](https://aws.amazon.com/iam/faqs)

## Use Cases
- Fine-grained access control to AWS resources
- Multi-factor authentication for highly privileged users
- Analyze access
- Integrate with your corporate directory

## How it works
- Manage IAM users and their access 
- Manage IAM roles and their permissions 
- Use service-linked roles to delegate permissions to AWS services that create and manage AWS resources on your behalf.
- Manage federated users and their permissions 

## Best Practices
- **Users** – Create individual users.
- **Groups** – Manage permissions with groups.
- **Permissions** – Grant least privilege.
- **Auditing** – Turn on AWS CloudTrail.
- **Password** – Configure a strong password policy.
- **MFA** – Enable MFA for privileged users.
- **Roles** – Use IAM roles for Amazon EC2 instances.
- **Sharing** – Use IAM roles to share access.
- **Rotate** – Rotate security credentials regularly.
- **Conditions** – Restrict privileged access further with conditions.
- **Root** – Reduce or remove use of root.

## Features
- Enhanced security
- Granular control
- Temporary credentials
- Analyze access
- Flexible security credential management
- Leverage external identity systems
- Seamlessly integrated into AWS services
- Intended usage & restrictions

