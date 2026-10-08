# Hilbert 空间

### 内积空间

**定义 1.1：** 设 $X$ 为复线性空间，如果对任给的 $x, y \in X$ 都恰有一个复数，记为 $(x, y)$，与之对应，并且这个对应具有下列性质：

1. $(x, x) \geq 0$；$(x, x) = 0$ 必须且只须 $x = 0$。
2. $(x + y, z) = (x, z) + (y, z)$。
3. $(\alpha x, y) = \alpha (x, y)$。
4. $(x, y) = \overline{(y, x)}$。

Tip: 复内积关于第二个分量是共轭线性的:

$(x, \alpha y) = \overline{\alpha} (x, y)$

Tip: 如果只知道某二元运算满足对于第一个分量线性和对于第二个分量共轭线性，并不能退出它是一个内积（推不出第四条）

反例: 设 $X = \mathbb{C}^2$，定义二元运算 $B(x, y) = x_1\overline{y_2}$。则 $B$ 对第一个分量线性、对第二个分量共轭线性；但取 $e_1 = (1, 0)$、$e_2 = (0, 1)$，有 $B(e_1, e_2) = 1 \neq 0 = \overline{B(e_2, e_1)}$，故 $B$ 不满足第四条，从而不是内积。事实上，$B(x, x) = x_1\overline{x_2}$ 甚至未必为非负实数。


对任意的 $x, y \in X$，$\alpha \in \mathbb{C}$。则称 $(x, y)$ 为 $x$ 与 $y$ 的**内积**，称 $X$ 为具有内积 $(\cdot, \cdot)$ 的**内积空间**。


e.g.
- 欧几里得空间 $\mathbb{R}^n$ 配备标准内积 $(x, y) = \sum_{i=1}^n x_i y_i$。
- 复数空间 $\mathbb{C}^n$ 配备标准内积 $(x, y) = \sum_{i=1}^n x_i \overline{y_i}$。

**定义 1.2：** 内积空间 $X$ 中的元素 $x, y$ 称为**正交的**，如果 $(x, y) = 0$，记作 $x \perp y$。

$X$ 中的一族元素 $\{x_j\}$ 称为**正规正交集**，如果

$$
(x_j, x_k) = \delta_{jk},
$$

这里 $\delta_{jk}$ 是 Kronecker 常数：$\delta_{jk} = 1$，当 $j = k$；$\delta_{jk} = 0$，当 $j \neq k$。


范数: $\|x\|=[(x,x)]^{\frac{1}{2}}$

**定理 1.1：** 设 $\{x_n\}_{n=1}^N$ 是内积空间 $X$ 中的正规正交集，则对任何 $x \in X$ 都有

$$
\|x\|^2 = \sum_{n=1}^N |(x, x_n)|^2 + \left\| x - \sum_{n=1}^N (x, x_n) x_n \right\|^2.
$$

**证：** 将 $x$ 表成

$$
x = \left[ \sum_{n=1}^N (x, x_n) x_n \right] + \left[ x - \sum_{n=1}^N (x, x_n) x_n \right],
$$

由内积定义及假设，容易验证上式右端第一项与第二项是正交的。根据内积性质及假设，

$$
\begin{aligned}
\|x\|^2 &= \left\| \sum_{n=1}^N (x, x_n) x_n \right\|^2 + \left\| x - \sum_{n=1}^N (x, x_n) x_n \right\|^2 \\
&= \sum_{n=1}^N |(x, x_n)|^2 + \left\| x - \sum_{n=1}^N (x, x_n) x_n \right\|^2.
\end{aligned}
$$

证毕。



**推论 1（Bessel 不等式）：** 设 $\{x_n\}_{n=1}^N$ 是内积空间 $X$ 中的正规正交集，则于任何 $x \in X$ 都有

$$
\sum_{n=1}^N |(x, x_n)|^2 \leq \|x\|^2.
$$

**推论 2（Schwarz 不等式）：** 对内积空间 $X$ 中任意两个向量 $x, y$ 都有

$$
|(x, y)| \leq \|x\| \|y\|.
$$

**证：** 若 $y = 0$，则

$$
(x, y) = (x, 0y) = 0(x, y) = 0,
$$

可见等式成立。若 $y \neq 0$，$\left\{\dfrac{y}{\|y\|}\right\}$ 就是正规正交集，由 Bessel 不等式，

$$
\|x\|^2 \geq \left| \left(x, \frac{y}{\|y\|}\right) \right|^2 = \frac{|(x, y)|^2}{\|y\|^2}.
$$

由此即知所论成立。证毕。


**命题 1.1：** 内积 $(x, y)$ 是 $x, y$ 的二元连续函数，即当 $n \to \infty$ 时，

