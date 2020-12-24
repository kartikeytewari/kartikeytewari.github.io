---
layout: post
title: Fingerprint based authentication
date: 2020-12-24 18:34
summary: The present auth system is broken. How do we fix it?
categories: Jekyll mixyll
---

Passwords have long been the de facto method for authenticating services on the web from as long as we can remember. People keep handy small passwords, that they can remember. But passwords, are inherently unsafe. Let's say you have an 8 digit long alphanumeric password with small alphabets, for your web services.  

Each place can either have 26 distinct alphabets or 10 numbers making the alphabet size of 36. So, the total possible passwords of 8 digits would be pow(36,8). That would be around 2.82e12 possible passwords. A possible brute force method with a generic system that "guesses" 1e8 passwords per second would take a little over 7.5 hours to break into. Most people won't have a longer or more complex password than that because they tend to forget it. Add to such attacks a sophisticated dictionary attack and a generic password would not hold a minute against such password generators. This is what makes traditional passwords systems insecure.

A possible method to mitigate this problem would be to use fingerprints and other biometrics for uniquely determining user identity. This approach also has two major flaws. They are:

- Storing raw images of fingerprint in a database is simply a stupid idea. Even if the database is encrypted by a good encryption method, it is still too big of a risk. It can potentially be stolen, by malicious agents and can be used in worst of ways. To mitigate this problem we will require a function that maps the fingerprints to there unique values in a one-to-one map. It should also be a cryptographic function. So that it is easy to generate the key value of a fingerprint from the image in a fairly efficient manner, while regenerating the image from the key pair an impractical feat from the standpoint of computation time required to "guess" the image.

- The next problem that fingerprint authentication should manage would be to search fingerprints among a large database in an efficient manner. Standard, approaches that I have discovered are not efficient for this task. Brute Force approach takes O(n) time complexity making it unscalable. A better approach than that would be to use, Binary Trees (search time of (logn)) or Hash Map (search time of O(1)). But both of the above DS has a large constant of time complexity and they do not scale precisely because of this reason above certain thresholds.

Keeping in mind the above failures of password methods, and the caveats of fingerprint-based methods I propose an entirely different approach, that solves all the problems. We can use a cryptographic templating function that gets the scanned image of fingerprint as an input and gives the output as a single key-value that maps the fingerprint to it. There are ridges and minutiae in the fingerprint, and there unique position within the fingerprint boundary can certainly be leveraged for making this function. Since, the number of minutiae and ridges in generally well below 200, a cryptographic templating function with O(pow(n,3)) Time complexity, where n is the number of ridges in a fingerprint would suffice. 

Searching the data size for a huge dataset of fingerprints would still be an issue. This can be mitigated by using Wavelet Tree as the means to search fingerprints. Creation of the database takes time complexity of O(nlogn). Searching would require just O(logn) time, and the constant of complexity does not increase considerably with the size of the database, making it more efficient than binary trees or hash maps. This makes the process of construction and searching of the database for the key-value of a fingerprint very fast. I have been working on the project for some time, and plan to open-source it soon, and hope that some even cooler projects start from that.
