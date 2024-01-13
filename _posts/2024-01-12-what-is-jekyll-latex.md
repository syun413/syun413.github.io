---
title: What Is jekyll-latex?
author: KUANHSUN TU
layout: post
---

<div class="abstract">
  <h2>Abstract</h2>
  <p>This project is called jekyll-latex. It allows you to write markdown posts using the Jekyll framework with the beautiful typography of LaTeX and the MathJax library so you can render gorgeous equations like this one below:</p>
  <p>$$ J(\theta) =\frac{1}{2m} [\sum^m_{i=1}(h_\theta(x^{(i)}) - y^{(i)})^2 + \lambda\sum^n_{j=1}\theta^2_j $$</p>
</div>
```
$$ J(\theta) =\frac{1}{2m}
[\sum^m_{i=1}(h_\theta(x^{(i)}) -
y^{(i)})2 + \lambda\sum^n_{j=1}\theta^2_j $$
```

# Table of Contents
* TOC
{:toc}

# Theorems, Definitions, and Proofs

<div class="theorem">
  <h3>Theorem 1. The real numbers \(\mathbb{R}\) are uncountable</h3>
</div>

<div class="proof">
  <strong>Proof:</strong> If $\mathbb{R}$ is countable, then [0, 1] is countable as well. Hence there exists a map C from $\mathbb{N}$ onto [0, 1] with $$C(n)=\sum_{i=1}^{\infty} c_{i}(n) 10^{-i}$$ where $c_{i}(n) \in\{0,1, \ldots, 9\},$ are the digits in decimal expansion. Now consider a real number $$x=\sum_{i=1}^{\infty} \bar{c}_{i} 10^{-i} \in[0,1]$$ with $\bar{c}_{i} \neq c_{i}(i)$. Obviously $C(n) \neq x$ for all $n \in \mathbb{N} .$ Hence $C$ is not onto. A contradiction.
</div>

# HTML Elements

## Text Formatting

This sentence is **bold**. This sentence is *italic*. <small>Small</small> text is for fine print. Your copy can also be <sub>subscripted</sub> and <sup>superscripted</sup>, <ins>inserted</ins>, ~~deleted~~, or <mark>highlighted</mark>. You would use a [hyperlink](https://github.com/ryanmcdermott/jekyll-latex) to go to a new page. Keyboard input elements like <kbd>Cmd + Shift</kbd> are used to display textual user input.

## Definition Lists
First Term
: This is the definition of the first term.

Triple Integral
: $\iiint_V \mu(u,v,w) \,du\,dv\,dw$

## Blockquotes

> Give me six hours to chop down a tree and I will spend the first four sharpening the axe.
<cite>— Abraham Lincoln</cite>

## Tables

| Header 1      | Header 2      | Header 3      |
| ------------- | ------------- | ------------- |
| Description 1 | Description 2 | Description 3 |
| Description 1 | Description 2 | Description 3 |
| Description 1 | Description 2 | Description 3 |

## Images

![Mountain landscape by John Towner](/assets/latex_image_example.jpeg)

## Lists

### Unordered List
- List Item 1
- List Item 2
- List Item 3

### Ordered List

1. List Item 1
2. List Item 2
3. List Item 3
