# 概率视角下的Weierstarass一致逼近定理

## 前言

在数学分析中,我们曾经学过Weierstarass一致逼近定理：及有界闭区间上的连续函数一定可以被多项式函数一致逼近.
利用该定理我们可以便捷地解决很多积分(求和、极限、不等式)问题(只需要以来这些运算与极限符号的可换序性，或极限的保号性)

然而，从数分角度对该定理进行证明往往比较复杂.

但是如果我们仔细观察Weierstarass一致逼近定理中Bernstein多项式的结构,我们就可以发现,所谓的Bernstein多项式其实和概率论中的二项分布有很紧密的联系。这也就引出了利用概率论方法证明Weierstarass一致逼近定理的理论基础.

## 利用二项分布证明Bernstein多项式可以逼近连续函数
$
\begin{aligned}
&我们首先抛开一致逼近不谈\\
&我们只考虑证明任意的一个有界闭区间上的连续函数可以被Bernstein多项式一致逼近\\
&为了简单起见,我们只考虑定义在[0,1]上的连续函数\\
&\\
&设f(x)\in C[0,1]\\
&考虑其Bernstein多项式:\\
&B_n(x)=\sum_{k=0}^{n}f(\frac{k}{n})\binom{n}{k}x^{k}(1-x)^{n-k}\\
&\\
&我们构造组合意义:\\
&\\\\
&考虑由n次独立重复Bernoulli试验构成的二项分布:\\
&设其对应的n个独立随机变量为X_1,\cdots ,X_n\\
&每次试验成功的概率为x\\
&我们考虑f(\frac{X_1+\cdots +X_n}{n})的期望\\
&则显然其期望为B_n(x)\\
&故我们只需证明Ef(\frac{X_1+\cdots +X_n}{n})收敛于f(x)\\
&由辛钦弱大数律有:\\
&\frac{X_1+\cdots +X_n}{n}\xrightarrow {p} x\\
&则Ef(\frac{X_1+\cdots +X_n}{n})\\
&=\int_{\Omega } f(\frac{w_1+\cdots +w_n}{n}) d P(w)\\
&由f(x)是[0,1]上的连续函数可知\\
&|f(x)|有界\\
&故由有界收敛定理可知\\
&\lim_{n\to \infty}\int_{\Omega } f(\frac{w_1+\cdots +w_n}{n}) d P(w)=\int_{\Omega }\lim_{n\to \infty} f(\frac{w_1+\cdots +w_n}{n}) d P (w )\\
&=\int_{\Omega }f(x )d P( w)\\
&=f(x)\\
&\\
&至此,我们也就证明了有界闭区间上的连续函数\\
&可以被多项式函数逼近\\
\end{aligned}
$

## Weierstarass定理
$
\begin{aligned}
&下面我们来考虑如何证明完整版本的Weierstarass一致逼近定理\\
&从一致收敛定义的角度来说,我们只需证明:\\
&\lim_{n\to \infty}\sup |B_n(x)-f(x)|=0\\
&\forall x\in [0,1]\\
&(我们同样只考虑定义在[0,1]闭区间上的连续函数)\\
&与刚才的证明过程相同\\
&\\
&我们只需考虑\\
&\lim_{n\to \infty}\sup |Ef(\frac{X_1+\cdots +X_n}{n})-f(x)|=0\\
&我们考虑设\frac{X_1+\cdots +X_n}{n}=S_n\\
&我们考虑对Ef(S_n)进行分段估计\\
&\\\\
&Ef(S_n)=\int_{\Omega} f(S_n ) d(S_n)\\
&=\int_{|S_n-x|<\delta } f(S_n ) d(S_n)+\int_{|S_n-x|\geq \delta } f(S_n ) d(S_n)\\
&考虑|Ef(S_n)-f(x)|\leq \\
&\int_{|S_n-x|<\delta } |f(S_n )-f(x)| d(P(S_n))+\int_{|S_n-x|\geq \delta } |f(S_n )-f(x)| d(P(S_n))\\
&\leq \epsilon +\frac{x(1-x)}{n\delta ^2}\\
&取n\to \infty\\
&即有|Ef(S_n)-f(x)|\leq 2\epsilon \\
&故知该命题成立\\
\end{aligned}
$