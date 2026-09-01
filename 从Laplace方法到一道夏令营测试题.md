# 从Laplace 方法到一道夏令营测试题

## 前言

笔者在参加六校联合大学生数学竞赛联合竞赛夏令营期间遇到了下述题目:

$$
f_a(x)=\sum_{n=1}^{\infty}n^a e^{2n}x^{n^2},
\qquad 0<x<1.
$$

求常数 $c$，使得

$$
\lim_{x\to 1^-}f_a(x)e^{-\frac{1}{1-x}}=0,
\qquad \forall a<c;
$$

并且

$$
\lim_{x\to 1^-}f_a(x)e^{-\frac{1}{1-x}}=+\infty,
\qquad \forall a>c.
$$

该题目较常规的Laplace方法的题目而言，有下述几点不同:

1. 考虑量级的函数是离散求和而非连续积分

2. 并不是严格的$A(x)e^{\lambda \phi(x)}的形式$

3. 即便想到令t=lnx,得到的新函数的指数幂次仍然形如$\phi_{\lambda }(t)$而非$\lambda \phi(t)$

但笔者经过思考，发现本题可以通过换元转化成经典的离散Laplace方法题目,笔者认为这可以看成Laplace方法模板的一种拓展.

下面笔者将首先介绍离散和连续情况下,标准Laplace方法的形式和结论.

之后再对于形如本题这样,满足2,3两点的题目,给出一种转化成Laplace方法标准形式的方法.

## 标准形式的Laplace方法及其结论


$
\begin{aligned}
&下面我们将讨论下述两种经典的Laplace方法的形式和结论\\
&连续型:\\
&设D\subseteq R为一个区间\\
&I(\lambda )=\int _{D}A(x)e^{\lambda \phi(x)}dx\\
&\exists 唯一的x_{0}\in D^{o},s.t.\\
&\phi(x_0)=\sup_{x\in D}\phi(x)\\
&且\phi'(x_0)=0,\phi''(x_0)<0,A(x_0)\ne 0\\
&且\\
&\exists 某个充分小的\delta >0\\
&s.t. \\
&\int _{D\cap \{x:|x-x_{0}|\geq \delta \}}|A(x)|e^{\lambda \phi(x)}dx=o(e^{\lambda \phi(x_0)}\lambda ^{-\frac{1}{2}})\\
&\\
&则有I(\lambda )\sim A(x_0)e^{\lambda \phi(x_0)}\sqrt{\frac{2\pi}{-\lambda \phi''(x_0)}}\\
&\\\\
&\\\\
&离散型:\\
&设D\subseteq R为一个区间\\
&S_{\lambda }=\sum_{n\in Z,\frac{n}{\lambda }\in D}A(\frac{n}{\lambda })e^{\lambda \phi (\frac{n}{\lambda })}\\
&\\
&若\exists 唯一的x_{0}\in D^{o},s.t. \\
&\phi(x_0)=\sup_{x\in D}\phi(x)\\
&且\phi'(x_0)=0,\phi''(x_0)<0,A(x_0)\ne 0\\
&同时对于充分小的\delta >0有\\
&\sum_{\frac{n}{\lambda }\in D,|n/\lambda -x_{0}|\geq \delta }|A(\frac{n}{\lambda })|e^{\lambda \phi (\frac{n}{\lambda })}=o(e^{\lambda \phi(x_0)}\lambda ^{\frac{1}{2}})\\
&则S_{\lambda }\sim A(x_0)e^{\lambda \phi(x_0)}\sqrt{\frac{2\pi\lambda}{-\phi''(x_0)}}\\
\end{aligned}
$

### 连续型Laplace方法之证明

