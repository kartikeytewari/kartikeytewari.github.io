---
layout: post
title: Color Ninja Game
date: 2020-07-10 16:53
summary: A Game with cool UI/UX
categories: Jekyll mixyll
---

I recently made a game called as Color ninja. The idea behind it is very simple. I generate three values of red, green and blue pigment and ask the user what will be the resulting color when I mix them. The user have to choose between 6 different shades, and the faster you get the answer the better the score.

Every color is made up of red, green and blue pigments. So if I uniquely determine values of the intensity with which red, green and blue pigments are mixed then I can uniquely determine the resulting color. There is a clear one-to-one relation between the two. So, I randomly generate three percentage values and assign it to red, green and blue colors. Then I super postulate that value to a scale of 0 to 255 (since browsers have a different scale) and make the color using the determined hex value. This color would be the correct answer to the game. Then I place it randomly within the six colors. The other colors are different shades of the correct answer. In easy version the shades will be quite different, so some simple analytical idea will lead you to the answer. But as the level get harder, the difference between the shades of the color is reduced. This makes the choice, a little difficult.

I was surprised to find that people performed poorly initially, even on easy levels. But as they played for a little longer, the average score improved dramatically. This probably has to do with how the human mind conditions, itself. I also enjoyed in making the game, and learn't, some cool technologies along the way. The tech stack for the website is quite basic, as it is only front-end based. I have used `HTML5`, and `CSS3` for the most part. The framework for CSS that I used was `Bootstrap3`. Bootstrap syntax is definitely cryptic, but you tend to get a hang of it soon. For the color pigment engine, I wrote it on front-end, using `Vanilla Javascript`, since other than calling some couple of random functions, there was not much to do.

The website is open-sourced under the MIT License, and the source code can be found <a href="https://github.com/kartikeytewari/Color-Ninja"> here </a>. The website is live on this <a href="https://kartikeytewari.github.io/Color-Ninja/"> link </a>.
