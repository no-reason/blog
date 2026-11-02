# 【数理统计】UMP 与 UMPU 的关系：定义、严格证明、反例与双侧最优检验

> 关键词：功效函数、显著性水平、Neyman–Pearson 引理、UMP、UMPU、无偏检验、单调似然比、双侧检验、Karlin–Rubin 定理

---

# 一、问题背景

在数理统计的假设检验理论中，我们经常遇到以下概念：

- Neyman–Pearson 最强检验（MP）
- 一致最强检验（UMP）
- 无偏检验（Unbiased Test）
- 一致最强无偏检验（UMPU）

这些概念之间存在紧密的联系。

尤其需要搞清楚以下四个命题：

1. UMP 检验是否一定是 UMPU 检验？
2. UMPU 检验是否一定是 UMP 检验？
3. 水平为 $\alpha$ 的检验，如果备择参数下的功效均不低于 $\alpha$，是否就是无偏检验？
4. 双侧假设检验是否一定不存在 UMP？

在通常允许随机化检验的理论框架中，答案分别是：

$$
\boxed{
\begin{aligned}
&(1)\quad \text{正确},\\
&(2)\quad \text{错误},\\
&(3)\quad \text{正确},\\
&(4)\quad \text{错误}.
\end{aligned}
}
$$

下面从定义出发，严格证明这些结论。

---

# 二、假设检验的基本框架

## 2.1 原假设与备择假设

考虑参数统计模型：

$$
\{P_\theta:\theta\in\Theta\}.
$$

将参数空间划分为两个互不相交的集合：

$$
\Theta=\Theta_0\cup\Theta_1.
$$

我们希望检验：

$$
H_0:\theta\in\Theta_0
$$

对：

$$
H_1:\theta\in\Theta_1.
$$

其中：

- $\Theta_0$ 是原假设参数空间；
- $\Theta_1$ 是备择假设参数空间。

例如，正态总体均值双侧检验：

$$
H_0:\mu=\mu_0,
\qquad
H_1:\mu\neq\mu_0.
$$

对应：

$$
\Theta_0=\{\mu_0\},
$$

$$
\Theta_1=(-\infty,\mu_0)\cup(\mu_0,+\infty).
$$

---

## 2.2 检验函数

一个随机化检验可以表示为：

$$
\varphi:\mathcal X\to[0,1].
$$

给定样本 $X=x$，以概率：

$$
\varphi(x)
$$

拒绝原假设。

如果：

$$
\varphi(x)\in\{0,1\},
$$

则是非随机化检验。

例如：

$$
\varphi(X)=I\{\bar X>c\}
$$

表示当样本均值超过临界值 $c$ 时拒绝原假设。

若：

$$
0<\varphi(x)<1,
$$

则表示观察到样本 $x$ 后，以该概率随机决定是否拒绝。

在讨论 UMP 与 UMPU 的一般理论时，允许随机化检验非常重要。

---

# 三、功效函数与显著性水平

## 3.1 功效函数的定义

给定检验函数 $\varphi$，定义：

$$
\boxed{
\beta_\varphi(\theta)
=
E_\theta[\varphi(X)].
}
$$

这称为功效函数（Power Function）。

它表示：

> 当真实参数为 $\theta$ 时，检验拒绝原假设的概率。

因此：

当：

$$
\theta\in\Theta_0
$$

时，功效函数表示第一类错误概率。

而当：

$$
\theta\in\Theta_1
$$

时，功效函数表示正确拒绝原假设的概率。

第二类错误概率则为：

$$
1-\beta_\varphi(\theta).
$$

---

## 3.2 检验水平

一个检验称为水平不超过 $\alpha$，如果：

$$
\boxed{
\sup_{\theta\in\Theta_0}
\beta_\varphi(\theta)
\leq\alpha.
}
$$

这里必须区分：

- 名义显著性水平 $\alpha$；
- 检验的实际大小（size）。

实际大小定义为：

$$
\alpha_\varphi
=
\sup_{\theta\in\Theta_0}
\beta_\varphi(\theta).
$$

水平为 $\alpha$ 通常表示：

$$
\alpha_\varphi\leq\alpha.
$$

不要求必然取等号。

例如：

$$
\alpha_\varphi=0.03
$$

的检验，也是一个水平为 $0.05$ 的检验。

但它的实际大小为 $0.03$。

后面讨论无偏检验时，需要注意教材采用的是哪一种约定。

---

# 四、MP：Neyman–Pearson 最强检验

## 4.1 简单假设对简单假设

考虑：

$$
H_0:\theta=\theta_0,
$$

$$
H_1:\theta=\theta_1.
$$

两个假设都只包含一个参数值。

假设两个分布具有密度或概率质量函数：

$$
f(x;\theta_0),
\qquad
f(x;\theta_1).
$$

Neyman–Pearson 引理告诉我们：

在所有水平不超过 $\alpha$ 的检验中，最强检验具有似然比形式。

即当：

$$
\frac{f(x;\theta_1)}
{f(x;\theta_0)}>k
$$

