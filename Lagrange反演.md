# 利用Lagrange反演求一个数列的通项

## 前言

笔者在八一考研竞赛数学今日的一篇推文中发现了这样一道题目

若$a_1=1$,且数列$a_{n}$满足下面的递推关系:

$
a_{n+1}=\sum_{k=1}^{n}\frac{n+1}{2n}a_{k}a_{n+1-k}
$

求级数和$\sum_{k=1}^{\infty}a_{n}e^{-n}$

本题很直观的一个想法就是借助生成函数来进行求解

我们可以很自然的得出$a_{n}$其实就是函数$xe^{F(x)}=F(x)$的Taylor展开中n次项的系数

如果只是从形式化求解的角度来看，我们可以直接取$x=1/e$从而将$F(1/e)$的值在上述方程中解出来.

然而这样的求解在没有保障级数收敛性的前提下，往往是不能被接受的，而对于如何证明题述级数的收敛性,笔者尝试了很多中方法,类似于待定系数法归纳,甚至待定与Catlan数有关的数列进行归纳论证,但笔者最终仍没有找到很好的证明方法。

后经过学习，笔者发现本题中的数列实质上可以通过Lagrange反演来进行通项的显式求解。

而如果有了显式通项，证明级数收敛性就变成了容易的事情。

而如果考虑严谨的证明,我们也可以通过先利用Lagrange反演猜出通项,然后利用归纳法进行严谨证明的方式来证明通项公式(从而避开直接使用Lagrange反演可能需要涉及的若干复变相关正则性条件)

因此，笔者将在此对Lagrange反演的内容进行整理，并给出依赖于留数定理的简要证明

## Lagrange反演

> Lagrange反演的核心思想是:已知一个函数的隐式方程,不显式的求解这个函数，而是直接求解这个函数对应的Taylor展开。基于篇幅原因，笔者在本文暂且只讨论下述情形的Lagrange反演:

$
\begin{aligned}
&设\phi(t)在原点附近全纯\\
&且\phi(0)\ne 0\\
&\\
&设w=z\phi(w)\\
&则w(z)=\sum_{n=1}^{\infty}\frac{z^{n}}{n}[t^{n-1}]\phi(t)^{n}\\
&\\\\
&证明:\\
&设w(z)=\sum_{n=1}^{\infty}a_{n}z^{n}\\
&(由w=z\phi(w)可知w(0)=0,因此a_{0}=0)\\
&\\
&由Cauchy积分公式可知\\
&a_{n}=\frac{1}{2\pi i}\oint _{|z|<r}\frac{w(z)}{z^{n+1}}dz~~~~~(*)\\
&\\
&考虑利用换元法计算(*)式\\
&\\
&令y=w(z)\\
&则*=\frac{1}{2\pi i}\oint _{|z|<r}\frac{y}{(\frac{y}{\phi(y)})^{n+1}}dz\\
&=\frac{1}{2\pi i}\oint _{|z|<r}\frac{\phi(y)^{n+1}}{y^{n}}(\frac{\phi(y)-\phi'(y)y}{\phi(y)^{2}})dy\\
&=\frac{1}{2\pi i}\oint _{|z|<r}(\frac{\phi(y)}{y})^{n}-\frac{\phi(y)^{n-1}\phi'(y)}{y^{n-1}}dy\\
&=\frac{1}{2\pi i}[\oint _{|z|<r}(\frac{\phi(y)}{y})^{n}-\oint_{|z|<r}\frac{\phi(y)^{n-1}\phi'(y)}{y^{n-1}}dy](*)\\
&设\phi^{n}(y)=\sum_{n=0}^{\infty}b_{n}y^{n}\\
&则\frac{1}{2\pi i}\oint _{|z|<r}(\frac{\phi(y)}{y})^{n}dy=\frac{1}{2\pi i}\oint _{|z|<r}\sum_{n=0}^{\infty}b_{n}y^{n-1}dy=b_{n-1}\\
&n\phi^{n-1}(y)\phi'(y)=\sum_{k=1}^{\infty}kb_{k}y^{k-1}\\
&\frac{1}{2\pi i}\oint _{|z|<r}\frac{\phi(y)^{n-1}\phi'(y)}{y^{n-1}}dy=\frac{1}{2\pi i}\oint _{|z|<r}\frac{1}{n}\sum_{k=1}^{\infty}kb_{k}y^{k-n}\\
&=\frac{n-1}{n}b_{n-1}\\
&\Rightarrow \\
&a_{n}=b_{n-1}-\frac{n-1}{n}b_{n-1}=\frac{1}{n}b_{n-1}\\
&故知原命题得证\\
\end{aligned}
$


## 原级数通项的求解

$
\begin{aligned}
&由Lagrange反演可知\\
&a_{n}=\frac{1}{n}b_{n-1}\\
&其中b_{n}是\phi(t)^{n}的Taylor展开中t^{n}的系数\\
&本题中\phi(t)=e^{t}\\
&\Rightarrow \phi(t)^{n}=e^{nt}=\sum_{k=0}^{\infty}\frac{(nt)^{k}}{k!}\\
&\Rightarrow b_{k-1}=\frac{n^{k-1}}{(k-1)!}\\
&\\
&\Rightarrow a_{n}=\frac{1}{n}b_{n-1}=\frac{n^{n-1}}{n!}\\
\end{aligned}
$

## 和组合数学的联系

笔者经过查阅，发现本题中的通项其实还有很强的组合背景，敢兴趣的读者请自行阅读笔者的图论和组合数学中与矩阵树定理相关的内容


