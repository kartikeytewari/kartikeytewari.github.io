---
layout: post
title: LaTex Build
date: 2020-07-31 21:51
summary: A bash script for building LaTex
categories: jekyll mixyll
---

GUI text processors like microsoft word or Libra writer, have there appeal. But the fun one gets in writing in Latex is beyond comparison. Markdown seems to be a good compromise between the two, as it neither have obscure syntax nor requires pre-compilation. Besides it can be customized quite heavily. \\
But writing complex mathematical equations or writing algorithms, can be tough in markdown. So, Latex seems to be the only easy option there. Packages for compiling Latex such as texlive is great, but the ammout of pre-processing is kind-of unnecessary. Things get even murkier when bibliography/refrences files also comes up in the picture. I was looking for automation tools for building latex but could'nt found something as easy and light-weight as I wanted. So, I went ahead and wrote a script for doing the same for me. It takes a couple of flags, and is quite easy. \\
<img src="/blog/assets/images/build_latex_help.png" width="80%;" text-align="center;"/> 

<ul>
    <li>
        The -bs flag or --build_small flags simply acts as pdflatex. It compiles the latex file, and ignores the .bib file if it is present in the folder. This flag is recommended for building simple latex files such as your resume or some simple memo. If any error gets throughn, such as non-existence of any style-package, then that will be shown on the screen.
    </li>
    <li>
        The -bl flag or --build_large flags build the latex with auxillary file.
    </li>
</ul>

P.S: The post should be update soon!