$
\begin{aligned}
&由x_{0}\in D^{o},且D为区间可知\\
&\exists \delta' >0,s.t.\\
&\forall \delta '' \in (0,\delta ')有\\
&\forall x\in \{|x-x_{0}|\leq \delta'' \},x\in D\\
&取\tilde{\delta }=\min\{\delta ,\delta '\}\\
&则知\\
&\int _{D\cap \{x:|x-x_{0}|\geq \tilde{\delta }\}}|A(x)|e^{\lambda \phi(x)}dx=o(e^{\lambda \phi(x_0)}\lambda ^{-\frac{1}{2}})\\
&且D\cap \{x:|x-x_{0}|< \tilde{\delta }\}=\{x:|x-x_{0}|<\tilde{\delta }\}\\
&\\
&下记\tilde{\delta }为\delta \\
&则I=I_{1}+I_{2}\\
&其中\\
&I_{1}=\int _{|x-x_{0}|<\delta }A(x)e^{\lambda \phi(x)}dx\\
&I_{2}=\int _{|x-x_{0}|\geq \delta \cap D}A(x)e^{\lambda \phi(x)}dx\\
&由I_{2}=o(e^{\lambda \phi(x_0)}\lambda ^{-\frac{1}{2}})\\
&故知只需证明I_{1}\sim A(x_0)e^{\lambda \phi(x_0)}\sqrt{\frac{2\pi}{-\lambda \phi''(x_0)}}\\
&\\\\
&令u=\sqrt{\lambda }(x-x_{0})\\
&则I_{1}=\int _{|u|<\sqrt{\lambda }\delta }A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda \phi(x_0+\frac{u}{\sqrt{\lambda }})}\frac{du}{\sqrt{\lambda }}\\
&=\frac{e^{\lambda \phi(x_{0})}}{\sqrt{\lambda }}\int _{|u|<\sqrt{\lambda }\delta }A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}du\\
&\\
&=\frac{e^{\lambda \phi(x_{0})}}{\sqrt{\lambda }}\int _{R }A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|u|<\sqrt{\lambda }\delta }du\\
&和设问对比,我们只需证明:\\
&\lim_{\lambda \to \infty }\int _{R }A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|u|<\sqrt{\lambda }\delta }du\\
&=A(x_0)\sqrt{\frac{2\pi}{- \phi''(x_0)}}\\
&若上述极限与积分符号可以交换顺序\\
&则\int _{R}\lim_{\lambda \to \infty}A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|u|<\sqrt{\lambda }\delta }du\\
&=\int _{R}A(x_{0})e^{\frac{1}{2}\phi''(x_0)u^2}du\\
&=A(x_{0})\int _{R}e^{\frac{1}{2}\phi''(x_0)u^2}du\\
&=A(x_0)\sqrt{\frac{2\pi}{- \phi''(x_0)}}\\
&\\
&故知只需证明上述极限和积分符号可以交换顺序\\
&考虑A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|u|<\sqrt{\lambda }\delta }\\
&当\frac{|u|}{\sqrt{\lambda }}<\delta 时,有\\
&x_{0}+\frac{u}{\sqrt{\lambda }}\in [x_{0}-\delta ,x_{0}+\delta ]\\
&由A是有界闭区间上的连续函数可知\\
&\exists M,s.t. A(x_{0}+\frac{u}{\sqrt{\lambda }})\leq M\\
&\\
&由\phi''(x_0)<0,\phi''(x_0)在x_{0}处连续可知\\
&可以进一步缩小上文的\delta ,s.t.\\
&\forall |x-x_{0}|\leq \delta \\
&\phi''(x)\leq \frac{1}{2}\phi''(x_0)\\
&因此有\phi(x)=\phi(x_0)+\frac{1}{2}\phi''(\xi)(x-x_{0})^{2}\\
&\Rightarrow \\
&\phi(x)-\phi(x_0)=\frac{1}{2}\phi''(\xi)(x-x_{0})^{2}\leq \frac{1}{4}\phi''(x_0)(x-x_{0})^{2}\\
&\Rightarrow \\
&e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\leq e^{\lambda \frac{1}{4}\phi''(x_0)}(\frac{u}{\sqrt{\lambda }})^{2}=e^{\frac{1}{4}\phi''(x_0)u^2}\\
&故知A(x_{0}+\frac{u}{\sqrt{\lambda }})e^{\lambda (\phi(x_0+\frac{u}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|u|<\sqrt{\lambda }\delta }\leq Me^{\frac{1}{4}\phi''(x_0)u^{2}}\\
&又由\int _{R}Me^{\frac{1}{4}\phi''(x_0)u^{2}}du<\infty\\
&故由Lebesgue控制收敛定理可知原命题成立\\
\end{aligned}
$

### 离散型Laplace方法的证明

$
\begin{aligned}
&与上文连续性Laplace方法的证明类似\\
&\\
&由x_{0}\in D^{o},且D为区间可知\\
&\exists \delta' >0,s.t.\\
&\forall \delta '' \in (0,\delta ')有\\ 
&\forall \frac{n}{\lambda }\in \{x\in D:|x-x_{0}|<\delta ''\}\\
&有\frac{n}{\lambda }\in D\\
&\\
&令\tilde{\delta }=min\{\delta',\delta 
\}\\
&则\sum _{\frac{n}{\lambda }\in D,|\frac{n}{\lambda }-x_{0}|\geq \tilde{\delta }} A(\frac{n}{\lambda })e^{\lambda \phi (\frac{n}{\lambda })}=o(e^{\lambda \phi(x_0)}\lambda ^{\frac{1}{2}})\\
&且|\frac{n}{\lambda }-x_{0}|<\tilde{\delta }\implies \frac{n}{\lambda }\in D\\
&下记\tilde{\delta }为\delta \\
&故知S_{\lambda }=S_{1}+S_{2}\\
&S_{1}=\sum_{|\frac{n}{\lambda }-x_{0}|<\delta }A(\frac{n}{\lambda })e^{\lambda \phi (\frac{n}{\lambda })}\\
&S_{2}=\sum_{\frac{n}{\lambda }\in D,|\frac{n}{\lambda }-x_{0}|\geq \delta }A(\frac{n}{\lambda })e^{\lambda \phi (\frac{n}{\lambda })}=o(e^{\lambda \phi(x_0)}\lambda ^{\frac{1}{2}})\\
&\\
&由\lim_{\lambda \to \infty}S_{2}=o(e^{\lambda \phi(x_0)}\lambda ^{\frac{1}{2}})\\
&故知只需证明S_{1}\sim A(x_0)e^{\lambda \phi(x_0)}\sqrt{\frac{2\pi\lambda}{-\phi''(x_{0})}}\\
&\\
&令t_{n}=(\frac{n}{\lambda }-x_{0})\sqrt{\lambda }\\
&S_{1}=\sum_{|t_{n}|<\sqrt{\lambda }\delta }A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda \phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})}\\
&=e^{\lambda \phi(x_{0})}\sqrt{\lambda }\sum_{|t_{n}|<\sqrt{\lambda }\delta }A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}\frac{1}{\sqrt{\lambda }}\\
&故知下面只需证明:\\
&\lim_{\lambda \to \infty}\sum_{|t_{n}|<\sqrt{\lambda }\delta }A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}\frac{1}{\sqrt{\lambda }}\\
&=A(x_{0})\sqrt{\frac{2\pi}{-\phi''(x_0)} }\\
&令I_{n}=[t_{n},t_{n+1})\\
&定义g_{\lambda }(x)=\begin{cases}
F_{\lambda}(t_{n}),x\in I_{n},|t_{n}|<\delta \sqrt{\lambda }\\
0,else\\
\end{cases}\\
&\\
&其中F_{\lambda}(t_{n})=A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}\\
&则\sum_{|t_{n}|<\sqrt{\lambda }\delta }A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}\frac{1}{\sqrt{\lambda }}\\
&=\int _{R}g_{\lambda }(x)dx\\
&故知下面只需证明:\\
&\lim_{\lambda \to \infty}\int _{R}g_{\lambda }(x)dx=A(x_{0})\sqrt{\frac{2\pi}{-\phi''(x_0)} }\\
&若上述极限与积分符号可以交换顺序\\
&则\int _{R}\lim_{\lambda \to \infty}g_{\lambda }(x)dx\\
&=\int _{R}A(x_{0})e^{\frac{1}{2}\phi''(x_0)x^2}dx\\
&=A(x_{0})\sqrt{\frac{2\pi}{-\phi''(x_0)} }\\
&故知只需证明上述极限和积分符号可以交换顺序\\
&注意到:\\
&|A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}|\leq Me^{\frac{1}{4}\phi''(x_0)t_{n}^{2}}\\
&\\
&考虑到x\in I_{n}\implies |x-t_{n}|\leq \frac{1}{\sqrt{\lambda }}\leq 1(\lambda \to \infty)\\
&故知|x-t_{n}|\leq 1\\
&待定:\\
&|g_{\lambda }(x)|\leq Me^{\frac{1}{4}\phi''(x_0)s(x)}\\
&其中s(x)待定\\
&则我们只需\\
&|g_{\lambda }(x)|=|A(x_{0}+\frac{t_{n}}{\sqrt{\lambda }})e^{\lambda (\phi (x_{0}+\frac{t_{n}}{\sqrt{\lambda }})-\phi(x_0))}\cdot 1_{|t_{n}|<\delta \sqrt{\lambda }}|\\
&\leq Me^{\frac{1}{4}\phi''(x_0)t_{n}^{2}}\leq Me^{\frac{1}{4}\phi''(x_0)s(x)}\\
&这只需\\
&s(x)\leq t_{n}^{2}\\
&\\
&对于固定的x\in [t_{n}-1,t_{n}+1]\\
&有t_{n}\in [x-1,x+1]\\
&\Rightarrow t_{n}^{2}\geq \begin{cases}
0,x\in [-1,1]\\
(x-1)^{2},x\in (1,+\infty)\\
(x+1)^{2},x\in (-\infty,-1)\\
\end{cases}\\
&故知取s(x)=\begin{cases}
0,x\in [-1,1]\\     
(x-1)^{2},x\in (1,+\infty)\\
(x+1)^{2},x\in (-\infty,-1)\\
\end{cases}即可\\
&\\
&故知上述换序成立\\
&\\\\
\end{aligned}
$

