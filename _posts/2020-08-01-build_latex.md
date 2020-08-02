---
layout: post
title: Automating LaTex
date: 2020-08-01 21:51
summary: A bash script for all thing LaTex
categories: Jekyll mixyll
---

GUI text processors like `Microsoft Word` or `Libra writer`, have there appeal. But the fun one gets in writing in `Latex` is beyond comparison. Markdown seems to be a good compromise between the two, as it neither have obscure syntax nor requires pre-compilation. Besides it can be customized quite heavily. \\
But writing complex mathematical equations or writing algorithms, can be tough in markdown. So, Latex seems to be the only easy option there. Packages for compiling Latex such as texlive is great, but the amount of pre-processing is quite unnecessary. Things get even murkier when bibliography/references files also comes up in the picture. I was looking for automation tools for building latex but couldn't find something as easy and light-weight as I wanted. So, I went ahead and wrote a script for doing the same. It has now morphed with much more functionality, and can do a lot more. It seems to be very close to a full-automation solution for writing latex. It can be augmented by some flags. A short summary of there functionality is as follows: 
<br>
<ul>
    <li>
        The -bs flag or --build_small flags simply acts as pdflatex. It compiles the latex file, and ignores the .bib file if it is present in the folder. This flag is recommended for building simple latex files such as some simple memo. If any error gets through, such as non-existence of any style-package, then that will be shown on the screen.
    </li>
    <br>
    <li>
        The -bl flag or --build_large flags build the latex with axillary file for bibliography. The build takes some time, and is recommended for papers with references. The file name passed with command should be the name of .tex and .aux file.
    </li>
    <br>
    <li>
        The -o or --open flag opens the built pdf in default pdf viewer.
    </li>
    <br>
    <li>
        The -f or --find flag provides a very crucial functionality. Many times when compiling latex we encounter that some .sty file is not installed. The package that contains it, can be hard to pin-point. This is where -f flag comes into play. Simply run <em>build_latex -f style_name_here</em> and the package where it is found will be shown.
    </li>
    <br>
    <li>
        The -i or --install flag installs the flag from the official ubuntu repositories.
    </li>
    <br>
    <li>
        The -h or --help flag opens a quick manual for referencing in the less editor.
    </li>
    <br>
</ul>

Some flags are under development and should be released soon. The script is tested in ubuntu-20.04 LTS on WSL2 and runs fine. If you find any bug or have a suggestion then feel free to ping me. The source code is open-source and licensed under `GNU General Public License - version 3`. The source code can be found <a href="https://github.com/kartikeytewari/build_latex"> here </a>.