时拒绝原假设。

当似然比等于临界值时，可以进行随机化。

形式上：

$$
\boxed{
\varphi^*(x)=
\begin{cases}
1,&\dfrac{f(x;\theta_1)}{f(x;\theta_0)}>k,\\[6pt]
\gamma,&\dfrac{f(x;\theta_1)}{f(x;\theta_0)}=k,\\[6pt]
0,&\dfrac{f(x;\theta_1)}{f(x;\theta_0)}<k.
\end{cases}
}
$$

其中 $k,\gamma$ 用来控制检验水平。

---

## 4.2 MP 的含义

MP 是 Most Powerful 的缩写。

它只针对一个固定备择参数：

$$
\theta_1.
$$

即：

$$
\beta_{\varphi^*}(\theta_1)
\geq
\beta_\psi(\theta_1)
$$

对所有水平不超过 $\alpha$ 的检验 $\psi$ 成立。

注意：

**MP 不意味着对其他备择参数也最强。**

这是理解 UMP 的关键。

---

# 五、UMP 的严格定义

UMP 是 Uniformly Most Powerful 的缩写。

中文称为：

**一致最强检验。**

设：

$$
\mathcal C_\alpha
=
\left\{
\psi:
\sup_{\theta\in\Theta_0}
E_\theta[\psi(X)]\leq\alpha
\right\}.
$$

即所有水平不超过 $\alpha$ 的检验组成的集合。

如果：

$$
\varphi^*\in\mathcal C_\alpha
$$

且满足：

$$
\boxed{
\forall\psi\in\mathcal C_\alpha,
\quad
\forall\theta\in\Theta_1,
\quad
\beta_{\varphi^*}(\theta)
\geq\beta_\psi(\theta),
}
$$

则称 $\varphi^*$ 是 UMP 检验。

UMP 的核心是：

$$
\boxed{
\text{对所有备择参数同时最强}.
}
$$

这里有两个全称量词：

$$
\forall\psi,
\qquad
\forall\theta\in\Theta_1.
$$

它要求同一个检验在每一个备择参数处，都达到最大可能的功效。

这是一项非常强的要求。

---

# 六、UMP 与 NP 引理之间的关系

UMP 可以理解为：

**同一个检验同时解决了一整族 NP 最强检验问题。**

例如：

$$
H_0:\theta=\theta_0,
$$

$$
H_1:\theta>\theta_0.
$$

对于任意固定：

$$
\theta_1>\theta_0,
$$

先通过 NP 引理构造：

$$
H_0:\theta=\theta_0
$$

对：

$$
H_1:\theta=\theta_1
$$

的最强检验。

如果发现：

对于所有：

$$
\theta_1>\theta_0,
$$

所得的最强检验具有相同拒绝域，则这个检验很可能就是 UMP。

注意还需要检查水平约束。

这就是单调似然比（MLR）和 Karlin–Rubin 定理的重要意义。

它们提供了使不同备择参数对应的最强检验具有统一结构的条件。

---

# 七、无偏检验的定义

## 7.1 为什么检验也有“无偏”？

估计量的无偏性定义为：

$$
E_\theta[\widehat\theta]=\theta.
$$

但检验并不是参数估计量。

因此检验的无偏性不能理解为：

$$
E_\theta[\varphi(X)]=\theta.
$$

检验无偏性是关于功效函数的要求。

对于名义水平为 $\alpha$ 的检验，通常定义：

$$
\boxed{
\beta_\varphi(\theta)\geq\alpha,
\qquad
\forall\theta\in\Theta_1.
}
$$

并且检验本身必须满足：

$$
\sup_{\theta\in\Theta_0}
\beta_\varphi(\theta)\leq\alpha.
$$

直观地说：

> 备择假设成立时，拒绝原假设的概率不能低于名义显著性水平。

---

## 7.2 无偏性的另一种定义方式

有些教材使用：

$$
\boxed{
\inf_{\theta\in\Theta_1}
\beta_\varphi(\theta)
\geq
\sup_{\theta\in\Theta_0}
\beta_\varphi(\theta).
}
$$

这表示：

备择参数下的功效，至少不低于原假设参数下的最大拒绝概率。

这个定义使用检验的实际大小，而不是名义水平。

因此需要注意：

如果：

$$
\alpha_\varphi<\alpha,
$$

那么：

$$
\beta_\varphi(\theta)\geq\alpha_\varphi
$$

不一定能够推出：

$$
\beta_\varphi(\theta)\geq\alpha.
$$

这两种定义并不总是完全等价。

但当检验的实际大小恰好等于 $\alpha$ 时，两种条件一致。

**本文后续主要采用相对于名义水平 $\alpha$ 的标准无偏性定义。**

---

# 八、UMPU 的严格定义

UMPU 是 Uniformly Most Powerful Unbiased 的缩写。

中文称为：

**一致最强无偏检验。**

首先定义无偏检验类：

$$
\mathcal U_\alpha
=
\left\{
\varphi\in\mathcal C_\alpha:
\beta_\varphi(\theta)\geq\alpha,
\ \forall\theta\in\Theta_1
\right\}.
$$

