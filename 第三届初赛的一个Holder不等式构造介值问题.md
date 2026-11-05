# 一道非负连续函数乘积的存在性不等式

## 一、题目

设 $f_1,f_2,\cdots,f_n$ 为 $[0,1]$ 上的非负连续函数，证明：存在 $\xi\in[0,1]$，使得

$$
\boxed{
\prod_{k=1}^n f_k(\xi)
\leq
\prod_{k=1}^n\int_0^1 f_k(x)\,dx.
}
$$

## 二、思路分析

### 1. 从存在性转化为积分不等式

对于连续函数 $F$，若能证明

$$
\int_0^1F(x)\,dx\leq C,
$$

则必然存在 $\xi\in[0,1]$，满足

$$
F(\xi)\leq C.
$$

因此，本题最自然的想法是考虑证明

$$
\int_0^1\prod_{k=1}^nf_k(x)\,dx
\leq
\prod_{k=1}^n\int_0^1f_k(x)\,dx.
$$

但是这个不等式一般不成立。

例如取 $n=2$，$f_1(x)=f_2(x)=x$，则

$$
\int_0^1x^2\,dx=\frac13
>
\frac14
=
\left(\int_0^1x\,dx\right)^2.
$$

这说明**不能直接用乘积函数的积分来控制各函数积分的乘积**。

但原题仅要求存在一个点满足不等式，并不要求乘积函数的积分满足上述不等式。

所以我们需要寻找一个更合适的辅助函数。

### 2. 为什么考虑开 $n$ 次方？

注意到右侧是 $n$ 个积分的乘积，可以考虑构造几何平均函数

$$
G(x)=\left(\prod_{k=1}^nf_k(x)\right)^{1/n}.
$$

如果能够证明

$$
\boxed{
\int_0^1G(x)\,dx
\leq
\left(\prod_{k=1}^n\int_0^1f_k(x)\,dx\right)^{1/n},
}
$$

则由连续性，存在 $\xi$，使得

$$
G(\xi)
\leq
\left(\prod_{k=1}^n\int_0^1f_k(x)\,dx\right)^{1/n}.
$$

两边取 $n$ 次方即可得到原命题。

而这个积分不等式恰好可以利用 **Hölder 不等式**证明。

## 三、证明一：广义 Hölder 不等式

广义 Hölder 不等式指出：若

$$
p_k>1,\qquad
\sum_{k=1}^n\frac1{p_k}=1,
$$

则

$$
\int_0^1\prod_{k=1}^n|g_k(x)|\,dx
\leq
\prod_{k=1}^n
\left(\int_0^1|g_k(x)|^{p_k}\,dx\right)^{1/p_k}.
$$

当 $n\geq2$ 时，取

$$
p_1=p_2=\cdots=p_n=n,
\qquad
g_k(x)=f_k(x)^{1/n}.
$$

由 $f_k$ 非负连续，所有函数均满足 Hölder 不等式的可积条件。

于是

$$
\begin{aligned}
\int_0^1\left(\prod_{k=1}^nf_k(x)\right)^{1/n}\,dx
&=\int_0^1\prod_{k=1}^nf_k(x)^{1/n}\,dx\\
&\leq
\prod_{k=1}^n
\left(\int_0^1f_k(x)\,dx\right)^{1/n}\\
&=
\left(\prod_{k=1}^n\int_0^1f_k(x)\,dx\right)^{1/n}.
\end{aligned}
$$

由于

$$
G(x)=\left(\prod_{k=1}^nf_k(x)\right)^{1/n}
$$

在 $[0,1]$ 上连续，根据积分中值定理，存在 $\xi\in[0,1]$，使得

$$
G(\xi)=\int_0^1G(x)\,dx.
$$

因此

$$
\left(\prod_{k=1}^nf_k(\xi)\right)^{1/n}
\leq
\left(\prod_{k=1}^n\int_0^1f_k(x)\,dx\right)^{1/n}.
$$

两边取 $n$ 次方，即得

$$
\boxed{
\prod_{k=1}^nf_k(\xi)
\leq
\prod_{k=1}^n\int_0^1f_k(x)\,dx.
}
$$

当 $n=1$ 时，直接由积分中值定理即可。

证毕。

## 四、证明二：归一化 + 算术—几何平均不等式

这个方法更加初等，也更容易解释几何平均的构造动机。

首先记

$$
a_k=\int_0^1f_k(x)\,dx.
$$

如果某个 $a_k=0$，由于 $f_k$ 非负连续，必有 $f_k\equiv0$，结论显然成立。

因此只需考虑所有 $a_k>0$ 的情况。

令

$$
g_k(x)=\frac{f_k(x)}{a_k}.
$$

于是

$$
\int_0^1g_k(x)\,dx=1,\qquad k=1,\ldots,n.
$$

原命题等价于证明存在 $\xi$，使得

$$
\prod_{k=1}^ng_k(\xi)\leq1.
$$

对任意 $x\in[0,1]$，由算术—几何平均不等式，

$$
\left(\prod_{k=1}^ng_k(x)\right)^{1/n}
\leq
\frac1n\sum_{k=1}^ng_k(x).
$$

两边积分，得到

