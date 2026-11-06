
# 共轭梯度法（CG）与最速下降法的收敛性

> [!note] 学习提示（GPT）
> 本篇暂时作为优化方法复习笔记，后续需要重点研究：
> 1. CG 的 Krylov 子空间最优性如何严格证明。
> 2. 为什么 CG 的误差可以转化为多项式逼近问题。
> 3. Chebyshev 多项式如何构造，以及为什么能改善收敛速度。
> 4. CG 的搜索方向为什么能够保持 $A$-共轭性。
>
> 建议先掌握不使用 Chebyshev 多项式的弱收敛界，再研究经典加强版本。

## 一、问题背景与基本记号

考虑对称正定二次优化问题：

$$
\min_{x\in\mathbb R^n}f(x)
=\frac12x^TAx-b^Tx,
$$

其中 $A=A^T\succ0$。

最优解满足

$$
\nabla f(x_*)=Ax_*-b=0,
$$

因此

$$
x_*=A^{-1}b.
$$

设 $A$ 的特征值满足

$$
0<m=\lambda_{\min}(A)
\leq\lambda_i(A)
\leq\lambda_{\max}(A)=M.
$$

定义条件数

$$
\kappa=\frac{M}{m}.
$$

定义误差与 $A$-范数：

$$
e_k=x_k-x_*,
\qquad
\|x\|_A=\sqrt{x^TAx}.
$$

注意到

$$
f(x)-f(x_*)=\frac12\|x-x_*\|_A^2.
$$

因此，最小化二次函数等价于最小化误差的 $A$-范数。

---

## 二、三种典型收敛界

### 1. 固定步长梯度下降

考虑迭代

$$
x_{k+1}=x_k-\frac1M(Ax_k-b).
$$

由于

$$
e_{k+1}=\left(I-\frac AM\right)e_k,
$$

结合谱分解可得

$$
\boxed{
\|e_k\|_A
\leq
\left(1-\frac1\kappa\right)^k
\|e_0\|_A.
}
$$

这是比较容易证明的基础版本。

### 2. 最速下降法（精确线搜索）

对于

$$
x_{k+1}=x_k-\alpha_k\nabla f(x_k),
$$

其中 $\alpha_k$ 通过精确线搜索确定，有

$$
\boxed{
\|e_k\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A.
}
$$

其中收敛因子为

$$
q_{\mathrm{SD}}=\frac{\kappa-1}{\kappa+1}.
$$

不需要 Chebyshev 多项式。

### 3. 共轭梯度法（CG）

CG 的经典收敛界为

$$
\boxed{
\|e_k\|_A
\leq
2\left(
\frac{\sqrt\kappa-1}{\sqrt\kappa+1}
\right)^k
\|e_0\|_A.
}
$$

其中

$$
q_{\mathrm{CG}}
=\frac{\sqrt\kappa-1}{\sqrt\kappa+1}.
$$

证明需要利用 Krylov 子空间最优性和 Chebyshev 多项式。

另外，CG 也满足一个较弱的收敛界：

$$
\boxed{
\|e_k\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A.
}
$$

该版本完全不需要 Chebyshev 多项式。

注意：经典加强界前面有系数 $2$，因此不能仅比较两个收敛因子就断言加强界在每一个 $k$ 上都给出更小的数值上界。

---

## 三、最速下降法收敛性证明

### 1. 误差递推

由于

$$
g_k=\nabla f(x_k)=A(x_k-x_*)=Ae_k,
$$

最速下降迭代为

$$
x_{k+1}=x_k-\alpha_kg_k.
$$

因此

$$
e_{k+1}=(I-\alpha_kA)e_k.
$$

### 2. 利用精确线搜索的最优性

因为精确线搜索使二次函数沿当前方向取得最小值，所以

$$
\|e_{k+1}\|_A
=
\min_{\alpha\in\mathbb R}
\|(I-\alpha A)e_k\|_A.
$$

关键技巧：

**既然实际步长是最优的，那么可以人为选取一个方便计算的步长，得到误差上界。**

取

$$
\alpha=\frac{2}{M+m}.
$$