显然：

$$
\boxed{
\mathcal U_\alpha\subseteq\mathcal C_\alpha.
}
$$

如果：

$$
\varphi^*\in\mathcal U_\alpha,
$$

而且：

$$
\boxed{
\forall\psi\in\mathcal U_\alpha,
\quad
\forall\theta\in\Theta_1,
\quad
\beta_{\varphi^*}(\theta)
\geq\beta_\psi(\theta),
}
$$

则称 $\varphi^*$ 为 UMPU 检验。

这里与 UMP 最大的不同是：

UMP 要求在全部水平 $\alpha$ 检验中最强。

UMPU 只要求在无偏检验类中最强。

---

# 九、核心命题一：UMP 一定是 UMPU

## 9.1 结论

在允许随机化检验、采用名义水平无偏性定义的框架下：

$$
\boxed{
\mathrm{UMP}\Longrightarrow\mathrm{UMPU}.
}
$$

这个结论看起来似乎很容易。

因为 UMP 在更大的集合中最强。

但有一个容易遗漏的问题：

**必须先证明 UMP 检验本身是无偏的。**

不能仅凭：

$$
\mathcal U_\alpha\subseteq\mathcal C_\alpha
$$

就跳过这一证明。

---

## 9.2 证明第一步：构造常数随机化检验

定义：

$$
\boxed{
\psi(X)\equiv\alpha.
}
$$

这意味着：

无论样本取什么值，都以概率 $\alpha$ 拒绝原假设。

它是一个合法的随机化检验。

其功效函数为：

$$
\beta_\psi(\theta)
=
E_\theta[\psi(X)]
=
E_\theta[\alpha]
=
\alpha.
$$

因此：

$$
\boxed{
\beta_\psi(\theta)=\alpha,
\qquad\forall\theta\in\Theta.
}
$$

所以：

$$
\psi\in\mathcal C_\alpha.
$$

---

## 9.3 第二步：利用 UMP 定义

假设：

$$
\varphi^*
$$

是 UMP 检验。

根据定义：

$$
\beta_{\varphi^*}(\theta)
\geq
\beta_\psi(\theta)
$$

对所有备择参数：

$$
\theta\in\Theta_1
$$

成立。

而：

$$
\beta_\psi(\theta)=\alpha.
$$

所以：

$$
\boxed{
\beta_{\varphi^*}(\theta)
\geq\alpha,
\qquad\forall\theta\in\Theta_1.
}
$$

这恰好就是无偏检验的定义。

因此：

$$
\boxed{
\varphi^*\in\mathcal U_\alpha.
}
$$

---

## 9.4 第三步：证明在无偏检验类中最强

由于 $\varphi^*$ 是 UMP：

$$
\beta_{\varphi^*}(\theta)
\geq
\beta_\psi(\theta)
$$

对所有：

$$
\psi\in\mathcal C_\alpha
$$

以及：

$$
\theta\in\Theta_1
$$

成立。

特别地，因为：

$$
\mathcal U_\alpha\subseteq\mathcal C_\alpha,
$$

上述不等式对所有：

$$
\psi\in\mathcal U_\alpha
$$

当然也成立。

所以 $\varphi^*$ 是 UMPU。

证毕。

---

## 9.5 本证明最值得积累的技巧

这里的关键并不是复杂计算，而是构造一个特殊的比较对象：

$$
\boxed{
\psi(X)\equiv\alpha.
}
$$

它具有恒定功效：

$$
\beta_\psi(\theta)=\alpha.
$$

所以任何 UMP 检验都必须至少与它一样强。

这就自然推出无偏性。

**注意：这一证明依赖允许随机化检验。**

如果只允许非随机化检验，常数检验 $\psi\equiv\alpha$ 在 $0<\alpha<1$ 时通常不属于允许的检验类，因此不能直接使用此证明。

---

# 十、核心命题二：UMPU 不一定是 UMP

结论：

$$
\boxed{
\mathrm{UMPU}
\centernot\Longrightarrow
\mathrm{UMP}.
}
$$

原因很简单：

UMPU 只在无偏检验类中最强。

但在全部水平 $\alpha$ 检验中，可能存在某个有偏检验，在某些备择参数处具有更高功效。

最经典的反例：

**正态总体均值的双侧检验。**

---

# 十一、反例一：正态均值双侧检验

## 11.1 模型

设：

$$
X_1,\ldots,X_n
\overset{iid}{\sim}N(\mu,\sigma^2),
$$

其中：

$$
\sigma^2>0
$$

已知。

考虑：

$$
\boxed{
H_0:\mu=\mu_0,
\qquad
H_1:\mu\neq\mu_0.
}
$$

这里的备择假设包含两个方向：

$$
\mu>\mu_0
$$

和：

$$
\mu<\mu_0.
$$

我们先证明：

**不存在 UMP 检验。**

再说明：

**存在 UMPU 检验。**

---

## 11.2 固定右侧备择参数