$$
\begin{aligned}
\int_0^1\left(\prod_{k=1}^ng_k(x)\right)^{1/n}\,dx
&\leq
\frac1n\sum_{k=1}^n\int_0^1g_k(x)\,dx\\
&=\frac1n\sum_{k=1}^n1\\
&=1.
\end{aligned}
$$

根据连续性，必然存在 $\xi\in[0,1]$，使得

$$
\left(\prod_{k=1}^ng_k(\xi)\right)^{1/n}\leq1.
$$

因此

$$
\prod_{k=1}^ng_k(\xi)\leq1.
$$

代回 $g_k=f_k/a_k$，即得

$$
\prod_{k=1}^nf_k(\xi)
\leq
\prod_{k=1}^na_k
=
\prod_{k=1}^n\int_0^1f_k(x)\,dx.
$$

证毕。

## 五、从泛函分析理解：为什么必须进行幂次变换？

### 1. 直接积分为何失败？

对于 $L^1$ 范数，一般不存在如下乘法不等式：

$$
\left\|\prod_{k=1}^nf_k\right\|_1
\leq
\prod_{k=1}^n\|f_k\|_1.
$$

原因是 $L^1$ 空间并不满足这种乘积范数估计。

但广义 Hölder 不等式提供了另一种结构：

$$
\left\|\prod_{k=1}^ng_k\right\|_1
\leq
\prod_{k=1}^n\|g_k\|_{p_k},
\qquad
\sum_{k=1}^n\frac1{p_k}=1.
$$

因此，我们需要让函数的幂次和范数指数相互匹配。

### 2. 从 $L^1$ 到 $L^n$ 的变换

注意到

$$
\boxed{
\|f_k^{1/n}\|_n
=
\left(\int_0^1f_k(x)\,dx\right)^{1/n}
=
\|f_k\|_1^{1/n}.
}
$$

这说明将 $f_k$ 开 $n$ 次方，恰好可以将原来的 $L^1$ 范数转化为 $L^n$ 范数。

于是

$$
\begin{aligned}
\left\|\prod_{k=1}^nf_k^{1/n}\right\|_1
&\leq
\prod_{k=1}^n\|f_k^{1/n}\|_n\\
&=
\prod_{k=1}^n\|f_k\|_1^{1/n}.
\end{aligned}
$$

这正是所需要的积分不等式。

因此，开 $n$ 次方并非偶然的代数技巧，而是为了满足 Hölder 不等式的指数匹配条件：

$$
\boxed{
\underbrace{\frac1n+\frac1n+\cdots+\frac1n}_{n\text{ 项}}=1.
}
$$

更一般地，对于非负可积函数，若 $\alpha_k>0$ 且

$$
\sum_{k=1}^n\alpha_k=1,
$$

由加权 Hölder 不等式可得

$$
\boxed{
\int_0^1\prod_{k=1}^nf_k(x)^{\alpha_k}\,dx
\leq
\prod_{k=1}^n
\left(\int_0^1f_k(x)\,dx\right)^{\alpha_k}.
}
$$

本题正是取 $\alpha_k=1/n$ 的特殊情况。

### 3. 还可以用 Jensen 不等式统一理解

考虑多元几何平均函数

$$
\Phi(x_1,\ldots,x_n)
=
(x_1x_2\cdots x_n)^{1/n}.
$$

它在非负正交象限上是凹函数。

由多元 Jensen 不等式，

$$
\mathbb E[\Phi(Y_1,\ldots,Y_n)]
\leq
\Phi(\mathbb EY_1,\ldots,\mathbb EY_n).
$$

取 $X\sim U(0,1)$，令 $Y_k=f_k(X)$，便得到

$$
\int_0^1\left(\prod_{k=1}^nf_k(x)\right)^{1/n}dx
\leq
\left(\prod_{k=1}^n\int_0^1f_k(x)\,dx\right)^{1/n}.
$$

因此，本题中的 Hölder、AM-GM 和 Jensen 三种方法，本质上反映了同一个几何平均不等式。

## 六、解题经验总结

**1. 存在性不等式优先考虑积分平均。**

如果要证明

$$
\exists\xi,\qquad F(\xi)\leq C,
$$

通常可以尝试寻找辅助函数 $G$ 和递增变换 $\varphi$，满足

$$
G(x)=\varphi(F(x)),
\qquad
\int_0^1G(x)\,dx\leq\varphi(C).
$$

然后利用积分中值定理或反证法得到结论。

**2. 函数乘积的积分不等式优先检查 Hölder 指数匹配。**

不能直接估计

$$
\int\prod f_k
$$

时，考虑能否通过幂次变换构造

$$
\int\prod f_k^{\alpha_k},
\qquad
\sum_{k=1}^n\alpha_k=1.
$$

**3. 右侧出现多个积分的乘积时，可以尝试归一化。**

将函数变换为

$$
g_k=\frac{f_k}{\int f_k},
\qquad \int g_k=1,
$$

从而把目标简化为证明某个乘积在一点不超过 $1$，再尝试 AM-GM、Hölder 或反证法。

**核心思想：**

> 当直接积分不等式不成立时，可以通过适当的幂次变换，构造一个适合应用 Hölder 不等式的辅助函数，再利用连续性将积分估计转化为点态存在性结论。

**知识点标签：** `CMC` `数学分析` `积分中值定理` `Hölder不等式` `AM-GM` `Jensen不等式` `Lp空间` `存在性证明`