则

$$
\begin{aligned}
\|e_{k+1}\|_A
&\leq
\left\|
\left(I-\frac{2A}{M+m}\right)e_k
\right\|_A\\
&\leq
\max_{\lambda\in[m,M]}
\left|1-\frac{2\lambda}{M+m}\right|
\|e_k\|_A.
\end{aligned}
$$

由于

$$
\max_{\lambda\in[m,M]}
\left|1-\frac{2\lambda}{M+m}\right|
=
\frac{M-m}{M+m},
$$

所以

$$
\|e_{k+1}\|_A
\leq
\frac{M-m}{M+m}\|e_k\|_A.
$$

递推可得

$$
\boxed{
\|e_k\|_A
\leq
\left(\frac{M-m}{M+m}\right)^k
\|e_0\|_A.
}
$$

即

$$
\boxed{
\|e_k\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A.
}
$$

### 3. 重要解题技巧

这一证明可以总结为：

1. 将迭代转化为误差递推。
2. 利用精确线搜索的最优性构造上界。
3. 人为选择 $\alpha=2/(M+m)$。
4. 利用正定矩阵的谱分解估计算子范数。
5. 递推得到线性收敛界。

其中最重要的是第二步：**用一个容易分析的候选值估计最优化问题的最小值。**

---

## 四、共轭梯度法的算法原理

### 1. 为什么需要共轭方向？

最速下降法每一步都选择负梯度方向：

$$
d_k=-g_k.
$$

但相邻梯度方向可能出现反复修正，导致迭代缓慢。

CG 改为构造满足 $A$-共轭性的搜索方向：

$$
\boxed{
d_i^TAd_j=0,\qquad i\ne j.
}
$$

即在由 $A$ 定义的内积下，不同搜索方向互相正交。

这样可以避免在精确算术下反复破坏之前已经完成的方向优化。

### 2. CG 的方向更新公式

设

$$
g_k=Ax_k-b.
$$

初始方向为

$$
d_0=-g_0.
$$

后续方向采用

$$
\boxed{
d_{k+1}=-g_{k+1}+\beta_kd_k.
}
$$

其中 $\beta_k$ 用于保证方向的共轭性。

### 3. 步长的推导

沿 $d_k$ 进行精确线搜索：

$$
\alpha_k=\arg\min_\alpha f(x_k+\alpha d_k).
$$

展开二次函数：

$$
f(x_k+\alpha d_k)
=
f(x_k)
+\alpha g_k^Td_k
+\frac{\alpha^2}{2}d_k^TAd_k.
$$

令导数为零：

$$
g_k^Td_k+\alpha_kd_k^TAd_k=0.
$$

得到一般的精确线搜索公式：

$$
\boxed{
\alpha_k=
-\frac{g_k^Td_k}{d_k^TAd_k}.
}
$$

对于 CG，

$$
d_k=-g_k+\beta_{k-1}d_{k-1}.
$$

利用梯度与之前搜索方向的正交性：

$$
g_k^Td_{k-1}=0,
$$

得到

$$
g_k^Td_k=-g_k^Tg_k.
$$

因此

$$
\boxed{
\alpha_k=
\frac{g_k^Tg_k}{d_k^TAd_k}.
}
$$

### 4. 方向更新系数的推导

希望相邻方向满足

$$
d_{k+1}^TAd_k=0.
$$

由

$$
d_{k+1}=-g_{k+1}+\beta_kd_k,
$$

可得

$$
\beta_k=
\frac{g_{k+1}^TAd_k}{d_k^TAd_k}.
$$

又因为

$$
g_{k+1}=g_k+\alpha_kAd_k,
$$

所以

$$
Ad_k=\frac{g_{k+1}-g_k}{\alpha_k}.
$$

代入得到

$$
\beta_k
=
\frac{
g_{k+1}^T(g_{k+1}-g_k)
}{
\alpha_kd_k^TAd_k
}.
$$

利用 CG 的梯度正交性

$$
g_{k+1}^Tg_k=0,
$$

以及

$$
\alpha_kd_k^TAd_k=g_k^Tg_k,
$$