$$
x_n \to x,\, y_n \to y \implies (x_n, y_n) \to (x, y).
$$

**证：** 显然

$$
\begin{aligned}
|(x_n, y_n) - (x, y)| &\leq |(x_n, y_n) - (x, y_n)| + |(x, y_n) - (x, y)| \\
&= |(x_n - x, y_n)| + |(x, y_n - y)| \\
&\leq \|x_n - x\| \|y_n\| + \|x\| \|y_n - y\|.
\end{aligned}
$$

如果 $x_n \to x$，$y_n \to y$，则还有 $\{\|y_n\|\}_{n=1}^\infty$ 是有界数列，故当 $n \to \infty$，上式右端趋于 0。证毕。

**命题 1.2：** 设点集 $M$ 在内积空间 $X$ 中稠密，若 $x_0 \in X$ 使

$$
(x, x_0) = 0,\quad \forall x \in M,
$$

则 $x_0 = 0$。

**证：** 由点集 $M$ 在内积空间 $X$ 中稠密知，存在 $x_n \in M$，$n = 1, 2, \cdots$，使 $x_n \to x_0$。根据命题 1.1 及假设

$$
(x_0, x_0) = \lim_{n \to \infty} (x_n, x_0) = 0,
$$

故 $x_0 = 0$。证毕。

**定理 1.3（极化恒等式）：** 对内积空间 $X$ 中任意两个向量 $x, y$ 都有

$$
(x, y) = \frac{1}{4}\left( \|x + y\|^2 - \|x - y\|^2 + i\|x + iy\|^2 - i\|x - iy\|^2 \right). \tag{1.2}
$$

**证：** 由范数与内积关系易得

$$
\begin{align}
\|x + y\|^2 &= (x, x) + (x, y) + (y, x) + (y, y), \tag{1.3} \\
\|x - y\|^2 &= (x, x) - (x, y) - (y, x) + (y, y), \tag{1.4} \\
\|x + iy\|^2 &= (x, x) - i(x, y) + i(y, x) + (y, y), \tag{1.5} \\
\|x - iy\|^2 &= (x, x) + i(x, y) - i(y, x) + (y, y), \tag{1.6}
\end{align}
$$

则由 $(1.3) - (1.4) + i(1.5) - i(1.6)$ 可得

$$
\|x + y\|^2 - \|x - y\|^2 + i\|x + iy\|^2 - i\|x - iy\|^2 = 4(x, y).
$$

证毕。

**命题 1.3（平行四边形法则）：** 对内积空间 $X$ 中任意两个向量 $x, y$ 都有

$$
\|x + y\|^2 + \|x - y\|^2 = 2\left( \|x\|^2 + \|y\|^2 \right).
$$


**定义1.3** 完备的内积空间被称为Hilbert空间

(判断某个Banach空间是否是Hilbert空间:利用平行四边形法则先做判定（这个是充分必要的），如果满足平行四边形法则，则利用极化恒等式定义内积)

**例 2：空间 $\ell^2$**

**(证明$\ell^{p}(p\ne 2)$ 不是Hilbert空间的技巧:在利用平行四边形法则做验证的时候直接取两个函数为 $  e_{1}=(1,0,\cdots,0) ,e_{2}=(0,1,\cdots,0) $ )**

考察使 $\displaystyle\sum_{n=1}^\infty |\xi_n|^2 < \infty$ 的复数序列 $x = \{\xi_n\}_{n=1}^\infty$ 的全体形成的线性空间，记作 $\ell^2$。由 Hölder 不等式，可以定义

$$
(x, y) = \sum_{n=1}^\infty \xi_n \overline{\eta_n},\quad \text{当 } x = \{\xi_n\}_{n=1}^\infty,\, y = \{\eta_n\}_{n=1}^\infty \in \ell^2.
$$

容易验证它满足内积公理，$\ell^2$ 按 $(\cdot, \cdot)$ 成为内积空间。下面证明 $\ell^2$ 是完备的。

设 $x_k = \{\xi_n^{(k)}\}_{n=1}^\infty$，$k = 1, 2, \cdots$，是 $\ell^2$ 中的 Cauchy 序列，于是任给 $\varepsilon > 0$，存在正整数 $N$，当 $k, j \geq N$，

$$
\|x_k - x_j\| = \left( \sum_{n=1}^\infty |\xi_n^{(k)} - \xi_n^{(j)}|^2 \right)^{1/2} < \varepsilon. \tag{1.7}
$$

从而对每个正整数 $n$，

$$
|\xi_n^{(k)} - \xi_n^{(j)}| < \varepsilon,\quad \text{当 } k, j \geq N.
$$

这说明 $\{\xi_n^{(k)}\}_{k=1}^\infty$ 是 Cauchy 数列，故

