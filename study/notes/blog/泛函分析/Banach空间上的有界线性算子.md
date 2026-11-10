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

(这个关于\lim 和sup 为什么能换序的问题请教了一下老师,老师说是因为$\|A_{n}x-A_{m}x\|\leq \|A_{n}-A_{m}\|\|x\|$具有某种一致性所以才能换序.这个课后还需要再理解一下).

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


**证** 记 $ r = \inf_{n} \left( \| A^n \| \right)^{1/n} $。显然 $ \lim_{n \to \infty} \left( \| A^n \| \right)^{1/n} \geq r $，为此只须求证
\[
\varlimsup_{n \to \infty} \left( \| A^n \| \right)^{1/n} \leq r.
\]

根据下确界定义，任给 $ \varepsilon > 0 $，必有正整数 $ m $，使
\[
\| A^m \|^{1/m} < r + \varepsilon.
\]

对任何正整数 $ n $，必有非负整数 $ k, j $（$ 0 \leq j < m $），使 $ n = km + j $。于是由命题 1.3 可得
\[
\| A^n \| \leq \| A^{km} \| \| A^j \| \leq \| A^m \|^k \| A \|^j,
\]
从而
\[
\| A^n \|^{1/n} \leq \| A^m \|^{k/n} \| A \|^{j/n} \leq (r + \varepsilon)^{km/n} \| A \|^{j/n}.
\]

注意到 $ \frac{km}{n} \to 1 $，$ \frac{j}{n} \to 0 $（当 $ n \to \infty $），故
\[
\varlimsup_{n \to \infty} \| A^n \|^{1/n} \leq r + \varepsilon.
\]

因 $ \varepsilon $ 是任意的，即得所欲证不等式。证毕。


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

$
\begin{aligned}
&A_{n}\to A,B_{n}\to B in L(X),\alpha _{n}\to \alpha \in C\\
&A_{n}+B_{n}\to A+B,\alpha _{n}A_{n}\to \alpha A in L(X)\\
&A_{n}B_{n}\to AB in L(X)\\
&若A_{n}^{-1}存在,A^{-1}存在,则A_{n}^{-1}\to A^{-1} in L(X)\\
\end{aligned}
$


**命题 1.6** 对有界可逆的 $ A \in L(X) $，其逆 $ A^{-1} $ 是 $ A $ 的连续函数，而且 $ L(X) $ 中全体有界可逆元形成一个开集。

**证** 设 $ A_0 \in L(X) $ 是有界可逆的，从
\[
A = A_0 - (A_0 - A) = A_0 \left[ I - A_0^{-1}(A_0 - A) \right]
\]
及习题 5 可知，当 $ \| A_0 - A \| $ 充分小时，$ A $ 也是有界可逆的，且
\[
\begin{aligned}
A^{-1} &= \left[ I - A_0^{-1}(A_0 - A) \right]^{-1} A_0^{-1} \\
&= A_0^{-1} + \sum_{n=1}^{\infty} \left[ A_0^{-1}(A_0 - A) \right]^n A_0^{-1}.
\end{aligned}
\]
因为当 $ \| A_0 - A \| $ 充分小时，$ \| A_0^{-1}(A_0 - A) \| < 1 $，根据定理 1.1，$ I - A_0^{-1}(A_0 - A) $ 有界可逆，且上式右端级数收敛。于是
\[
\begin{aligned}
\| A^{-1} - A_0^{-1} \| &\leq \sum_{n=1}^{\infty} \left\| \left[ A_0^{-1}(A_0 - A) \right]^n \right\| \left\| A_0^{-1} \right\| \\
&\leq \frac{ \| A_0^{-1}(A_0 - A) \| \| A_0^{-1} \| }{ 1 - \| A_0^{-1}(A_0 - A) \| } \\
&\leq \frac{ \| A_0^{-1} \|^2 }{ 1 - \| A_0^{-1} \| \| A_0 - A \| } \| A_0 - A \|.
\end{aligned}
\]
由此可见 $ A^{-1} $ 是 $ A $ 的连续函数。证毕。


