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