任取：

$$
\mu_1>\mu_0.
$$

考虑简单假设：

$$
H_0:\mu=\mu_0,
$$

$$
H_1:\mu=\mu_1.
$$

联合密度为：

$$
L(\mu;X)
=
(2\pi\sigma^2)^{-n/2}
\exp\left\{
-\frac1{2\sigma^2}
\sum_{i=1}^n(X_i-\mu)^2
\right\}.
$$

计算似然比：

$$
\frac{L(\mu_1;X)}
{L(\mu_0;X)}.
$$

取对数：

$$
\log\frac{L(\mu_1;X)}
{L(\mu_0;X)}
=
\frac{n(\mu_1-\mu_0)}{\sigma^2}\bar X
-
\frac{n(\mu_1^2-\mu_0^2)}{2\sigma^2}.
$$

由于：

$$
\mu_1-\mu_0>0,
$$

似然比关于 $\bar X$ 严格递增。

因此 NP 最强检验具有右尾形式：

$$
\boxed{
\varphi_+(X)
=
I\left\{
\bar X>
\mu_0+\frac{\sigma}{\sqrt n}z_{1-\alpha}
\right\}.
}
$$

---

## 11.3 固定左侧备择参数

现在任取：

$$
\mu_2<\mu_0.
$$

考虑：

$$
H_0:\mu=\mu_0,
$$

$$
H_1:\mu=\mu_2.
$$

此时：

$$
\mu_2-\mu_0<0.
$$

因此似然比关于 $\bar X$ 严格递减。

由 NP 引理，最强检验具有左尾形式：

$$
\boxed{
\varphi_-(X)
=
I\left\{
\bar X<
\mu_0+\frac{\sigma}{\sqrt n}z_\alpha
\right\}.
}
$$

---

## 11.4 为什么不存在 UMP？

假设存在水平为 $\alpha$ 的 UMP 检验：

$$
\varphi^*.
$$

那么它必须对所有右侧备择参数最强。

特别地，它必须是 $\mu_1$ 对应的 NP 最强检验。

由于正态模型下似然比连续，且临界边界的概率为零，该最强检验几乎处处唯一。

因此：

$$
\varphi^*=\varphi_+
\quad P_{\mu_0}\text{-a.s.}
$$

另一方面，它必须对左侧备择参数 $\mu_2$ 最强。

同理：

$$
\varphi^*=\varphi_-
\quad P_{\mu_0}\text{-a.s.}
$$

这意味着：

$$
\varphi_+=\varphi_-
\quad P_{\mu_0}\text{-a.s.}
$$

但对于：

$$
0<\alpha<1,
$$

左右两侧拒绝域不同，不可能几乎处处相同。

矛盾。

所以：

$$
\boxed{
\text{该双侧正态均值检验不存在 UMP}.
}
$$

这也是双侧检验通常难以具有 UMP 的原因。

---

# 十二、同一个问题为什么存在 UMPU？

考虑普通双侧 $Z$ 检验：

$$
\boxed{
\varphi_0(X)
=
I\left\{
\left|
\frac{\sqrt n(\bar X-\mu_0)}{\sigma}
\right|
>
z_{1-\alpha/2}
\right\}.
}
$$

这是一个等尾双侧检验。

它的功效函数可以写成：

$$
\beta_{\varphi_0}(\mu)
=
P_\mu\left(
\left|
\frac{\sqrt n(\bar X-\mu_0)}{\sigma}
\right|
>
z_{1-\alpha/2}
\right).
$$

记：

$$
\delta=\frac{\sqrt n(\mu-\mu_0)}{\sigma},
$$

$$
c=z_{1-\alpha/2}.
$$

则：

$$
\boxed{
\beta_{\varphi_0}(\mu)
=
\Phi(-c-\delta)+1-\Phi(c-\delta).
}
$$

---

## 12.1 证明它是水平 $\alpha$ 的检验

当：

$$
\mu=\mu_0,
$$

有：

$$
\delta=0.
$$

所以：

$$
\begin{aligned}
\beta_{\varphi_0}(\mu_0)
&=\Phi(-c)+1-\Phi(c)\\
&=2[1-\Phi(c)]\\
&=\alpha.
\end{aligned}
$$

因此其实际大小恰好等于 $\alpha$。

---

## 12.2 证明无偏性

对 $\delta$ 求导：

$$
\frac{d\beta}{d\delta}
=
-\phi(c+\delta)+\phi(c-\delta).
$$

其中：

$$
\phi(x)=\frac1{\sqrt{2\pi}}e^{-x^2/2}.
$$

当：

$$
\delta>0,
$$

因为：

$$
(c+\delta)^2>(c-\delta)^2,
$$

所以：

$$
\phi(c-\delta)>\phi(c+\delta).
$$

于是：

$$
\frac{d\beta}{d\delta}>0.
$$

当：

$$
\delta<0,
$$

由对称性：

$$
\frac{d\beta}{d\delta}<0.
$$

因此功效函数在：

$$
\delta=0
$$

处达到全局最小值。