## 广义Laplace问题的处理方法


在很多问题中,题目给出的并不是离散/连续的标准Laplace方法的形式,而是和本题一样的广义形式

在这些问题中,我们可能会发现
$\phi$并不一定仅仅是关于x的函数
而是可能是关于$\lambda $和x的复合函数

这时我们通常的处理手段是对$x,\lambda $做适当的坐标变换

具体的，我们可以如下操作:

$
\begin{aligned}
&1. 我们首先将题述函数变形成\sum A(t,n)e^{B(t,n)}/ \int A(t,x)e^{B(t,x)}的形式\\
&2. 对于B(t,n)/B(t,x)计算关于n的极大值点n_{0}(t)/x_{0}(t)\\
&这时我们得到的极大值点是关于t的\\
&但在标准标准的Laplace方法中,我们的极大值点应该是一个常数\\
&3. 为了让极大值点变为常数,我们令\lambda =x_{0}(t)/y=x_{0}(t)x,\\&将原函数整理为\sum A(\frac{n}{\lambda })e^{\lambda B(\frac{n}{\lambda })}/\int A(y)e^{\lambda B(y)}dx的形式(这里可能需要用等价近似)\\
\end{aligned}
$

从而将原本的问题转化成标准Laplace方法的形式

下面我们将以开头给出的夏令营考题作为例子介绍这种方法的使用