得到

$$
\boxed{
\beta_k=
\frac{g_{k+1}^Tg_{k+1}}{g_k^Tg_k}.
}
$$

这就是 Fletcher–Reeves（FR）公式。

> [!warning] 证明中需要注意
> 这里只是利用了 CG 的正交性和共轭性来推导简洁公式。
> 如果需要严格建立整个算法的理论，应进一步通过归纳证明：
> - 搜索方向两两 $A$-共轭；
> - 梯度两两正交；
> - 当前梯度与之前所有搜索方向正交。
>
> 不能把这些性质全部视为未经证明的前提。

### 5. CG 算法总结

初始化：

$$
g_0=Ax_0-b,\qquad d_0=-g_0.
$$

对于 $k=0,1,\ldots$：

**Step 1：计算步长**

$$
\alpha_k=\frac{g_k^Tg_k}{d_k^TAd_k}.
$$

**Step 2：更新迭代点**

$$
x_{k+1}=x_k+\alpha_kd_k.
$$

**Step 3：更新梯度**

$$
g_{k+1}=g_k+\alpha_kAd_k.
$$

如果 $g_{k+1}=0$，则停止。

**Step 4：更新系数**

$$
\beta_k=\frac{g_{k+1}^Tg_{k+1}}{g_k^Tg_k}.
$$

**Step 5：构造新方向**

$$
d_{k+1}=-g_{k+1}+\beta_kd_k.
$$

在精确算术下，CG 最多经过 $n$ 步达到精确解。

---

## 五、CG 收敛性的理论核心：Krylov 子空间

### 1. Krylov 子空间定义

令初始残差为

$$
r_0=b-Ax_0=-g_0.
$$

定义

$$
\boxed{
\mathcal K_k(A,r_0)
=
\operatorname{span}
\{r_0,Ar_0,\ldots,A^{k-1}r_0\}.
}
$$

CG 的一个根本性质是

$$
\boxed{
x_k=
\underset{x\in x_0+\mathcal K_k(A,r_0)}
{\arg\min}
\|x-x_*\|_A.
}
$$

即 CG 在第 $k$ 步得到的是相应 Krylov 仿射子空间内的最优近似。

### 2. 从向量最优化转化为多项式问题

由于

$$
r_0=b-Ax_0=-Ae_0,
$$

所以 Krylov 子空间中的任意向量都可以写成

$$
x=x_0+q_{k-1}(A)r_0,
$$

其中 $q_{k-1}$ 是次数不超过 $k-1$ 的多项式。

于是

$$
\begin{aligned}
x-x_*
&=e_0+q_{k-1}(A)r_0\\
&=e_0-q_{k-1}(A)Ae_0\\
&=\left[I-Aq_{k-1}(A)\right]e_0.
\end{aligned}
$$

定义

$$
p_k(t)=1-tq_{k-1}(t).
$$

则

$$
\deg p_k\leq k,\qquad p_k(0)=1.
$$

因此

$$
\boxed{
\|e_k\|_A
=
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\|p(A)e_0\|_A.
}
$$

这里 $\mathbb P_k$ 表示次数不超过 $k$ 的实系数多项式集合。

进一步利用 $A$ 的谱分解：

$$
\|p(A)e_0\|_A
\leq
\max_{\lambda\in[m,M]}|p(\lambda)|
\|e_0\|_A.
$$

得到

$$
\boxed{
\|e_k\|_A
\leq
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\max_{\lambda\in[m,M]}|p(\lambda)|
\|e_0\|_A.
}
$$

这是 CG 收敛性分析的核心公式。

> [!important] 核心理解
> CG 的收敛问题可以转化为一个多项式一致逼近问题：
>
> 在 $p(0)=1$ 的约束下，寻找一个次数不超过 $k$ 的多项式，使其在矩阵特征值区间 $[m,M]$ 上的最大绝对值尽可能小。

---

## 六、不使用 Chebyshev 的 CG 弱收敛界

从多项式最优性出发：

$$
\|e_k\|_A
=
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\|p(A)e_0\|_A.
$$

人为选取

