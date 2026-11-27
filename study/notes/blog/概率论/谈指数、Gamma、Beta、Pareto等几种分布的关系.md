# 从一到Yau赛题目谈指数、Gamma、Beta、Pareto等几种分布的关系


本文将讨论2012年Yau赛的第六题

## 题目描述

$
\begin{aligned}
&令E_{1},\cdots ,E_{n}是独立同分布的随机变量\\
&E_{i}\sim \operatorname{Exp}(1)\\
&\\
&U_{1},\cdots ,U_{n}是独立同分布的随机变量\\
&U_{i}\sim \operatorname{Uniform}(0,1)\\
&且E_{1},\cdots ,E_{n}与U_{1},\cdots ,U_{n}相互独立\\
&(1)求X=\frac{E_{1}+\cdots +E_{m}}{E_{1}+\cdots +E_{n}}的密度函数(m<n)\\
&(2)证明Y=\frac{(n-m)X}{m(1-X)}服从自由度为(2m,2(n-m))的F分布\\
&(3)求(U_{1}\cdots U_{n})^{-X}的密度函数\\
\end{aligned}
$

本题的处理方法就是直接通过重积分计算进行求解,但是本题本后蕴含着指数分布、Gamma分布、Beta分布、Pareto分布之间的关系,本文将首先利用直接计算的方法对本题的各问进行证明,之后讨论本题所揭示的关于上述四种分布之间的关系.



## 证明

$
\begin{aligned}
&(1)\\
&由E_{i}\sim \operatorname{Exp}(1)\\
&考虑到指数分布与Gamma分布的关系可知\\
&E_{i}\sim \Gamma(1,1)\\
&
\end{aligned}
$


这个我就不整理了感觉有点浪费时间，我汇总了一个Gamma、Beta、均匀这些东西的一些结论，这些东西我自己背一背吧