## Hahn-Banach 定理


**定理 2.1（Banach 扩张定理，1929）** 设 $ f(x) $ 是实线性空间 $ X $ 中线性流形 $ G $ 上的实线性泛函，如果有 $ X $ 上的实值泛函 $ p(x) $，使

(1) $ p(x + y) \leq p(x) + p(y) $，$ p(tx) = tp(x) $，当 $ x, y \in X $，$ t \geq 0 $；

(2) $ f(x) \leq p(x) $，当 $ x \in G $，

则存在 $ X $ 上的实线性泛函 $ F(x) $，使

\[
F(x) = f(x), \quad \text{当 } x \in G,
\]

且

\[
F(x) \leq p(x), \quad \text{当 } x \in X.
\]


**证** 若 $ G = X $，定理是显然的，下面假定 $ G \neq X $。设 $ x_0 \in X \setminus G $，考虑如下形式的点集：
\[
\mathcal{M} = \{ \lambda x_0 + x : \lambda \text{ 是实数}, x \in G \}.
\]
它是包含 $ x_0 $ 与 $ G $ 的最小线性流形。先往证在 $ \mathcal{M} $ 上存在实线性泛函 $ F_1(x) $，使
\[
\begin{cases}
F_1(x) = f(x), & \text{当 } x \in G, \\
F_1(x) \leq p(x), & \text{当 } x \in \mathcal{M}.
\end{cases} \tag{2.3}
\]

设 $ F_1(x_0) = r_0 $（待定）。根据对 $ F_1 $ 的要求，必须
\[
F_1(\lambda x_0 + x) = \lambda F_1(x_0) + f(x) \leq p(\lambda x_0 + x), \quad \text{当 } \lambda \in \mathbb{R}, x \in G.
\]
因此
\[
\lambda r_0 \leq p(\lambda x_0 + x) - f(x) \tag{2.4}
\]
对一切 $ \lambda \neq 0, x \in G $ 都成立。以下分两种情况来讨论：

当 $ \lambda > 0 $，
\[
\begin{aligned}
r_0 &\leq \frac{1}{\lambda} \left[ p(\lambda x_0 + x) - f(x) \right] \\
&= p\left( x_0 + \frac{x}{\lambda} \right) - f\left( \frac{x}{\lambda} \right) \\
&= p(x_0 + x') - f(x'), \quad x' \in G.
\end{aligned}
\]

当 $ \lambda < 0 $，
\[
\begin{aligned}
r_0 &\geq \frac{1}{\lambda} \left[ p(\lambda x_0 + x) - f(x) \right] \\
&= \frac{|\lambda|}{\lambda} \left[ p\left( \frac{\lambda x_0}{|\lambda|} + \frac{x}{|\lambda|} \right) - f\left( \frac{x}{|\lambda|} \right) \right] \\
&= -\left[ p(-x_0 + x'') - f(x'') \right], \quad x'' \in G.
\end{aligned}
\]

总之，条件 (2.4) 相当于
\[
p(-x_0 + x'') + f(x'') \leq r_0 \leq p(x_0 + x') - f(x'), \quad x', x'' \in G. \tag{2.5}
\]