所以：

$$
\boxed{
\beta_{\varphi_0}(\mu)\geq\alpha,
\qquad
\forall\mu\neq\mu_0.
}
$$

即 $\varphi_0$ 是无偏检验。

---

## 12.3 为什么它还是 UMPU？

注意：

**证明无偏性并不等于证明 UMPU。**

UMPU 还要求在全部无偏水平 $\alpha$ 检验中功效最强。

这一结论可以通过单参数指数族的 UMPU 检验理论证明。

对于已知方差的正态位置族，双侧等尾 $Z$ 检验确实是 UMPU。

其证明思路是：

首先将检验问题标准化为：

$$
T\sim N(\delta,1),
$$

检验：

$$
H_0:\delta=0,
\qquad
H_1:\delta\neq0.
$$

对于功效函数可微的无偏检验，原假设点必须满足：

$$
\beta(0)=\alpha,
$$

以及：

$$
\beta'(0)=0.
$$

第二个条件来自：

原假设参数是功效函数的局部极小点。

对于正态位置族：

$$
\beta'(0)=E_0[T\varphi(T)].
$$

所以无偏检验满足相应的矩约束：

$$
\boxed{
E_0[T\varphi(T)]=0.
}
$$

结合：

$$
E_0[\varphi(T)]=\alpha,
$$

利用带矩约束的 NP 型最优性定理，可以证明对每个固定的 $\delta\neq0$，两侧拒绝域：

$$
|T|>z_{1-\alpha/2}
$$

在满足上述约束的检验类中具有最大功效。

由于每个无偏水平 $\alpha$ 检验都必须满足这些约束，并且该双侧检验本身无偏，因此它是 UMPU。

严格的最优性证明需要使用广义 NP 引理或指数族的 UMPU 定理，而不能仅凭功效函数对称性得出。

最终：

$$
\boxed{
\begin{aligned}
&\text{正态均值双侧检验不存在 UMP},\\
&\text{但存在 UMPU}.
\end{aligned}
}
$$

因此：

$$
\boxed{
\mathrm{UMPU}
\centernot\Longrightarrow
\mathrm{UMP}.
}
$$

---

# 十三、为什么双侧检验通常不存在 UMP？

这与单调似然比性质有关。

考虑单参数统计模型：

$$
\{f(x;\theta):\theta\in\Theta\}.
$$

假设模型关于某个统计量 $T(X)$ 具有单调似然比性质。

对于右侧备择：

$$
H_1:\theta>\theta_0,
$$

似然比通常随着 $T(X)$ 增大而增大。

因此最强检验倾向于右尾拒绝：

$$
T(X)>c.
$$

而对于左侧备择：

$$
H_1:\theta<\theta_0,
$$

似然比的单调方向相反。

最强检验倾向于左尾拒绝：

$$
T(X)<c'.
$$

因此：

$$
\boxed{
\text{不同备择方向要求不同的最强拒绝域}.
}
$$

这就造成了冲突。

特别是在正态均值等常规连续模型中，左右两个最强拒绝域无法统一。

但这里有一个重要的逻辑区别：

$$
\boxed{
\text{双侧检验通常不存在 UMP}
}
$$

不等于：

$$
\boxed{
\text{双侧检验一定不存在 UMP}.
}
$$

下面专门构造反例。

---

# 十四、反例二：双侧检验也可能存在 UMP

## 14.1 构造离散统计模型

设参数空间：

$$
\Theta=\{-1,0,1\}.
$$

样本空间：

$$
\mathcal X=\{0,1,2\}.
$$

定义三个参数对应的概率分布：

| $X$ | $\theta=-1$ | $\theta=0$ | $\theta=1$ |
|---|---:|---:|---:|
| $0$ | $0.2$ | $0.8$ | $0.2$ |
| $1$ | $0.3$ | $0.1$ | $0.5$ |
| $2$ | $0.5$ | $0.1$ | $0.3$ |

可以检查，每列概率之和均为 $1$。

而且三个参数对应的分布互不相同。

因此这个模型在参数空间 $\Theta$ 上是可辨识的。

考虑双侧假设：

$$
\boxed{
H_0:\theta=0,
\qquad
H_1:\theta\neq0.
}
$$

也就是：

$$
H_1:\theta\in\{-1,1\}.
$$

取：

$$
\alpha=0.2.
$$

---

## 14.2 构造检验

考虑拒绝域：

$$
D=\{1,2\}.
$$

即：

$$
\boxed{
\varphi(X)=I\{X\neq0\}.
}
$$

原假设下：

$$
P_0(D)=0.1+0.1=0.2.
$$

因此该检验的实际大小恰好为：

$$
\alpha=0.2.
$$

---

## 14.3 验证它对 $\theta=1$ 最强

计算似然比：

$$
\frac{P_1(X=x)}{P_0(X=x)}.
$$

得到：

$$
\begin{array}{c|ccc}
x&0&1&2\\ \hline
P_1(x)/P_0(x)&0.25&5&3
\end{array}
$$

所以似然比从大到小的顺序为：

