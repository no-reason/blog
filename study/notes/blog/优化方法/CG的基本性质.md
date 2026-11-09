# 共轭梯度法（CG）的基本性质

> 本篇只整理 CG 在**对称正定二次函数 + 精确线搜索**设定下的几条核心代数性质，以及步长 $\alpha_k$、系数 $\beta_k$（Fletcher–Reeves）的推导。
> 这些性质是后续收敛性分析（Krylov 子空间最优性、多项式逼近）的基础，应当先用归纳法严格建立，而不是当作未经证明的前提。

## 一、问题与符号

考虑对称正定二次优化问题

$$
\min_{x\in\mathbb R^n}f(x)
=\frac12x^TAx-b^Tx,
\qquad A=A^T\succ0.
$$

记

$$
g_k=\nabla f(x_k)=Ax_k-b,\qquad
r_k=b-Ax_k=-g_k.
$$

**残差 $r_k$ 与梯度 $g_k$ 只差一个负号**，二者在 CG 的推导中等价。

CG 的搜索方向记为 $d_k$（也常记作 $p_k$），迭代为

$$
x_{k+1}=x_k+\alpha_kd_k,
$$

其中 $\alpha_k$ 由沿 $d_k$ 的精确线搜索确定。

---

## 二、CG 的五个基本性质

在精确线搜索下，CG 产生的序列满足以下性质（下标按 $i,j\leq k$ 计）：

1. **梯度（残差）两两正交**
   $$
   g_{k+1}^Tg_i=0,\qquad g_{k+1}^Tr_i=0.
   $$
   （即"残差正交性"：残差是梯度的相反数，故梯度也两两正交。）

2. **搜索方向两两 $A$-共轭**
   $$
   d_{k+1}^TAd_i=0.
   $$

3. **梯度与所有前面的搜索方向正交**
   $$
   g_{k+1}^Td_i=0.
   $$

4. **FR 系数公式**
   $$
   \beta_{k+1}=\frac{\|g_{k+1}\|^2}{\|g_k\|^2}.
   $$

5. **最优性**
   $$
   x^{k+1}=\arg\min\bigl\{f(x)\mid x\in x^1+\operatorname{span}\{d^1,\dots,d^k\}\bigr\}.
   $$

> 性质 1、2、3 之间并非独立：由 $d_{k+1}=-g_{k+1}+\beta_kd_k$ 与 $A$-共轭性，可推出梯度与前面方向的正交性，二者都由归纳法严格建立。

---

## 三、步长 $\alpha_k$ 的推导（精确线搜索）

沿方向 $d_k$ 做精确线搜索：

$$
\alpha_k=\arg\min_{\alpha}f(x_k+\alpha d_k).
$$

展开二次函数并令导数为零，得到一般公式

$$
\boxed{
\alpha_k=-\frac{g_k^Td_k}{d_k^TAd_k}.
}
$$

记 $p_k$ 为 CG 在 $x_k$ 处的"纯梯度部分"（即 $d_k$ 中与 $-g_k$ 对应、不与前面方向重叠的分量），且 $d_k$ 可写成

$$
d_k=-p_k+(\text{前面方向的线性组合}).
$$

由于**梯度与所有前面的搜索方向正交**（$g_k^Td_i=0$），前面方向部分对 $g_k^Td_k$ 没有贡献，故

$$
g_k^Td_k
=g_k^T(-p_k)
=-(p_k^Tp_k).
$$

代入一般公式得 CG 专用步长

$$
\boxed{
\alpha_k=\frac{p_k^Tp_k}{d_k^TAd_k}
=\frac{g_k^Tg_k}{d_k^TAd_k}.
}
$$

（最后一步用 $p_k=g_k$ 的实质成分，即梯度方向的内积。）

---

## 四、系数 $\beta_k$ 的推导（Fletcher–Reeves）

CG 方向更新式为

$$
d_{k+1}=-g_{k+1}+\beta_kd_k.
$$

要求相邻方向满足 $A$-共轭：

$$
d_{k+1}^TAd_k=0.
$$

代入 $d_{k+1}$ 得

$$
(-g_{k+1}+\beta_kd_k)^TAd_k=0
\quad\Longrightarrow\quad
\beta_k=\frac{g_{k+1}^TAd_k}{d_k^TAd_k}.
$$

利用梯度更新关系

$$
g_{k+1}=g_k+\alpha_kAd_k
\quad\Longrightarrow\quad
Ad_k=\frac{g_{k+1}-g_k}{\alpha_k},
$$

代入上式：

$$
\beta_k
=\frac{g_{k+1}^T(g_{k+1}-g_k)}{\alpha_k\,d_k^TAd_k}.
$$

再由以下两个正交关系

$$
g_{k+1}^Tg_k=0,\qquad g_{k+1}^Td_k=0,
$$

以及步长公式给出的 $\alpha_k\,d_k^TAd_k=g_k^Tg_k$，得到

$$
\beta_k
=\frac{g_{k+1}^Tg_{k+1}}{g_k^Tg_k}
=\boxed{\frac{\|g_{k+1}\|^2}{\|g_k\|^2}}.
$$

这就是 **Fletcher–Reeves（FR）公式**。

---

## 五、CG 算法速查（梯度符号版）

初始化：

$$
g_0=Ax_0-b,\qquad d_0=-g_0.
$$

对 $k=0,1,\dots$：

$$
\begin{aligned}
&\text{Step 1（步长）}&&
\alpha_k=\frac{g_k^Tg_k}{d_k^TAd_k},\\[4pt]
&\text{Step 2（迭代点）}&&
x_{k+1}=x_k+\alpha_kd_k,\\[4pt]
&\text{Step 3（梯度）}&&
g_{k+1}=g_k+\alpha_kAd_k,\\[4pt]
&\text{Step 4（系数）}&&
\beta_k=\frac{g_{k+1}^Tg_{k+1}}{g_k^Tg_k},\\[4pt]
&\text{Step 5（新方向）}&&
d_{k+1}=-g_{k+1}+\beta_kd_k.
\end{aligned}
$$

若 $g_{k+1}=0$ 则停止（精确算术下至多 $n$ 步收敛到精确解）。

> 残差符号版（$r_k=b-Ax_k=-g_k$，$p_k=d_k$）只需把上式的 $g$ 全部替换为 $-r$、$d$ 替换为 $p$ 即可：
> $$
> \alpha_k=\frac{r_k^Tr_k}{p_k^TAp_k},\qquad
> r_{k+1}=r_k-\alpha_kAp_k,\qquad
> \beta_k=\frac{r_{k+1}^Tr_{k+1}}{r_k^Tr_k},\qquad
> p_{k+1}=r_{k+1}+\beta_kp_k.
> $$

---

## 六、与收敛分析笔记的对照

本文的"梯度符号版"对应 `SD和CG的收敛速度分析.md` 第四节；"残差符号版"对应 `数值代数/线性方程组的直接解法.md` 与 `数值代数/共轭梯度法.md` 中的算法 5.2.1。三者公式等价，仅符号体系不同（残差 = 负梯度）。
