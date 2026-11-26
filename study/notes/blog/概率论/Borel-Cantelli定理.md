# 谈Borel-Cantelli定理在Yau赛若干问题中的应用

-----

本文将复习Borel-Cantelli定理的内容，并用Borel-Cantelli定理证明一系列丘成桐数学竞赛概率统计赛道的赛题.


## Borel-Cantelli定理

$
\begin{aligned}
&这里我们只给出Borel-Cantelli定理两种形式的内容\\
&\\
&具体的证明读者可以参考笔者之前的文章\\
&"与可测函数相关的几个定理"\\
&\\\\
&(1)(第一引理)(几乎只发生有限次)\\
&\\
&设A_{n}为任意事件序列,\\
&若\sum_{n=1}^{\infty}P(A_{n})<\infty\\
&\\
&则P(\lim_{n\to \infty}sup A_{n})=0\\
&(Tip:Borel-Cantelli第一引理不需要其他独立性条件)\\
&\\\\
&(2)(第二引理)(几乎必然发生无限次)\\
&\\
&设(A_{n})为一列相互独立的事件\\
&若\sum_{n=1}^{\infty}P(A_{n})=\infty\\
&则P(\lim_{n\to \infty}sup A_{n})=1\\
&\\\\
&Borel-Cantelli定理的一个重要应用\\
&便是利用第一引理来证明a.s.收敛\\
&\\\\
&我们可以将其提炼为下面的定理:\\
&设(X_{n})为一列随机变量,\\
&X也是随机变量\\
&若\forall \epsilon>0,均有\\
&\sum_{n=1}^{\infty }P(|X_{n}-X|>\epsilon)<\infty\\
&\\
&则X_{n}\to X,a.s. \\
&\\\\
&引理之证明:\\
&对于X_{n}\overset{a.s}{\to }X\\
&我们考虑将其写为集合交并的形式\\
&\\
&X_{n}\overset{a.s}{\to }X\\
&\iff \forall \epsilon>0,\exists N\in N_{+}\\
&s.t. \forall n\geq N,|X_{n}(\omega )-X(\omega )|\leq \epsilon\\
&考虑其否定形式即为:\\
&\exists \epsilon >0,s.t. \forall N\in N_{+},\exists n\geq N,|X_{n}(\omega )-X(\omega )|>\epsilon\\
&也即\exists k\in N_{+},s.t. \forall N\in N_{+},\exists n\geq N,|X_{n}(\omega )-X(\omega )|>\frac{1}{k}\\
&i.e. \\
&A=\{\omega : \lim_{n\to \infty}X_{n}(\omega )\ne X(\omega )\}\\
&=\cup_{k=1}^{\infty}\cap_{N=1}^{\infty}\cup_{n=N}^{\infty}\{|X_{n}(\omega)-X(\omega)|>\frac{1}{k}\}\\
&=\cup_{k=1}^{\infty}\lim_{n\to \infty}sup \{|X_{n}(\omega)-X(\omega)|>\frac{1}{k}\}\\
&\\
&记A_{n}=\{|X_{n}(\omega)-X(\omega)|>\frac{1}{k}\}\\
&则由\sum_{n=1}^{\infty}P(|X_{n}-X|>\epsilon)<\infty可知\\
&\\
&由Borel-Cantelli第一引理可知\\
&P(\lim_{n\to \infty}sup A_{n})=0\\
&故知A=P(\cup_{k=1}^{\infty}\lim_{n\to \infty}sup A_{n})=0\\
&故知X_{n}\overset{a.s}{\to }X\\
&故定理得证\\
&\\\\
&下面我们来看上述Borel-Cantelli定理在一系列真题中的应用\\
\end{aligned}
$



## 题目

$
\begin{aligned}
&2013年P1(1)\\
&设(X_{n})为随机变量序列\\
&设\sum_{n=0}^{\infty}P(|X_{n}|>n)<\infty\\
&证明:\\
&\lim_{n\to \infty} sup\frac{|X_{n}|}{n}\leq 1,a.s. \\
&\\
&证明:\\
&设A_{n}=\{|X_{n}|>n\}\\
&则由题目可知\\
&\sum_{n=0}^{\infty}P(A_{n})<\infty\\
&故由Borel-Cantelli第一引理可知\\
&P(\lim_{n\to \infty}sup A_{n})=0\\
&\\
&i.e. 在几乎必然意义下\\
&\lim_{n\to \infty} sup \frac{|X_{n}|}{n}\leq 1\\
&故知原命题成立\\
&\\\\
&2014年P2\\
&设(X_n)为一列两两不相关,均值为零的随机变量\\
&s.t.\\
&\sum_{n=1}^{\infty}nE|X_{n}|^{2}<\infty\\
&证明S_{n}=\sum_{i=1}^{n}X_{i}几乎必然收敛\\
&\\
&根据上面一道题的经验\\
&我们容易想到一种入手的方式\\
&i.e.\\
&考虑能否找到某种随机变量S\\
&s.t. \sum_{n=0}^{\infty}P(|S_{n}-S|>\epsilon)<\infty\\
&\\
&那么我们就会发现两个需要解决的问题:\\
&(1)S是否存在，如何寻找\\
&(2)题目给出的\sum 条件是关于期望的,我们如何找到某种随机变量序列来利用关于期望的\sum 条件\\
&\\\\
&对于第一个问题\\
&我们可以使用一种在实变和泛函中都很常用的技巧\\
&\\
&既然我们比较难以证明在a.s. 度量下极限存在\\
&那么我们不妨换一种度量方式\\
&先把极限找出来，然后在对其在a.s.意义下的收敛性进行证明\\
&\\
&一种自然的想法是考虑L^{2}空间下的收敛性\\
&E(S_{m}-S_{n})^{2}=E(\sum_{i=n+1}^{m}X_{i})^{2}=\sum_{i=n+1}^{m}EX_{i}^{2}\leq \sum_{i=n+1}^{m}\frac{E|X_{i}|^{2}}{i}i\leq \sum_{i=n+1}^{m}\frac{E|X_{i}|^{2}}{i}\to 0\\
&故由Cauchy收敛原理可知\\
&S_{n}在L^{2}空间下收敛\\
&设极限为S\\
&\\
&对于第二个问题\\
&这里其实有一种值得积累的trick\\
&利用Chebyshev不等式将概率与期望联系起来\\
&\\
&P(|S_{n}-S|>\epsilon)\leq \frac{E|S_{n}-S|^{2}}{\epsilon^{2}}\\
&E|S_{n}-S|^{2}=\sum_{i=n+1}^{\infty}EX_{i}^{2}\\
&\\
&故知\\
&\sum_{n=0}^{\infty}P(|S_{n}-S|>\epsilon)\leq \frac{1}{\epsilon^{2}}\sum_{n=0}^{\infty}\sum_{i=n+1}^{\infty}EX_{i}^{2}=\frac{1}{\epsilon^{2}}\sum_{i=1}^{\infty}iEX_{i}^{2}<\infty\\
&\\
&故由Borel-Cantelli第一引理可知\\
&\\
&\lim_{n\to \infty} sup |S_{n}-S|=0\\
&故知S_{n}\to S,a.s.\\
&故知原命题成立\\
&\\\\
&2015年P3(b)\\
&设(X_{n})为相互独立的正态随机变量序列\\
&X_{n}\sim N(0,\sigma_{n}^{2})\\
&\\
&\sum_{n=1}^{\infty}\sigma_{n}^{2}=\infty\\
&证明:\\
&P(\sum_{n=1}^{\infty}X_{n}=\infty)=1\\
&\\\\
&
\end{aligned}
$