$$
\boxed{
p(t)=\left(1-\frac{2t}{M+m}\right)^k.
}
$$

显然满足

$$
p(0)=1,\qquad\deg p\leq k.
$$

由最优性得到

$$
\begin{aligned}
\|e_k\|_A
&\leq
\left\|
\left(I-\frac{2A}{M+m}\right)^ke_0
\right\|_A\\
&\leq
\max_{\lambda\in[m,M]}
\left|1-\frac{2\lambda}{M+m}\right|^k
\|e_0\|_A.
\end{aligned}
$$

因为

$$
\max_{\lambda\in[m,M]}
\left|1-\frac{2\lambda}{M+m}\right|
=
\frac{M-m}{M+m},
$$

所以

$$
\boxed{
\|e_k\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A.
}
$$

这个证明非常值得掌握：

- 不需要 Chebyshev 多项式。
- 只依赖 Krylov 子空间最优性。
- 与最速下降法使用相同的谱估计技巧。
- 但无法体现 CG 的 $\sqrt\kappa$ 加速效果。

---

## 七、Chebyshev 多项式与 CG 的加强收敛界

### 1. 需要解决的逼近问题

由 CG 最优性：

$$
\|e_k\|_A
\leq
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\max_{\lambda\in[m,M]}|p(\lambda)|
\|e_0\|_A.
$$

因此我们希望求解

$$
\boxed{
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\max_{\lambda\in[m,M]}|p(\lambda)|.
}
$$

Chebyshev 多项式恰好提供了这个问题的最优解。

### 2. 第一类 Chebyshev 多项式

定义

$$
T_k(\cos\theta)=\cos(k\theta).
$$

其重要性质是

$$
|T_k(t)|\leq1,\qquad t\in[-1,1].
$$

当 $z>1$ 时，

$$
T_k(z)
=
\frac{
(z+\sqrt{z^2-1})^k+
(z-\sqrt{z^2-1})^k
}{2}.
$$

### 3. 将特征值区间映射到 $[-1,1]$

构造仿射映射

$$
s(t)=\frac{M+m-2t}{M-m}.
$$

则

$$
t\in[m,M]\Longrightarrow s(t)\in[-1,1].
$$

定义多项式

$$
\boxed{
p_k(t)=
\frac{
T_k\left(\frac{M+m-2t}{M-m}\right)
}{
T_k\left(\frac{M+m}{M-m}\right)
}.
}
$$

可以验证

$$
p_k(0)=1.
$$

并且

$$
\max_{t\in[m,M]}|p_k(t)|
=
\frac1{
T_k\left(\frac{M+m}{M-m}\right)
}.
$$

### 4. 计算 Chebyshev 上界

记

$$
z=\frac{M+m}{M-m}
=\frac{\kappa+1}{\kappa-1}>1,
$$

这里先考虑 $\kappa>1$。

令

$$
q=\frac{\sqrt\kappa-1}{\sqrt\kappa+1}.
$$

可以验证

$$
z+\sqrt{z^2-1}=q^{-1},
$$

以及

$$
z-\sqrt{z^2-1}=q.
$$

因此

$$
T_k(z)=\frac{q^{-k}+q^k}{2}.
$$

于是

$$
\begin{aligned}
\frac1{T_k(z)}
&=\frac2{q^{-k}+q^k}\\
&=\frac{2q^k}{1+q^{2k}}\\
&\leq 2q^k.
\end{aligned}
$$

最终得到

$$
\boxed{
\|e_k\|_A
\leq
2\left(
\frac{\sqrt\kappa-1}{\sqrt\kappa+1}
\right)^k
\|e_0\|_A.
}
$$

当 $\kappa=1$ 时，$A=mI$，CG 在至多一步内求得精确解，可单独处理。

> [!note] 后续深入研究
> 需要进一步理解 Chebyshev 多项式的等振荡性质，以及为什么上述构造在约束 $p(0)=1$ 下实现最佳一致逼近。
>
> 这是整个证明中最值得详细研究的理论部分。

---

## 八、两种算法的收敛速度比较

最速下降法的收敛因子为