$$
x=1,\quad x=2,\quad x=0.
$$

由于：

$$
P_0(X\in\{1,2\})=0.2,
$$

根据 NP 引理，拒绝域：

$$
D=\{1,2\}
$$

是检验：

$$
H_0:\theta=0
$$

对：

$$
H_1:\theta=1
$$

的水平 $0.2$ 最强拒绝域。

---

## 14.4 验证它对 $\theta=-1$ 最强

同样计算：

$$
\frac{P_{-1}(X=x)}{P_0(X=x)}.
$$

得到：

$$
\begin{array}{c|ccc}
x&0&1&2\\ \hline
P_{-1}(x)/P_0(x)&0.25&3&5
\end{array}
$$

这次似然比从大到小为：

$$
x=2,\quad x=1,\quad x=0.
$$

虽然 $x=1$ 和 $x=2$ 的内部顺序发生变化，但是水平 $0.2$ 的最强拒绝域仍然是：

$$
D=\{1,2\}.
$$

因此同一个检验：

$$
\varphi(X)=I\{X\neq0\}
$$

同时对两个备择参数最强。

所以：

$$
\boxed{
\varphi\text{ 是 UMP 检验}.
}
$$

---

## 14.5 这个反例说明了什么？

注意这里的假设是双侧的：

$$
H_0:\theta=0,
\qquad
H_1:\theta\neq0.
$$

而且参数模型可辨识。

因此：

$$
\boxed{
\text{双侧检验并非必然不存在 UMP}.
}
$$

真正的关键在于：

> 不同备择参数对应的 NP 最强拒绝域能否统一。

如果可以统一，就可能存在 UMP。

如果无法统一，并且各备择点的最强检验具有唯一性，就不可能存在 UMP。

**因此判断 UMP 是否存在，应该分析似然比对应的最优拒绝域，而不是仅根据“双侧”二字下结论。**

---

# 十五、UMP 与 UMPU 的逻辑关系总结

定义：

$$
\mathcal C_\alpha
=
\{\text{全部水平不超过 }\alpha\text{ 的检验}\},
$$

$$
\mathcal U_\alpha
=
\{\text{水平不超过 }\alpha\text{ 的无偏检验}\}.
$$

显然：

$$
\mathcal U_\alpha\subseteq\mathcal C_\alpha.
$$

UMP 是在 $\mathcal C_\alpha$ 中一致最强。

UMPU 是在 $\mathcal U_\alpha$ 中一致最强。

由于常数随机化检验：

$$
\psi(X)\equiv\alpha
$$

的存在，UMP 检验必然无偏。

因此：

$$
\boxed{
\mathrm{UMP}\Longrightarrow\mathrm{UMPU}.
}
$$

而：

$$
\boxed{
\mathrm{UMPU}
\centernot\Longrightarrow
\mathrm{UMP}.
}
$$

反例就是：

已知方差的正态总体均值双侧检验。

它存在 UMPU，但不存在 UMP。

---

# 十六、UMPU 的一个重要必要条件

考虑：

$$
H_0:\theta=\theta_0,
\qquad
H_1:\theta\neq\theta_0.
$$

假设功效函数：

$$
\beta_\varphi(\theta)
$$

在 $\theta_0$ 处可微。

进一步假设：

$$
\beta_\varphi(\theta_0)=\alpha.
$$

如果检验无偏，则：

$$
\beta_\varphi(\theta)\geq\alpha
$$

对两侧备择参数成立。

于是：

$$
\theta_0
$$

是功效函数的局部极小点。

因此：

$$
\boxed{
\beta_\varphi'(\theta_0)=0.
}
$$

这是构造双侧 UMPU 检验时的重要条件。

---

## 16.1 与 Score 函数的联系

设样本密度为：

$$
f(x;\theta).
$$

则：

$$
\beta_\varphi(\theta)
=
\int\varphi(x)f(x;\theta)\,dx.
$$

在允许交换微分与积分的正则条件下：

$$
\begin{aligned}
\beta_\varphi'(\theta)
&=
\int\varphi(x)
\frac{\partial f(x;\theta)}{\partial\theta}\,dx\\
&=
\int\varphi(x)
f(x;\theta)
\frac{\partial\log f(x;\theta)}{\partial\theta}\,dx.
\end{aligned}
$$

定义 Score：

$$
U_\theta(X)
=
\frac{\partial}{\partial\theta}
\log f(X;\theta).
$$

于是：

$$
\boxed{
\beta_\varphi'(\theta)
=
E_\theta[
\varphi(X)U_\theta(X)
].
}
$$

所以无偏性的局部必要条件可以表示为：

$$
\boxed{
E_{\theta_0}[
\varphi(X)U_{\theta_0}(X)
]=0.
}
$$

这个条件非常重要。

它说明双侧无偏性约束与 Score 函数具有直接联系。

但需要注意：

这是一个必要条件，不是一般情形下的充分条件。

不能只根据：

$$
\beta'(\theta_0)=0
$$

就断言检验无偏。

