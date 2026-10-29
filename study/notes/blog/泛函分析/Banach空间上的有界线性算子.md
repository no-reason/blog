# Banach 空间上的有界线性算子

**考试会考有界线性算子的范数具体是什么**

# Banach 空间上的有界线性算子

### 命题 1.1

若 $A, B \in \mathcal{L}(X, Y)$，$\alpha$ 是常数，则 $A + B, \alpha A \in \mathcal{L}(X, Y)$，而且

$$
\| A + B \| \leq \| A \| + \| B \|, \quad \| \alpha A \| = |\alpha| \| A \|.
$$

此外，$\| A \| = 0$ 当且仅当 $A = 0$，从而 $\mathcal{L}(X, Y)$ 按算子范数是赋范线性空间。

这里 $A + B, \alpha A$ 是逐点定义的：

$$
(A + B)x = Ax + Bx, \quad (\alpha A)x = \alpha (Ax), \quad \forall x \in X.
$$

---

### 命题 1.2

设 $X$ 是赋范线性空间，$Y$ 是 Banach 空间，则 $\mathcal{L}(X, Y)$ 也是 Banach 空间。

**证** 由命题 1.1，只须证明 $\mathcal{L}(X, Y)$ 是完备的。设 $\{ A_n \}_{n=1}^{\infty}$ 是 $\mathcal{L}(X, Y)$ 中 Cauchy 序列，则对任何 $x \in X$，从

$$
\| A_n x - A_m x \| \leq \| A_n - A_m \| \| x \|,
$$

可见 $\{ A_n x \}_{n=1}^{\infty}$ 是 $Y$ 中 Cauchy 序列。而 $Y$ 是完备的，故有唯一的 $y \in Y$，使 $\displaystyle \lim_{n \to \infty} A_n x = y$。现在定义 $Ax = y$。易见 $A$ 是线性的。因为赋范线性空间的 Cauchy 序列是有界的（参见第一章习题 6），故存在常数 $M > 0$，使 $\| A_n \| \leq M$，$n = 1, 2, \dots$。则

$$
\| Ax \| = \lim_{n \to \infty} \| A_n x \| \leq \lim_{n \to \infty} \| A_n \| \| x \| \leq M \| x \|.
$$

可见 $A \in \mathcal{L}(X, Y)$。又

$$
\begin{aligned}
\| A_n - A \| &= \sup_{\| x \| = 1} \| (A_n - A)x \| \\
&= \sup_{\| x \| = 1} \lim_{m \to \infty} \| (A_n - A_m)x \| \\
&= \lim_{m \to \infty} \sup_{\| x \| = 1} \| (A_n - A_m)x \| \\
&= \lim_{m \to \infty} \| A_n - A_m \| \to 0,
\end{aligned}
$$

当 $n \to \infty$。证毕。

对于 Banach 空间 $X$，$\mathcal{L}(X)$ 不仅是 Banach 空间，而且是个代数。因为对任何 $A, B \in \mathcal{L}(X)$，可如下定义乘法：

$$
(AB)x = A(Bx), \quad x \in X.
$$

---

### 命题 1.3

设 $A, B \in \mathcal{L}(X)$，则 $AB \in \mathcal{L}(X)$，且

$$
\| AB \| \leq \| A \| \| B \|.
$$

特别，对任意正整数 $n$

$$
\| A^n \| \leq \| A \|^n.
$$

---

### 命题 1.4

线性空间 $X$ 上的范数 $\| \cdot \|_1$ 与 $\| \cdot \|_2$ 等价的充分必要条件是存在正数 $r_1, r_2$ 使

$$
r_1 \leq \frac{\| x \|_2}{\| x \|_1} \leq r_2, \quad \text{当 } x \neq 0.
$$

---

### 命题 1.5

设 $X, Y$ 都是赋范线性空间，$A: X \to Y$ 是线性映射。那么 $A$ 是单射的，且定义在 $R(A)$ 上的算子 $A^{-1}$ 是连续的充分必要条件是存在常数 $m > 0$ 使

$$
\| Ax \| \geq m \| x \|, \quad \forall x \in X.
$$

**证** 先证充分性。显然 $Ax = 0$ 蕴含 $x = 0$，故 $A$ 是单射的，从而 $A^{-1}$ 是定义在 $R(A)$ 上的线性映射。设 $y = Ax$，则 $x = A^{-1}y$。由假设 $\| y \| \geq m \| A^{-1}y \|$，足见 $A^{-1}$ 是有界的。

条件还是必要的。否则，对每个正整数 $n$，有 $x_n \in X$，使

$$
\| A x_n \| < \frac{1}{n} \| x_n \|.
$$

设 $y_n = Ax_n$，则

$$
\| y_n \| < \frac{1}{n} \| A^{-1} y_n \|.
$$

可见 $A^{-1}$ 不是有界的，与假设 $A^{-1}$ 是连续的矛盾。证毕。




### 定理 1.1

设 $X$ 为 Banach 空间，$A \in \mathcal{L}(X)$，且 $\| A \| < 1$，则 $I - A$ 是有界可逆的，且

$$
(I - A)^{-1} = \sum_{n=0}^{\infty} A^n,
$$

$$
\| (I - A)^{-1} \| \leq \frac{1}{1 - \| A \|}.
$$

这里 $A^0 = I$ 是恒等算子。


### 定理 1.2

对任何 $A \in \mathcal{L}(X)$，

$$
\lim_{n \to \infty} \left( \| A^n \| \right)^{1/n} = \inf_{n} \left( \| A^n \| \right)^{1/n}.
$$

---

### 例 3

设 $K(s, t)$ 在 $a \leq s, t \leq b$ 上连续，对 $C[a, b]$ 上的 Volterra 积分算子

$$
(Vx)(s) = \int_a^s K(s, t) x(t) \, dt, \quad x = x(s) \in C[a, b],
$$

令 $\mu = \max_{a \leq s, t \leq b} |K(s, t)|$，则

$$
\begin{aligned}
|(Vx)(s)| &= \left| \int_a^s K(s, t) x(t) \, dt \right| \\
&\leq \int_a^s |K(s, t)| |x(t)| \, dt \\
&\leq \mu \| x \| (s - a),
\end{aligned}
$$

$$
\begin{aligned}
|(V^2 x)(s)| &= \left| \int_a^s K(s, t) (Vx)(t) \, dt \right| \\
&\leq \int_a^s |K(s, t)| |(Vx)(t)| \, dt \\
&\leq \int_a^s \mu \cdot \| x \| (t - a) \, dt \\
&= \mu^2 \| x \| \frac{(s - a)^2}{2!},
\end{aligned}
$$

一般地

$$
|(V^n x)(s)| \leq \mu^n \| x \| \frac{(s - a)^n}{n!}, \quad n = 1, 2, \dots.
$$

从而

$$
\begin{aligned}
\| V^n x \| &= \max_{a \leq s \leq b} |(V^n x)(s)| \\
&\leq \mu^n \| x \| \frac{(b - a)^n}{n!}, \quad n = 1, 2, \dots.
\end{aligned}
$$

故

$$
\| V^n \| \leq \mu^n \frac{(b - a)^n}{n!}, \quad n = 1, 2, \dots.
$$

因为 $(n!)^{1/n} \to \infty$，当 $n \to \infty$。故

$$
\lim_{n \to \infty} \| V^n \|^{1/n} = 0.
$$