$$
\lim_{k \to \infty} \xi_n^{(k)} = \xi_n^{(0)}
$$

存在且有限。记 $x_0 = \{\xi_n^{(0)}\}_{n=1}^\infty$。由 (1.7) 式，对每个正整数 $m$，

$$
\sum_{n=1}^m |\xi_n^{(k)} - \xi_n^{(j)}|^2 < \varepsilon^2,\quad \text{当 } k, j \geq N.
$$

令 $j \to \infty$，可得

$$
\sum_{n=1}^m |\xi_n^{(k)} - \xi_n^{(0)}|^2 \leq \varepsilon^2,\quad \text{当 } k \geq N.
$$

再令 $m \to \infty$，可得

$$
\sum_{n=1}^\infty |\xi_n^{(k)} - \xi_n^{(0)}|^2 \leq \varepsilon^2,\quad \text{当 } k \geq N.
$$

这表明 $x_k - x_0 \in \ell^2$，当 $k \geq N$。因 $\ell^2$ 是线性空间，故 $x_0 \in \ell^2$。由上式

$$
\|x_k - x_0\| = \left( \sum_{n=1}^\infty |\xi_n^{(k)} - \xi_n^{(0)}|^2 \right)^{1/2} \leq \varepsilon,\quad \text{当 } k \geq N.
$$

即 $x_k \to x_0$。证毕。

**例 3：空间 $L^2[a,b]$**

(证明$L^{p}(p\ne 2)$ 不是Hilbert空间的技巧:在利用平行四边形法则做验证的时候直接取两个函数为 $\chi _{[0,\frac{1}{2}]},\chi_{[\frac{1}{2},1]}$ )


考察有限区间 $[a,b]$ 上复值平方可积函数 $f(x)$ 的全体按逐点定义的加法和数乘形成的一个线性空间，记作 $L^2[a,b]$。由 Hölder 不等式，可以定义内积

$$
(f, g) = \int_a^b f(x) \overline{g(x)}\,dx,\quad \text{当 } f, g \in L^2[a,b].
$$

容易验证 $L^2[a,b]$ 按这个内积成为内积空间，而且按这个内积确定的距离恰好是第一章 §5 中例 2 当 $p = 2$ 时的距离，从那里得知 $L^2[a,b]$ 是完备的，因此 $L^2[a,b]$ 是 Hilbert 空间。

(C[0,1]配上上确界范数不是Hilbert空间，因为不满足平行四边形法则，但是是Banach空间)



## 正规正交基


### 正规正交基

**定义 2.1：** 设 $S$ 是 $H$ 中的正规正交集，如果 $H$ 中没有其他的正规正交集真包含 $S$，则称 $S$ 为 $H$ 的**正规正交基**。

**命题 2.1：** 设 $S$ 是 $H$ 的正规正交集。则 $S$ 是 $H$ 的正规正交基的充要条件是 $H$ 中没有非零元与 $S$ 中每个元正交。

**证：** 必要性。设 $x \in H$ 与 $S$ 中每个元正交。如果 $x \neq 0$，令 $x_1 = \dfrac{x}{\|x\|}$，则 $S_1 = S \cup \{x_1\}$ 便是 $H$ 中真包含 $S$ 的一个正规正交集。这与 $S$ 是正规正交基矛盾。

充分性：否则，存在 $H$ 的正规正交集 $S'$ 真包含 $S$，取非零的 $x \in S' \setminus S$，则 $x$ 与 $S$ 中每个元正交，与假设矛盾。证毕。


**定理 2.1：** 若 $H$ 可分，则 $H$ 有一个可数的正规正交基。

**证：** 由于 $H$ 可分，$H$ 中存在可数的稠密子集 $S$。利用数学归纳法可以证明必存在 $S$ 中一个线性无关子集 $\{x_n\}$，使得 $S$ 中每个元都可以表示成 $\{x_n\}$ 中某些元的线性组合。

将 Schmidt 正规正交法用于 $\{x_n\}$，得到正规正交集 $\{e_n\}$。

若有 $e \in H$，使

$$
(e, e_n) = 0,\quad n = 1, 2, \cdots.
$$

注意由 Schmidt 正规正交法，每个 $x_n$ 可以表成 $x_n = \displaystyle\sum_{j=1}^n c_j^{(n)} e_j$，从而

$$
(e, x_n) = 0,\quad n = 1, 2, \cdots.
$$

又任给 $x \in S$，可以表成 $\{x_n\}$ 中某些元的线性组合，故

$$
(e, x) = 0,\quad \forall x \in S.
$$

由于 $S$ 是 $H$ 中稠密子集，根据命题 1.2 可知 $e = 0$。再根据命题 2.1，可见 $\{e_n\}$ 是 $H$ 的正规正交基。证毕。




