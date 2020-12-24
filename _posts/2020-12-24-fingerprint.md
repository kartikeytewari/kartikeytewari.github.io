---
layout: post
title: Fingerprint based authentication
date: 2020-12-22 1:18
summary: The present auth system is broken. How do we fix it?
categories: Jekyll mixyll
---

Passwords have been the defacto method for authenticating services on web from as long as we can remember. People keep handy small passwords, that they can remember. But passwords, are inherently unsafe. Let's say you have a 8 digit long alpha-numeric password with small alphabets, for your web services.  

Each place can either have 26 distinct alphabets or 10 numberical numbers making the alphabet size of 36. So, total possible passwords of 8 digits would be pow(36,8). That would be around 2.82e12 possible combinations of passwords. A possible brute force method with a generic system that "gusses" 1e8 passwords per second would take a little over 7.5 hours to break into. Most people won't have a longer or more complex password than that because they will tend to forget it. Add to such attacks a sofesticated dictionary attack and a generic password would not hold a minute against such password generators. This is what makes traditional passwords systems insecure. 

A possible method to mitigate this problem, would be to use fingerprints and other biometrics for uniquely determining user identity. This approach also, have two major flaws. They are:

- Storing raw images of fingerprint in a database is simply a stupid idea. Even if the database is encrypted by a good encryption method, it is still to big of a risk. It can potentially be stolen, by malicious agents and is used in worst of ways. To mitigate this problem we will require a function that maps the fingerprints to there unique values in a one-to-one map, and like a cryptographic function should only be one way. So that it is easy to generate the key value of a fingerprint from the image in a fairly efficient manner, while regenerating the fingerprint image from the key pair an impractical feat from the standpoint of computation time required to "guess" the image.

- The next problem that fingerprint authentication should manage would be to search fingerprints among a large database in an efficient manner. Standard, approaches that I have discovered are not efficient for this task. Brute Force approach takes O(n) time complexity making it unscalable. A better approach than that would be to use, Binary Trees (TC of (logn)) or Hash Map (TC of O(1)). But both of the above DS have a large constant of TC and they do not scale precisely because of this reason above certain thresholds.

Keeping in mind the above failures of password methods, and the caveats of fingerprint based methods I propose an entirely diffrent approach, that solves all the problems. We can use a cryptographic templating function that gets the scanned image of fingerprint as an input and gives the output as a single key value that maps the fingerprint to it. There are ridges and minutaes in the fingerprint, and there unique position within the fingerprint boundry can certainly be levraged for making this function. Since, the number of minutaes and ridges in generally well below 200, a cryptographic templating function with O(pow(n,3)) Time complexity, where n is number of ridges in a fingerprint would suffice. 

Searching the data size for a huge dataset of fingerprints would still be an issue. This can be mitigated by using Wavellet Tree as the means to search fingerprints. Creation of the database, taken time complexity of O(nlogn). Searching would require just O(logn) time, and the constant of complexity does not increase considerably with the size of database, making it more efficient that binary trees or hash maps. This makes the process of construction and searching of database for the keyvalue of a fingerprint very fast. I have been working on the project for some time, and plan to open-source it soon. It would br really cool to live in a fingerprint free worlds soon.