# Radon-Riesz定理及其应用

## 前言

本文主要介绍Radon-Riesz定理，并给出几个赛题作为例子

## Radon-Riesz定理

$
\begin{aligned}
&设(E,m)为测度空间,p\geq 1,若函数列\{f_{n}\}和函数f均属于L^{p}\\
&且满足:\\
&(1)f_{n}(x)\to f(x),a.e.(或依概率收敛)\\
&(2)\lim_{n\to \infty}||f_{n}||_{p}=||f||_{p}\\
&\\\\
&则有范数与极限可以交换顺序:\\
&\lim_{n\to \infty}||f_{n}-f||_{p}=\lim_{n\to \infty}(\int _{E}|f_{n}-f|^{p}dx)^{\frac{1}{p}}=0\\
&
\end{aligned}
$

## 证明

$
\begin{aligned}
&我们下面给出基于Fatou引理和Egorov定理的两种证明思路\\
&\\\\
&(Fatou引理)\\
&我们首先考虑证明f_{n}\overset{a.e.}{\to }f的情况\\
&考虑证明\lim_{n\to \infty}(\int _{E}|f_{n}-f|^{p}dx)=0\\
&我们注意到欲证明上述命题\\
&如果我们直接考虑Fatou引理:\\
&\underline{\lim_{n\to \infty}}(\int _{E}|f_{n}-f|^{p}dx|)=\int _{E}\underline{\lim_{n\to \infty}}|f_{n}-f|^{p}dx\\
&由于f_{n}\overset{a.e.}{\to }f\\
&故有\int _{E}\underline{\lim_{n\to \infty}}|f_{n}-f|^{p}dx=0\\
&但我们这时发现:\\
&使用上述方法我们只能证明(\int _{E}|f_{n}-f|^{p}dx)的下极限为0\\
&但是这对于我们的目标来说还并不够\\
&我们需要设法证明其上极限为0\\
&\\
&但Fatou定理对于上极限并不能直接成立\\
&我们可以考虑使用下述方法来实现上极限情况下Fatou定理的使用:\\
&\\\\
&(Fatou引理的上极限版本):\\
&已知f_{n}是一列可测函数,\\&若\exists 一个绝对可积的控制函数G\in L^{1}(E),s.t. \forall n,f_{n}(x)\leq G(x) \\
&则\int _{E}\overline{\lim_{n\to \infty}}f_{n}dx\geq \overline{\lim_{n\to \infty}}\int _{E}f_{n}dx\\
&\\
&Fatou引理上极限版本之证明:\\
&\int _{E}\underline{\lim_{n\to \infty}}(G(x)-f_{n}(x))dx\leq \underline{\lim_{n\to \infty}}\int _{E}(G(x)-f_{n}(x))dx\\
&i.e. \\
&\int _{E}G(x)dx-\int _{E}\overline{\lim_{n\to \infty}}f_{n}(x)dx\leq \int _{E}G(x)dx-\overline{\lim_{n\to \infty}}\int _{E}f_{n}(x)dx\\
&i.e. \\
&\int _{E}\overline{\lim_{n\to \infty}}f_{n}dx\geq \overline{\lim_{n\to \infty}}\int _{E}f_{n}dx\\
&\\\\
&回到原题,我们考虑\\
&寻找|f_{n}(x)-f(x)|^{p}的控制函数\\
&由Holder不等式得知:\\
&|f_{n}(x)-f(x)|^{p}\leq 2^{p-1}(|f_{n}(x)|^{p}+|f(x)|^{p})\\
&但这时我们意识到一个问题\\
&由于我们此时没有单调性条件\\
&因此我们难以将|f_{n}|^{p}|+|f(x)|^{p}这个函数\\
&转化为一个和n无关的可积函数\\
&\\
&一个自然的想法是,我们直接对Fatou引理的上极限版本进行改进:\\
&考虑g_{n}(x)=2^{p-1}(|f_{n}(x)|^{p}+|f(x)|^{p})-|f_{n}(x)-f(x)|^{p}\\
&我们考虑对g_{n}利用Fatou引理\\
&\underline{\lim_{n\to \infty}}\int _{E}g_{n}(x)dx\geq \int _{E}\underline{\lim_{n\to \infty}}g_{n}(x)dx\\
&RHS=2^{p}\int _{E}|f(x)|^{p}dx\\
&LHS=2^{p-1}\underline{\lim_{n\to \infty}}\int _{E}|f_{n}(x)|^{p}dx+2^{p-1}\int _{E}|f(x)|^{p}dx-\overline{\lim_{n\to \infty}}\int _{E}|f_{n}(x)-f(x)|^{p}dx\\
&由\lim_{n\to \infty}||f_{n}||_{p}=||f||_{p}可知\\
&\underline{\lim_{n\to \infty}}\int _{E}|f_{n}(x)|^{p}dx=2^\int _{E}|f(x)|^{p}dx\\
&故知LHS=2^{p}\int _{E}|f(x)|^{p}dx-\overline{\lim_{n\to \infty}}\int _{E}|f_{n}(x)-f(x)|^{p}dx\\
&\\
&因此有\overline{\lim_{n\to \infty}}\int _{E}|f_{n}(x)-f(x)|^{p}dx\leq 0\\
&\\
&故知原命题成立\\
&\\
&若f_{n}\overset{p}{\to }f ,我们只需利用Riesz定理进行转化即可\\
&\\
&对于\{f_{n}\}的任意子列\{f_{n_{k}}\}\\
&其必然仍然依概率收敛于f\\
&并且\lim_{k\to \infty}||f_{n_{k}}||_{p}=||f||_{p}\\
&由Riesz定理知:\\
&\exists \{f_{n_{k_{j}}}\}为\{f_{n_{k}}\}的子列\\
&s.t. \{f_{n_{k_{j}}}\}\overset{a.s.}{\to }f\\
&且\{f_{n_{k_{j}}}\}仍满足范数收敛的条件\\
&故由上述对a.s. 收敛情况下的套路可知 \\
&若\{f_{n}\}\overset{p}{\to } f时,Radon-Riesz定理仍成立\\
&\\\\
&(Egorov定理)\\
&
\end{aligned}
$