### 夏令营考题的证明

$$
f_a(x)=\sum_{n=1}^{\infty}n^a e^{2n}x^{n^2},
\qquad 0<x<1.
$$

求常数 $c$，使得

$$
\lim_{x\to 1^-}f_a(x)e^{-\frac{1}{1-x}}=0,
\qquad \forall a<c;
$$

并且

$$
\lim_{x\to 1^-}f_a(x)e^{-\frac{1}{1-x}}=+\infty,
\qquad \forall a>c.
$$

-----

$
\begin{aligned}
&证明:\\
&我们首先将f_a(x)变形成\sum A(x,n)e^{B(x,n)}的形式\\
&i.e. \\
&f_a(x)=\sum_{n=1}^{\infty}n^{a}e^{2n+n^2\ln x}\\
&令\ln x=-\frac{1}{t}\\
&则\lim_{x\to 1^-}\iff \lim_{t\to \infty}\\
&x=e^{-\frac{1}{t}}\\
&1-x=1-e^{-\frac{1}{t}}
=\frac{1}{t}-\frac{1}{2t^2}+O(\frac{1}{t^3})\\
&\Rightarrow \\
&\frac{1}{1-x}
=t+\frac{1}{2}+O(\frac{1}{t})\\
&\Rightarrow \\
&e^{-\frac{1}{1-x}}
\sim e^{-\frac{1}{2}}e^{-t}\\
&\\
&f_a(t)=\sum_{n=1}^{\infty}n^{a}e^{2n-\frac{n^{2}}{t}}\\
&考虑g(n)=2n-\frac{n^{2}}{t}\\
&g'(n)=2-\frac{2n}{t}=0\implies n=t\\
&我们发现此时的最大值点是t并不是常数\\
&\\
&为了让其变为常数,我们考虑让离散标准情形中的\lambda=t\\
&则知我们可以做如下代数变形:\\
&e^{2n-\frac{n^{2}}{t}}
=e^{t(2\frac{n}{t}-\frac{n^{2}}{t^{2}})}
=e^{t\phi(\frac{n}{t})}\\
&其中\phi(x)=2x-x^{2}\\
&故知f_a(t)
=t^{a}\sum_{n=1}^{\infty}
(\frac{n}{t})^{a}
e^{t\phi(\frac{n}{t})}\\
&\phi'(x)=2-2x=0\implies x_0=1\\
&\phi(1)=1\\
&\phi''(1)=-2\\
&\Rightarrow \\
&由标准离散Laplace方法的相关结论可知\\
&f_a(t)
\sim
t^{a}e^{t}
\sqrt{\frac{2\pi t}{2}}\\
&=
\sqrt{\pi}t^{a+\frac{1}{2}}e^{t}\\
&\Rightarrow \\
&f_a(t)e^{-t}
\sim
\sqrt{\pi}t^{a+\frac{1}{2}}\\
&又由\\
&e^{-\frac{1}{1-x}}
\sim
e^{-\frac{1}{2}}e^{-t}\\
&故有\\
&f_a(x)e^{-\frac{1}{1-x}}
\sim
\sqrt{\frac{\pi}{e}}
t^{a+\frac{1}{2}}\\
&\Rightarrow \\
&a<-\frac{1}{2}
\implies
\lim_{x\to1^-}
f_a(x)e^{-\frac{1}{1-x}}
=0\\
&a>-\frac{1}{2}
\implies
\lim_{x\to1^-}
f_a(x)e^{-\frac{1}{1-x}}
=+\infty\\
&\Rightarrow \\
&题目所求的分界点c=-\frac{1}{2}
\end{aligned}
$