更不能据此直接断言 UMPU。

---

# 十七、单侧检验与 MLR、Karlin–Rubin 定理

在单参数模型中，考虑：

$$
H_0:\theta\leq\theta_0,
$$

$$
H_1:\theta>\theta_0.
$$

如果统计量 $T(X)$ 具有单调似然比性质：

对于：

$$
\theta_2>\theta_1,
$$

似然比：

$$
\frac{f_T(t;\theta_2)}
{f_T(t;\theta_1)}
$$

关于 $t$ 单调不减。

那么在相应条件下，Karlin–Rubin 定理可以保证存在右尾形式的 UMP 检验：

$$
\boxed{
\varphi(X)=
I\{T(X)>c\}
+
\gamma I\{T(X)=c\}.
}
$$

其中 $c,\gamma$ 通过原假设边界处的水平条件确定。

因此在常见单侧问题中：

$$
\boxed{
\text{MLR}
\Longrightarrow
\text{统一的 NP 拒绝方向}
\Longrightarrow
\text{UMP}.
}
$$

但对双侧备择：

$$
H_1:\theta\neq\theta_0,
$$

右侧与左侧备择通常要求相反的拒绝方向。

这就是双侧问题中 UMP 难以存在的原因。

---

# 十八、UMP、UMPU、LRT 的区别

这三个概念不能混为一谈。

## 18.1 UMP 是最优性性质

UMP 回答：

> 是否存在一个检验，在所有水平 $\alpha$ 检验中，对每个备择参数都最强？

它并不直接指定统计量应该如何构造。

---

## 18.2 UMPU 也是最优性性质

UMPU 回答：

> 在所有无偏水平 $\alpha$ 检验中，是否存在一个对所有备择参数都最强的检验？

UMPU 的比较对象比 UMP 少。

因此有些不存在 UMP 的问题，可能存在 UMPU。

---

## 18.3 LRT 是检验构造方法

广义似然比统计量为：

$$
\Lambda(X)
=
\frac{
\sup_{\theta\in\Theta_0}L(\theta;X)
}{
\sup_{\theta\in\Theta}L(\theta;X)
}.
$$

通常当：

$$
\Lambda(X)
$$

足够小时拒绝原假设。

LRT 可以用于简单假设或复合假设。

在适当正则条件下，还可以使用 Wilks 定理：

$$
-2\log\Lambda(X)
\xrightarrow{d}\chi_r^2.
$$

但是：

$$
\boxed{
\text{LRT 不一定是 UMP，也不一定是 UMPU}.
}
$$

某些经典模型下，LRT 恰好与 UMP 或 UMPU 检验一致。

这需要具体证明，不能作为一般结论。

---

# 十九、常见易错点

## 易错点一：认为 UMP 和 UMPU 完全没有关系

错误。

因为：

$$
\boxed{
\mathrm{UMP}\Longrightarrow\mathrm{UMPU}.
}
$$

证明需要使用常数随机化检验。

---

## 易错点二：认为 UMPU 比 UMP 更强

错误。

UMPU 中虽然多了“无偏”这一要求，但它只在更小的检验类中比较功效。

因此 UMP 是更强的最优性要求。

---

## 易错点三：认为无偏检验就是估计量无偏

错误。

估计量无偏：

$$
E_\theta[\widehat\theta]=\theta.
$$

检验无偏：

$$
\beta_\varphi(\theta)\geq\alpha,
\qquad\theta\in\Theta_1.
$$

两者研究的是不同对象。

---

## 易错点四：认为双侧检验必然不存在 UMP

错误。

常见正态均值双侧检验确实不存在 UMP。

但某些特殊模型可以存在双侧 UMP。

关键是各个备择参数对应的最强拒绝域是否能够统一。

---

## 易错点五：证明无偏就等于证明 UMPU

错误。

无偏只要求：

$$
\beta_\varphi(\theta)\geq\alpha.
$$

UMPU 还要求：

$$
\beta_\varphi(\theta)\geq\beta_\psi(\theta)
$$

对所有其他无偏水平 $\alpha$ 检验 $\psi$ 成立。

---

## 易错点六：将 LRT 当作最优性定理

错误。

LRT 只是一种构造检验的原则。

是否具有 UMP 或 UMPU 性质，需要额外证明。

---

## 易错点七：忽略随机化检验的作用

在 UMP 推出 UMPU 的证明中，我们构造了：

$$
\psi(X)\equiv\alpha.
$$

这个检验是随机化检验。

如果题目限制只能使用非随机化检验，就不能直接照搬这一步。

---

# 二十、考试中如何判断 UMP 是否存在？

建议按照下面的步骤进行。

**第一步：判断假设的形式。**

如果是：

$$
H_0:\theta=\theta_0,
\qquad
H_1:\theta=\theta_1,
$$

优先使用 NP 引理。

如果是：

$$
H_0:\theta\leq\theta_0,
\qquad
H_1:\theta>\theta_0,
$$

考虑 MLR 和 Karlin–Rubin 定理。

如果是：