要想这样的 $ r_0 $ 存在必须且只须 (2.5) 式右端恒不小于左端，即
\[
f(x') + f(x'') \leq p(x_0 + x') + p(-x_0 + x''), \quad \forall x', x'' \in G.
\]
由假设 (1) 与 (2)，
\[
\begin{aligned}
f(x') + f(x'') &= f(x' + x'') \\
&\leq p(x' + x'') \\
&= p(x_0 + x' - x_0 + x'') \\
&\leq p(x_0 + x') + p(-x_0 + x''), \\
&\quad \forall x', x'' \in G.
\end{aligned}
\]
由此可见 (2.5) 式右端确实恒不小于左端。兹令
\[
\sup_{x'' \in G} \left[ - p(-x_0 + x'') + f(x'') \right] \leq r_0 \leq \inf_{x' \in G} \left[ p(x_0 + x') - f(x') \right].
\]
由如此 $ r_0 $ 所确定的线性泛函 $ F_1(x) $ 显然满足 (2.3)。

考察实线性泛函 $ g(x) $，其定义域记作 $ \mathcal{D}(g) $。如果
\[
G \subset \mathcal{D}(g),
\]
且
\[
\begin{cases}
g(x) = f(x), & \text{当 } x \in G, \\
g(x) \leq p(x), & \text{当 } x \in \mathcal{D}(g),
\end{cases}
\]
则称 $ g $ 为 $ f $ 的**扩张**。设 $ f $ 的所有扩张的集合为 $ \mathcal{R} $，规定 $ \mathcal{R} $ 中的序如下：若 $ g_1, g_2 \in \mathcal{R} $，且 $ \mathcal{D}(g_1) \subset \mathcal{D}(g_2) $，$ g_1(x) = g_2(x) $（当 $ x \in \mathcal{D}(g_1) $），则 $ g_1 \prec g_2 $。于是 $ \mathcal{R} $ 是非空的偏序集。对 $ \mathcal{R} $ 中任何全序子集 $ \mathcal{S} $，可以作出实线性泛函 $ h(x) $，使
\[
\mathcal{D}(h) = \bigcup_{g \in \mathcal{S}} \mathcal{D}(g),
\]
\[
h(x) = g(x), \quad \text{当 } x \in \mathcal{D}(g), g \in \mathcal{S}.
\]
则 $ h \in \mathcal{R} $，且对一切 $ g \in \mathcal{S} $，都有 $ g \prec h $，即 $ h $ 是 $ \mathcal{S} $ 的上界。根据 **Zorn 引理**，$ \mathcal{R} $ 中有极大元 $ F $。当然 $ F $ 是 $ f $ 的扩张。如果 $ \mathcal{D}(F) \neq X $，则如前面第一部分的证明，$ F $ 可以再扩张，这与 $ F $ 的极大性矛盾。于是 $ \mathcal{D}(F) = X $，即 $ F $ 是 $ X $ 上实线性泛函。容易验证 $ F $ 即为所求者。证毕。



**定理 2.2（Bohnenblust – Sobczyk, 1938）** 设 $ f(x) $ 是复线性空间 $ X $ 之线性流形 $ G $ 上的线性泛函，如果有 $ X $ 上实值泛函 $ p(x) $，使

(1) $ p(x + y) \leq p(x) + p(y) $，$ p(\alpha x) = |\alpha| p(x) $，$ \forall x, y \in X $，$ \alpha \in \mathbb{C} $；

(2) $ |f(x)| \leq p(x) $，当 $ x \in G $，

则存在 $ X $ 上线性泛函 $ F(x) $，使

\[
F(x) = f(x), \quad \text{当 } x \in G,
\]

且

\[
|F(x)| \leq p(x), \quad \text{当 } x \in X.
\]


**证** 设 $ f(x) $ 的实部为 $ f_1(x) $，虚部为 $ f_2(x) $，即

\[
f_1(x) = \frac{f(x) + \overline{f(x)}}{2},
\]

\[
f_2(x) = \frac{f(x) - \overline{f(x)}}{2\mathrm{i}}.
\]

则

\[
f(x) = f_1(x) + \mathrm{i} f_2(x),
\]

而且 $ f_1(x), f_2(x) $ 都是 $ G $ 上的实线性泛函。注意 $ f(x) $ 是复线性空间上线性泛函，因此

\[
\begin{aligned}
\mathrm{i}\left[ f_1(x) + \mathrm{i} f_2(x) \right] &= \mathrm{i} f(x) = f(\mathrm{i}x) \\
&= f_1(\mathrm{i}x) + \mathrm{i} f_2(\mathrm{i}x), \quad x \in G.
\end{aligned}
\]

比较两端的实部，便有

\[
f_1(\mathrm{i}x) = -f_2(x), \quad x \in G.
\]

从而

\[
f(x) = f_1(x) - \mathrm{i} f_1(\mathrm{i}x), \quad x \in G.
\]

这说明 $ f $ 可以由其实部唯一确定。

因为复线性空间也可以看作实线性空间，故 $ f_1 $ 可视为实线性流形 $ G $ 上的实线性泛函，而且

\[
f_1(x) \leq |f(x)| \leq p(x), \quad \text{当 } x \in G.
\]

由定理 2.1，$ f_1 $ 可以扩张成线性空间 $ X $ 上的实线性泛函 $ F_1 $，且

\[
F_1(x) = f_1(x), \quad \text{当 } x \in G,
\]

\[
F_1(x) \leq p(x), \quad \text{当 } x \in X.
\]

令

\[
F(x) = F_1(x) - \mathrm{i} F_1(\mathrm{i}x), \quad x \in X.
\]

显然，$ \forall x, y \in X $，$ F(x + y) = F(x) + F(y) $，且当 $ t $ 是实数时，

\[
F(tx) = tF(x).
\]

又

\[
\begin{aligned}
F(\mathrm{i}x) &= F_1(\mathrm{i}x) - \mathrm{i} F_1(-x) = F_1(ix)-i(-F_1(x))=F_1(ix)+iF_1(x)\\
&=\mathrm{i} F_1(x) + F_1(\mathrm{i}x) \\
&= \mathrm{i}\left( F_1(x) - \mathrm{i} F_1(\mathrm{i}x) \right) = \mathrm{i} F(x).
\end{aligned}
\]

故 $ F(x) $ 是复线性空间 $ X $ 上线性泛函。

当 $ x \in G $，也有 $ \mathrm{i}x \in G $，从而

\[
F(x) = F_1(x) - \mathrm{i} F_1(\mathrm{i}x) = f_1(x) - \mathrm{i} f_1(\mathrm{i}x) = f(x).
\]

当 $ x \in X $，如果 $ F(x) \neq 0 $，令 $ \theta = \arg F(x) $，则

\[
\begin{aligned}
|F(x)| &= F(x)\mathrm{e}^{-\mathrm{i}\theta} = F\left( \mathrm{e}^{-\mathrm{i}\theta} x \right) \\
&= \operatorname{Re} F\left( \mathrm{e}^{-\mathrm{i}\theta} x \right) = F_1\left( \mathrm{e}^{-\mathrm{i}\theta} x \right) \\
&\leq p\left( \mathrm{e}^{-\mathrm{i}\theta} x \right) = p(x).
\end{aligned}
\]

如果 $ F(x) = 0 $，不等式显然成立。证毕。

**定理 2.3（Hahn–Banach，1927）** 对于赋范线性空间 $ X $ 之线性流形 $ G $ 上的连续线性泛函 $ f(x) $，恒有 $ X $ 上的连续线性泛函 $ F(x) $，使

(1) $ F(x) = f(x) $，当 $ x \in G $，

(2) $ \| F \| = \| f \|_G $。

这里 $ \| f \|_G $ 表示 $ f $ 作为 $ G $ 上连续线性泛函的范数，下同。

**证** 令

\[
p(x) = \| f \|_G \| x \|, \quad \text{当 } x \in X.
\]

不难验证 $ f, p $ 满足定理 2.2 的条件，于是存在 $ X $ 上线性泛函 $ F(x) $，使

\[
F(x) = f(x), \quad \text{当 } x \in G,
\]

且

\[
|F(x)| \leq p(x) = \| f \|_G \| x \|, \quad \text{当 } x \in X.
\]

因此 $ F $ 是 $ X $ 上有界线性泛函，而且

\[
\| F \| \leq \| f \|_G.
\]

但 $ F $ 是 $ f $ 的扩张，因而 $ F $ 的范数不会小于 $ f $ 的范数，即 $ \| F \| \geq \| f \|_G $。总之

\[
\| F \| = \| f \|_G.
\]

证毕。


**命题 2.1** 设 $ X $ 是赋范线性空间，任给非零的 $ x_0 \in X $，总存在 $ X $ 上的连续线性泛函 $ f $ 满足

(1) $ \| f \| = 1 $,

(2) $ f(x_0) = \| x_0 \| $.

**证** 取 $ G = \{ \alpha x_0 : \alpha \in \mathbb{C} \} $，定义

\[
f_1(\alpha x_0) = \alpha \| x_0 \|, \quad \alpha \in \mathbb{C}.
\]

则 $ G $ 是 $ X $ 中线性流形，$ f_1 $ 是 $ G $ 上连续线性泛函，$ \| f_1 \|_G = 1 $，$ f_1(x_0) = \| x_0 \| $。根据定理 2.3 可见命题为真。证毕。

这个命题说明在非零的赋范线性空间上，总存在非零的连续线性泛函。但是对一般的距离线性空间，这可不一定成立。试看第一章 §8 中例 4 所说的距离线性空间 $ S[0,1] $。

**命题 2.2分离定理** 

设 $ X $ 是赋范线性空间，$ E $ 是 $ X $ 的闭子空间，$ x_0 \in X \setminus E $，则存在 $ X $ 上有界线性泛函 $ f $ 满足

(1) $ f(x) = 0 $，当 $ x \in E $，

(2) $ f(x_0) = 1 $，

(3) $ \| f \| = \dfrac{1}{d} $，

这里 $ d = \operatorname{dist}(x_0, E) > 0 $。


**证** 取 $ G = \{ \alpha x_0 + x : \alpha \in \mathbb{C}, x \in E \} $，定义

\[
f_1(\alpha x_0 + x) = \alpha, \quad \text{当 } \alpha x_0 + x \in G.
\]

易见 $ G $ 是 $ X $ 中包含 $ E $ 与 $ x_0 $ 的线性流形，$ f_1 $ 是 $ G $ 上线性泛函。往证 $ f_1 $ 是有界的，且 $ \| f_1 \|_G = \dfrac{1}{d} $。

首先，对任意的 $ \alpha x_0 + x \in G $，只要 $ \alpha \neq 0 $，

\[
\| \alpha x_0 + x \| = |\alpha| \left\| x_0 + \frac{x}{\alpha} \right\| \geq |\alpha| d.
\]

故

\[
|f_1(\alpha x_0 + x)| = |\alpha| \leq \frac{\| \alpha x_0 + x \|}{d}.
\]

当 $ \alpha = 0 $ 时，上述不等式显然成立。由此可知，$ f_1 $ 是有界的，且

\[
\| f_1 \|_G \leq \frac{1}{d}.
\]

另一方面，任给 $ \varepsilon > 0 $，存在 $ x_1 \in E $，使

\[
\| x_0 - x_1 \| < d + \varepsilon,
\]

于是，对任意的 $ \alpha \in \mathbb{C} $，

\[
\| \alpha x_0 - \alpha x_1 \| = |\alpha| \| x_0 - x_1 \| < |\alpha|(d + \varepsilon),
\]

故

\[
|f_1(\alpha x_0 - \alpha x_1)| = |\alpha| \geq \frac{\| \alpha x_0 - \alpha x_1 \|}{d + \varepsilon}.
\]

从而

\[
\| f_1 \|_G \geq \frac{1}{d + \varepsilon}.
\]

$ \varepsilon > 0 $ 是任意的，故 $ \| f_1 \|_G \geq \dfrac{1}{d} $。总之，$ \| f_1 \|_G = \dfrac{1}{d} $。

最后，对 $ G, f_1 $ 应用定理 2.3 便知命题为真。证毕。


**命题 2.1** 设 $ X $ 是赋范线性空间，任给非零的 $ x_0 \in X $，总存在 $ X $ 上的连续线性泛函 $ f $ 满足

(1) $ \| f \| = 1 $,

(2) $ f(x_0) = \| x_0 \| $.

**证** 取 $ G = \{ \alpha x_0 : \alpha \in \mathbb{C} \} $，定义

$$
f_1(\alpha x_0) = \alpha \| x_0 \|, \quad \alpha \in \mathbb{C}.
$$

则 $ G $ 是 $ X $ 中线性流形，$ f_1 $ 是 $ G $ 上连续线性泛函，$ \| f_1 \|_G = 1 $，$ f_1(x_0) = \| x_0 \| $。根据定理 2.3 可见命题为真。证毕。

这个命题说明在非零的赋范线性空间上，总存在非零的连续线性泛函。但是对一般的距离线性空间，这可不一定成立。试看第一章 §8 中例 4 所说的距离线性空间 $ S[0,1] $。


**在赋范线性空间中任意一个非零元都会对应一个连续线性泛函**


$
\begin{aligned}
&我门利用命题2.2来考虑证明\\
&x_{0}与\{0\}分离\\
&故由命题2.2可知\\
&\exists f_{1}\in X^{'}\\
&s.t. f_{1}(x_{0})=1\\
&\|f_{1}\|=\frac{1}{\|x_{0}\|}\\
&故知取f=\|x_{0}\|f_{1}即可\\
\end{aligned}
$

**该定理也可以用来说明之前将泛函和内积之间关系,需要对偶空间中的泛函足够多的这个概念**

**距离空间中上述定理不成立的例子**

$
\begin{aligned}
&S[0,1]=\{f:[0,1]\to R,f可测\}\\
&d(f,g)=\int_{0}^{1}\frac{|f(t)-g(t)|}{1+|f(t)-g(t)|}dt\\
&\\
&上述距离空间中事实上不存在非零的连续线性泛函\\
&\\
&假设\exists 0\ne F\in S[0,1]'\\
&\\
&则\exists x_{0}\in S[0,1]\\
&s.t. F(x_0)\ne 0\\
&x_{11}(t)=\begin{cases}
x_{0}(t),t\in [0,1/2]\\
0,t\in [1/2,1]\\
\end{cases}\\
&x_{12}(t)=\begin{cases}
0,t\in [0,1/2]\\
x_{0}(t),t\in [1/2,1]\\
\end{cases}\\
&0\ne F(x_{0})=F(x_{11}+x_{12})=F(x_{11})+F(x_{12})\\
&\\
&\\
&定义x_{1}=x_{1j},j=1,2\\
&0\ne F(x_1)(如果F(x_1),F(x_2)都是零就矛盾了)\\
&msuppx_{1}\leq 1/2\\
&\\
&依次递归下去得到x_{n}\\
&x_{n}\in S[0,1]\\
&F(x_{n})\ne 0\\
&且m(supp x_{n})<\frac{1}{2^{n}}\\
&令y_{n}=\frac{x_{n}}{F(x_{n})}\\
&下面考虑证明y_{n}\to 0\\
&d(y_{n},0)=\int _{0}^{1}\frac{|y_{n}(t)|}{1+|y_{n}(t)|}dt\\
&\leq 1\cdot m(supp y_{n})\\
&\leq \frac{1}{2^{n}}\\
&\to 0\\
&但F(y_{n})=1\\
&故知矛盾\\
\end{aligned}
$

**注意Hahn-Banach扩张定理的一个很重要的方面就是：分离**

### 命题(老师作为例子来讲)

$
\begin{aligned}
&\forall x_{0}\ne y_{0},x_{0},y_{0}\in X,X是Banach空间\\
&则\exists f\in X^{'}\\
&s.t. f(x_{0})\ne f(y_{0})\\
&Prove:\\
&令z_{0}=x_{0}-y_{0}\ne 0\\
&则\exists f\in X^{'}\\
&s.t. f(z_{0})\ne 0\\
&\Rightarrow \\
&f(x_{0})\ne f(y_{0})\\
&\\\\
&直观的例子:\\
&f\in (R^{3})'\\
&\{x\in R^{3}|f(x)=0\}\\
&是一个(过原点)的平面\\
&\{x\in R^{3}|f(x)=5\}\\
&还是一个平面只不过不过原点了\\
&这种平面被称之为超平面\\
&\\
\end{aligned}
$

**命题 2.3** 设 $ M $ 是赋范线性空间 $ X $ 中线性流形，$ x_0 \in X $，则

$$
x_0 \in \overline{M} \iff \text{对 } X \text{ 上任何连续线性泛函 } f,\quad f(x) = 0,\ \forall x \in M,\ \text{蕴含 } f(x_0) = 0.
$$

**证** 这是命题 2.2 的直接推论。

**推论** 设 $ S $ 是赋范线性空间 $ X $ 的子集，$ x_0 \in X $，则

$$
x_0 \text{ 可以用 } S \text{ 中向量的线性组合来逼近} \iff \text{对 } X \text{ 上任何连续线性泛函 } f,\quad f(x) = 0,\ \forall x \in S,\ \text{蕴含 } f(x_0) = 0.
$$

**证** 只须取命题 2.3 中 $ M $ 为 $ S $ 中元张成的线性流形即可。

正是鉴于这个推论，人们才说 Hahn–Banach 定理是处理某些逼近问题之经典方法的基础。


**该命题的几何意义是:x_{0}与M若不能被超平面分离,则x_{0}在M的闭包中**

**分离性问题就要优先考虑Hahn-Banach扩张定理**

$
\begin{aligned}
&证明:\\
&\Rightarrow \\
&\exists x_{n}\in M,s.t. x_{n}\to x_{0}\\
&\\
&f(x_{0})=\lim_{n\to \infty}f(x_{n})=0\\
&\Leftarrow \\
&若x_{0}\notin \overline{M}\\
&则\exists f_{0}\in X^{'}\\
&s.t. \\
&f_{0}(\overline{M})=0\\
&f_{0}(x_{0})\ne 0\\
&\\
&\\
&f\in X'\\
&\|f\|=\sup_{\|x\|=1}|f(x)|x\in X\\
&则\|x\|=\sup_{\|f\|=1,f\in X^{'}}|f(x)|\\
&(向量范数可以用对偶范数来表示)\\
&\|x\|\geq \sup_{\|f\|=1,f\in X^{'}}|f(x)|显然成立\\
&由Hahn-Banach扩张定理\\
&若x\ne 0\\
&\exists f_{0}\in X^{'}\\
&\|f_{0}\|=1\\
&且\|f_{0}(x)\|=\|x\|\\
&故知\|x\|=|f_{0}(x)|\\
&(书上143页第8题)\\
&(是同类型的题目)\\
&(7,8)两个题留作页\\
&\\\\
&下面讨论哪些Banach空间一定具有拓扑补\\
&\\
&M是(X,\|\cdot\|)的有限维线性子空间\\
&则\exists 闭子空间N,s.t. \\
&M+N=X\\
&M\cap N=\{0\}\\
&\\
&(如果涉及到闭这个性质之后一般都要用更高的维度来处理问题)\\
&(就类似于抽象代数里面考虑商空间的这种处理)\\
&(利用映射来研究问题)\\
&\\
&证明:\\
&取\{x_{1},\cdots ,x_{n}\}s为M的一组基\\
&M_{j}=span\{x_{1},\cdots ,x_{j-1},x_{j+1},\cdots ,x_{n}\}\\
\\
&由x_{j}\notin M_{j},Hahn-B定理\\
&\exists f_{j}\in X^{'}\\
&s.t. \\
&f_{j}|_{M_{j}}=0\\
&f_{j}(x_{j})=1\\
&\\
&定义:\\
&P:X\to X(实际上是X\to M)\\
&p(x)=\sum_{j=1}^{n}f_{j}(x)x_{j}\\
&\\
&(事实上容易验证p(x)是幂等算子(投影算子))\\
&\\
&显然p(x)也是有界线性算子\\
&\\
&定义N=Im (I-P)\\
&\\
&证明:Im (I-P)=Ker(P)\\
&\forall x\in Im (I-P)\\
&\exists y\in X,s.t. x=(I-P)y\\
&由P的幂等性显然Im (I-P)\subset Ker(P)\\
&y=(I-P)y+Py\\
&故知有Im(I-P)=Ker (P)\\
&\\
&相交为零就是高代经典证法,easy\\
\end{aligned}
$

像命题 2.4 中的两个子空间 $ \mathscr{M} $ 与 $ \mathscr{N} $ 称为**拓扑互补子空间**。把一个空间分解成拓扑互补的子空间，这件事在算子的研究上是重要的。可惜对于一般（甚至可以说相当多的）Banach 空间，不是关于它的任何子空间都存在与之拓扑互补的子空间。事实上，F. J. Murray 在 1937 年就已证明，甚至在 $ L^p $（或 $ l^p $）$ (p \neq 2) $ 这样好的空间中都有存在子空间，没有与之拓扑互补的子空间（参见 [37]）。但对于 Hilbert 空间 $ H $，因为有所说的射影定理，情形就好得多。对于 $ H $ 的任何子空间 $ \mathscr{M} $，$ \mathscr{M}^{\perp} $ 正是与 $ \mathscr{M} $ 拓扑互补的子空间。很有意思，J. Lindenstrauss 和 I. Tzafriri 证明，在任何不与 Hilbert 空间拓扑同构的 Banach 空间中都有存在子空间，没有与之拓扑互补的子空间。（参见 [35]）

**定义 2.3** 设 $ f(x) $ 是实距离线性空间 $ X $ 上连续线性泛函。$ E, F $ 是 $ X $ 中子集，若有实数 $ r $，使

$$
f(x) \geqslant r,\ \text{当 } x \in E,\qquad f(x) \leqslant r,\ \text{当 } x \in F,
$$

则称超平面 $ H = \{ x \in X : f(x) = r \} $ 分离 $ E $ 与 $ F $。

**定理 2.5（Mazur, 1933）** 设 $ M $ 是实赋范线性空间 $ X $ 中的凸闭集。若 $ 0 \in M $，而 $ x_0 \notin M $，则存在 $ X $ 上连续实线性泛函 $ f $，使

$$
(2.6)\qquad\qquad f(x_0) > 1,\ \text{而 } f(x) \leqslant 1,\ \text{当 } x \in M.
$$

(这个可以仿照Hahn-Banach定理怎么从实推广到复来进行实数到复数的证明)

**定理 2.6（M. Eidelheit, 1936）** 设 $ A $ 和 $ B $ 是局部凸拓扑线性空间 $ X $ 中不相交凸集。

(1) 如果 $ A $ 是开的，则它们可被一超平面分离；

(2) 如果 $ A, B $ 都是开的，它们可被一超平面严格分离；

(3) 如果 $ A $ 是紧的，$ B $ 是闭的，它们可被一超平面严格分离。

这些分离定理在理论上不只是对偶理论的基础，一些重要结果，诸如 Krein–Milman 定理、重极定理等等的证明都依赖于它们。此外，它们在凸分析及数量经济学中也有许多应用。

(th2.5和2.6感觉讲的很快也没有讲证明感觉应该不是核心知识脉络的内容)