## 推广

在实际应用中,我们可能会遇到更复杂的函数
以至于即便进行换元,也无法将问题简化为标准的Laplace方法

对于这样的问题,我们都可以将其看为Laplace方法的推广问题

在理解了上文所述方法的真实内核后

我们可以发现本质的操作，其实是我们通过某种变量代换，使得$\lambda( \phi(x)-\phi(x_0))$在$x_{0}$附近的Taylor展开为某一与$\lambda$无关的被积函数

这样的代换会使得被积区间变为关于$\lambda $的函数

因此我们就可以将积分/求和写为R上原函数与某示性函数乘积的积分

之后我们研究点态极限并利用Lebesgue控制收敛定理即可得到所求极限的量级


因此,我们可以将问题和对应的解决方法进一步推广

\[
\begin{aligned}
&考虑形如
I_r=\int_{D_r}A_r(x)e^{\phi_r(x)}dx
\quad (r\to\infty)
\text{ 的量级估计问题}\\
&我们可以按照下述步骤进行操作:\\
&1.\ 研究\phi_r(x)\text{ 的极大值点 }x_0(r)\\
&2.\ 研究极大值点附近的指数差
\phi_r(x)-\phi_r(x_0(r))\\
&若有
\phi_r(x)-\phi_r(x_0(r))
\sim
-c_r|x-x_0(r)|^k,
\qquad c_r>0\\
&则由
c_r|x-x_0(r)|^k\asymp1
\text{ 得到自然局部尺度}\\
&w_r=c_r^{-1/k}\\
&令
y=\frac{x-x_0(r)}{w_r}\\
&3.\ 将换元后的积分写在某个固定极限区域上,
必要时利用示性函数将定义域统一\\
&4.\ 研究换元后被积函数的点态极限,
并构造与r无关的可积控制函数\\
&5.\ 在满足Lebesgue控制收敛定理条件时交换极限与积分,
从而得到原积分的渐近主项.
\end{aligned}
\]