$$
H_0:\theta=\theta_0,
\qquad
H_1:\theta\neq\theta_0,
$$

应特别警惕 UMP 不存在的问题。

**第二步：固定不同备择参数。**

分别求：

$$
\theta_1>\theta_0
$$

和：

$$
\theta_2<\theta_0
$$

对应的 NP 最强检验。

**第三步：比较最强拒绝域。**

如果能够证明它们互相冲突且各自最强检验唯一，则不存在 UMP。

如果不同备择参数对应的最强检验可以统一，则可能存在 UMP。

**第四步：如果不存在 UMP，考虑 UMPU。**

此时常见工具包括：

- 指数族结构；
- 完全充分统计量；
- 无偏性约束；
- 条件检验；
- 广义 NP 最优性定理。

---

# 二十一、典型结论对照

| 问题 | UMP | UMPU |
|---|---|---|
| 正态均值单侧检验，方差已知 | 存在 | 存在 |
| 正态均值双侧检验，方差已知 | 不存在 | 存在 |
| Bernoulli 参数单侧检验 | 存在（允许随机化） | 存在 |
| Poisson 参数单侧检验 | 存在（允许随机化） | 存在 |
| 一般双侧复合假设 | 不保证 | 也不保证 |
| 本文构造的特殊离散双侧模型，$\alpha=0.2$ | 存在 | 存在 |

需要强调：

UMPU 并不是任何双侧检验都必然存在。

UMP 和 UMPU 的存在性都依赖具体统计模型及检验类。

---

# 二十二、四个命题的标准作答模板

## 命题（1）

若 $\varphi$ 是 UMP，则 $\varphi$ 一定是 UMPU。

**正确。**

构造常数随机化检验：

$$
\psi(X)\equiv\alpha.
$$

它属于水平 $\alpha$ 的检验类，且：

$$
\beta_\psi(\theta)=\alpha.
$$

由于 $\varphi$ 是 UMP：

$$
\beta_\varphi(\theta)\geq\alpha,
\qquad\forall\theta\in\Theta_1.
$$

所以 $\varphi$ 无偏。

又因为它在全部水平 $\alpha$ 检验中最强，所以在无偏检验类中也最强。

因此 $\varphi$ 是 UMPU。

---

## 命题（2）

若 $\varphi$ 是 UMPU，则 $\varphi$ 一定是 UMP。

**错误。**

反例：

$$
X_i\overset{iid}{\sim}N(\mu,\sigma^2),
$$

其中 $\sigma^2$ 已知。

考虑：

$$
H_0:\mu=\mu_0,
\qquad
H_1:\mu\neq\mu_0.
$$

双侧等尾 $Z$ 检验是 UMPU。

但左右两侧备择对应不同的 NP 最强拒绝域，因此不存在 UMP。

---

## 命题（3）

水平为 $\alpha$ 的检验，若：

$$
\beta_\varphi(\theta)\geq\alpha
$$

对所有备择参数成立，则它是无偏检验。

**正确。**

这是相对于名义水平 $\alpha$ 的无偏检验定义。

---

## 命题（4）

双侧检验一定不存在 UMP。

**错误。**

本文第十四节给出了可辨识的离散统计模型：

$$
\Theta=\{-1,0,1\},
$$

$$
H_0:\theta=0,
\qquad
H_1:\theta\neq0.
$$

在水平 $\alpha=0.2$ 下：

$$
\varphi(X)=I\{X\neq0\}
$$

同时是两个备择参数对应的 NP 最强检验。

因此它是 UMP。

---

# 二十三、最后总结

这部分知识最值得记住的逻辑结构是：

$$
\boxed{
\begin{array}{c}
\text{Neyman--Pearson}\\
\text{固定备择参数的最强检验}\\
\Downarrow\\
\text{UMP}\\
\text{对所有备择参数同时最强}\\
\Downarrow\\
\text{UMPU}\\
\text{在无偏检验类中同时最强}
\end{array}
}
$$

其中最后一个箭头表示：

$$
\boxed{
\mathrm{UMP}\Longrightarrow\mathrm{UMPU}.
}
$$

而反方向一般不成立。

对于双侧检验：

$$
\boxed{
\text{通常不存在 UMP，但某些模型仍可存在 UMP}.
}
$$

如果 UMP 不存在，可以进一步尝试构造 UMPU，但 UMPU 的存在性也不能无条件保证。

最重要的两个证明技巧是：

**技巧一：通过常数随机化检验证明 UMP 必然无偏。**

$$
\boxed{
\psi(X)\equiv\alpha
\quad\Longrightarrow\quad
\beta_{\mathrm{UMP}}(\theta)\geq\alpha.
}
$$

**技巧二：通过不同备择参数对应的 NP 最强拒绝域是否冲突，判断 UMP 能否存在。**

最后要记住：

> UMP 与 UMPU 是最优性概念，而 NP、MLR、Karlin–Rubin、广义 NP 和 LRT 是研究或构造检验的重要工具。区分最优性要求与检验构造方法，是掌握假设检验理论体系的关键。