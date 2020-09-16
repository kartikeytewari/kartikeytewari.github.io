---
layout: post
title: Docker Containers
date: 2020-09-10 08:53
summary: Some Infrastructure done right!
categories: Jekyll mixyll
---

Infrastructure have always posed a challenge to developers historically. Maintaining systems, updating them with security patches, keeping stuff compatible is always a tedious work. Hell, even updating node_modules is a pain, if the software uses some decent amount of them. One way to slim the pain, is to use `Virtual Machines`. So, now while performing horizontal scaling, you do not need to focus on the inherent specs of all the server grade machines that you have. You can "emulate" them to act as some other machine altogether, and get the job done right. 

This layer of abstraction with the bare metal, gives extra flexibility in writing code. But VMs have some glaring issues. So, for example if I have a VM with a mysql server then it has a Linux kernel and some software for mysql-server. If I have another VM for managing Redis, then I need a machine with a <em>separate</em> Linux Kernel and some software layer for Redis-server. This issue of having `as many instances of Kernel as there are VMs`, posses some basic issues. Maintaining and updating the kernel, becomes a tedious process, while taking large amount of memory for <em>mostly</em> redundant data.

This is where docker comes into picture. Now `docker allows for a single kernel shared between multiple containers`, which themselves can be thought to be analogous to VMs. All the containers have a single shared kernel which thinks that the different containers are just a bunch of processes spun up on it. The `containers think that they are independent machines` with a `separate metal and kernel`. This makes things far easier for Dev ops, and general management. The memory needed for spinning systems gets slimmed down, and most security issues gets through out of the window. But docker does not just stops here. This is just a part of solution that docker brings to the table.

The other part is where it becomes <em>ground-breaking</em>. Now docker, have some containers up in there cloud with some Pre-built images of popular software. So for example for having a server with NodeJS capabilities, you will need to install an alpine Linux Distribution and NodeJS on top of it with NPM and yarn. Not anymore. Docker have a `Pre-built image` of it in the cloud just run the command to install it: `docker pull node`. This makes things so much better! Setting up a server with docker is so easy! You want five servers with mysql, Redis and a couple of other web technologies? You are just 5 commands away.

The containers are also managed by docker itself, so no need for thinking about them a lot. This level of abstraction is unprecedented in the industry. What `Git is to software management, docker is to infrastructure management`. Customizing your servers is also quite easy. You just need to write config files for docker to manage.

I think that this general trend in CS is great, and would make softwares better. Working on technologies, that have been there for decades, with stagnated ideas, and making them easier is a formidable challenge. Solutions such as docker do not come to those who dwell on status-quo ante but to those who challenge them, rediscover them and in time provide solutions that are far better then the industry-vexillum.