$$
q_{\mathrm{SD}}
=\frac{\kappa-1}{\kappa+1}.
$$

当 $\kappa$ 很大时，

$$
q_{\mathrm{SD}}
=1-\frac2{\kappa+1}
\approx1-\frac2\kappa.
$$

CG 的经典收敛因子为

$$
q_{\mathrm{CG}}
=\frac{\sqrt\kappa-1}{\sqrt\kappa+1}.
$$

当 $\kappa$ 很大时，

$$
q_{\mathrm{CG}}
=1-\frac2{\sqrt\kappa+1}
\approx1-\frac2{\sqrt\kappa}.
$$

因此为保证相对 $A$-范数误差不超过 $\varepsilon$，对应最坏情况迭代次数上界的量级分别为

$$
\boxed{
k_{\mathrm{SD}}
=O\left(\kappa\log\frac1\varepsilon\right),
}
$$

$$
\boxed{
k_{\mathrm{CG}}
=O\left(\sqrt\kappa\log\frac1\varepsilon\right).
}
$$

这些是由相应收敛界给出的充分迭代次数估计，并非每个问题的实际迭代次数都达到该量级。

CG 的收敛优势来源于：

**CG 不只是沿当前梯度做最优化，而是在不断扩大的 Krylov 子空间中寻找最优近似，其误差多项式可以利用整个谱区间的信息。**

---

## 九、整体逻辑总结

### 最速下降法

$$
\text{梯度方向}
\longrightarrow
\text{精确线搜索}
\longrightarrow
\text{构造固定步长上界}
\longrightarrow
\text{谱分解}
\longrightarrow
O(\kappa\log(1/\varepsilon)).
$$

### 共轭梯度法

$$
\text{$A$-共轭方向}
\longrightarrow
\text{Krylov 子空间最优性}
\longrightarrow
\text{多项式最优化}.
$$

多项式最优化有两条证明路线。

**路线 A：弱化版本**

$$
p(t)=\left(1-\frac{2t}{M+m}\right)^k
$$

直接构造候选多项式，得到

$$
\|e_k\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A.
$$

**路线 B：加强版本**

使用 Chebyshev 多项式构造最佳一致逼近多项式，得到

$$
\|e_k\|_A
\leq
2\left(
\frac{\sqrt\kappa-1}{\sqrt\kappa+1}
\right)^k
\|e_0\|_A.
$$

---

## 十、后续自主研究任务

> [!todo] 建议下次深入研究时完成
>
> - [ ] 严格证明最速下降法的精确线搜索公式与收敛界。
> - [ ] 从 CG 的五个更新公式出发，严格证明梯度正交与搜索方向 $A$-共轭。
> - [ ] 证明 CG 在 Krylov 子空间中的最优性。
> - [ ] 独立推导 CG 误差的多项式表示。
> - [ ] 不使用 Chebyshev 多项式独立证明 CG 弱收敛界。
> - [ ] 学习 Chebyshev 多项式的递推关系、极值与等振荡性质。
> - [ ] 独立证明 CG 的经典加强收敛界。
> - [ ] 理解 CG 为什么在精确算术下最多 $n$ 步收敛。
> - [ ] 思考：为什么矩阵的特征值聚集时，CG 的实际收敛速度可能远快于仅由条件数预测的速度？

**最重要的三条结论：**

$$
\boxed{
\|e_k^{\mathrm{SD}}\|_A
\leq
\left(\frac{\kappa-1}{\kappa+1}\right)^k
\|e_0\|_A
}
$$

$$
\boxed{
\|e_k^{\mathrm{CG}}\|_A
\leq
\min_{\substack{p\in\mathbb P_k\\p(0)=1}}
\max_{\lambda\in[m,M]}|p(\lambda)|
\|e_0\|_A
}
$$

$$
\boxed{
\|e_k^{\mathrm{CG}}\|_A
\leq
2\left(
\frac{\sqrt\kappa-1}{\sqrt\kappa+1}
\right)^k
\|e_0\|_A
}
$$

其中第二个公式是理解 CG 收敛性理论的核心桥梁。
