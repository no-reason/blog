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



**定理 2.2：** 每个非零的 Hilbert 空间都有正规正交基。

**证：** 设 $H$ 是一个非零的 Hilbert 空间，考虑 $H$ 中一切正规正交集构成的族 $\mathcal{J}$。$\mathcal{J}$ 是非空的，因为任取 $x \neq 0$，$\left\{\dfrac{x}{\|x\|}\right\}$ 便是 $\mathcal{J}$ 中的一个元。对 $S_1, S_2 \in \mathcal{J}$，定义 $S_1 \prec S_2$，当 $S_1 \subset S_2$。则 $\mathcal{J}$ 按"$\prec$"成为一个部分有序集。若 $\{S_\alpha\}_{\alpha \in \mathcal{A}}$ 是 $\mathcal{J}$ 中的完全有序子集，则 $\displaystyle\bigcup_{\alpha \in \mathcal{A}} S_\alpha \in \mathcal{J}$，而且是 $\{S_\alpha\}_{\alpha \in \mathcal{A}}$ 的上界。根据 Zorn 引理，$\mathcal{J}$ 中存在极大元 $S_M$，则 $S_M$ 便是 $H$ 的一个正规正交基。证毕。

**定理 2.3：** 设 $S = \{x_\alpha\}_{\alpha \in \mathcal{A}}$ 是 $H$ 的一个正规正交基，则对任何的 $x \in H$，都有

$$
x = \sum_{\alpha \in \mathcal{A}} (x, x_\alpha) x_\alpha,
$$

$$
\|x\|^2 = \sum_{\alpha \in \mathcal{A}} |(x, x_\alpha)|^2,
$$

这里 $\displaystyle\sum_{\alpha \in \mathcal{A}} z_\alpha$ 表示最多只有可数多个 $z_\alpha \neq 0$，而且级数无条件收敛。

特别，当 $H$ 是可分的 Hilbert 空间，$\{x_n\}_{n=1}^\infty$ 是 $H$ 的正规正交基，则对任何的 $x \in H$ 都有

$$
\|x\|^2 = \sum_{n=1}^\infty |(x, x_n)|^2. \tag{2.3}
$$

式 (2.3) 通常被称为 **Parseval 公式**。

**任何一个Hilbert空间都与$\ell^{2}$同构**


## 考试会有很多判断题


**定理 3.1（射影定理）** 设 $M$ 是 Hilbert 空间 $H$ 的闭子空间(这里需要强调闭)，则每个 $x \in H$ 都可以唯一地表成

$$
x = y + z,\quad y \in M,\quad z \in M^{\perp}.
$$

人们称这个由 $x$ 与 $M$ 唯一确定的 $y$ 为 $x$ 在 $M$ 上的**正交射影**。

**闭性不可省略：反例。** 令

$$
H=\ell^2,\qquad M=c_{00}:=\{(\xi_n)\in\ell^2:\text{只有有限多个 }\xi_n\neq0\}.
$$

则 $M$ 是 $\ell^2$ 的线性子空间，但不是闭子空间。事实上，令

$$
x=\left(1,\frac12,\frac13,\ldots\right)\in\ell^2,
\qquad
x^{(N)}=\left(1,\frac12,\ldots,\frac1N,0,0,\ldots\right)\in M.
$$

有

$$
\|x^{(N)}-x\|_2^2=\sum_{n=N+1}^{\infty}\frac1{n^2}\longrightarrow0,
$$

故 $x^{(N)}\to x$；但 $x\notin M$，从而 $M$ 不闭。

另一方面，若 $z=(z_n)\in M^\perp$，由于每个标准单位向量 $e_n\in M$，便有

$$
(z,e_n)=z_n=0,\qquad \forall n.
$$

所以 $z=0$，即

$$
M^\perp=\{0\}.
$$

若射影定理对这个非闭子空间仍成立，则上面的 $x$ 应可写为 $x=y+z$，其中 $y\in M$、$z\in M^\perp=\{0\}$。这将推出 $x=y\in M$，与 $x\notin M$ 矛盾。因此，非闭子空间上未必存在正交射影，定理中的“闭”是必要条件。

对任意（未必闭）线性子空间，正确结论是

$$
H=\overline{M}\oplus M^\perp,
\qquad
M^{\perp\perp}=\overline{M}.
$$

**命题 3.1（任意集合的双正交补）：** 设 $\Omega\subset H$ 是任意集合，不要求 $\Omega$ 是线性子空间。定义

$$
\Omega^\perp:=\{x\in H:(x,\omega)=0,\ \forall\omega\in\Omega\}.
$$

则

$$
\boxed{\ \Omega^{\perp\perp}=\overline{\operatorname{span}(\Omega)}\ }.
$$

其中 $\operatorname{span}(\Omega)$ 是由 $\Omega$ 中元素的有限线性组合构成的线性子空间，$\overline{\operatorname{span}(\Omega)}$ 称为 $\Omega$ 的**闭线性包**（或闭线性张成）。

**证：** 先证

$$
\Omega^\perp=(\operatorname{span}(\Omega))^\perp.
$$

一方面，$\Omega\subset\operatorname{span}(\Omega)$，故

$$
(\operatorname{span}(\Omega))^\perp\subset\Omega^\perp.
$$

另一方面，若 $x\in\Omega^\perp$，且

$$
u=\sum_{k=1}^n a_k\omega_k\in\operatorname{span}(\Omega),
\qquad \omega_k\in\Omega,
$$

则由内积对第一个分量线性、对第二个分量共轭线性，

$$
(x,u)=\sum_{k=1}^n\overline{a_k}(x,\omega_k)=0.
$$

故 $x\in(\operatorname{span}(\Omega))^\perp$，从而等式成立。

再令 $N=\operatorname{span}(\Omega)$。由于内积连续，$x\perp N$ 当且仅当 $x\perp\overline N$，即

$$
N^\perp=(\overline N)^\perp.
$$

而 $\overline N$ 是闭线性子空间，由上面的结论

$$
(\overline N)^{\perp\perp}=\overline N.
$$

因此

$$
\Omega^{\perp\perp}
=(\operatorname{span}(\Omega))^{\perp\perp}
=(\overline{\operatorname{span}(\Omega)})^{\perp\perp}
=\overline{\operatorname{span}(\Omega)}.
$$

证毕。

例如，取 $H=\ell^2$、$\Omega=\{e_1,e_2,\ldots\}$，则

$$
\operatorname{span}(\Omega)=c_{00},
\qquad
\overline{\operatorname{span}(\Omega)}=\ell^2.
$$

又 $\Omega^\perp=\{0\}$，故

$$
\Omega^{\perp\perp}=\ell^2.
$$

这说明双正交补不仅包含 $\Omega$ 的有限线性组合，也包含这些有限线性组合在范数意义下的所有极限。

取M的正规正交基$\{e_{\alpha}\}$

$
\begin{aligned}
&\|x\|^{2}\geq\sum |<x,e_{\alpha}>|^{2}\\
&定义m=\sum<x,e_{\alpha}>e_{\alpha}\\
\end{aligned}
$


证：注意 $M$ 也是 Hilbert 空间，根据定理 2.2，$M$ 有一个正规正交基 $\{y_\alpha\}_{\alpha \in \mathcal{A}}$。任给 $x \in H$，由定理 2.3 证明第一段可知，最多只有可数多个 $(x, y_\alpha) \neq 0$。设它们是 $\{(x, y_{\alpha_j})\}_{j=1}^{\infty}$，则对 $\alpha \in \mathcal{A},\ \alpha \neq \alpha_j,\ j=1,2,\cdots,\ (x, y_\alpha)=0$。令

$$
y = \sum_{j=1}^{\infty} (x, y_{\alpha_j}) y_{\alpha_j}.
$$

如定理 2.3 一样可以证明，上式右端级数是收敛的。因 $M$ 是闭的，故 $y \in M$。

令 $z = x - y$，则对 $k = 1, 2, \cdots$，有

$$
\begin{aligned}
(z, y_{\alpha_k}) &= (x, y_{\alpha_k}) - (y, y_{\alpha_k}) \\
&= (x, y_{\alpha_k}) - \left( \sum_{j=1}^{\infty} (x, y_{\alpha_j}) y_{\alpha_j}, y_{\alpha_k} \right) \\
&= (x, y_{\alpha_k}) - \sum_{j=1}^{\infty} (x, y_{\alpha_j}) (y_{\alpha_j}, y_{\alpha_k}) \\
&= (x, y_{\alpha_k}) - (x, y_{\alpha_k}) \\
&= 0.
\end{aligned}
$$

又当 $\alpha \in \mathcal{A}$，且 $\alpha \neq \alpha_k,\ k=1,2,\cdots$，

$$
\begin{aligned}
(z, y_\alpha) &= (x, y_\alpha) - (y, y_\alpha) \\
&= (x, y_\alpha) - \left( \sum_{j=1}^{\infty} (x, y_{\alpha_j}) y_{\alpha_j}, y_\alpha \right) = 0.
\end{aligned}
$$

总之，

$$
(z, y_\alpha) = 0,\quad \text{当}\ \alpha \in \mathcal{A}.
$$

根据定理 2.3，$M$ 中每个 $u$ 都可表成 $\sum_{\alpha \in \mathcal{A}} (u, y_\alpha) y_\alpha$，可见 $(z, u) = 0,\ \forall u \in M$，即 $z \in M^\perp$。因此

$$
x = y + z,\quad y \in M,\quad z \in M^\perp.
$$

至于唯一性，可由 $M \cap M^\perp = \{0\}$ 得出。证毕。

应该指出，这个定理也可以看作是 Schmidt 正规正交法的推广。因为对于任何子空间 $M$，若 $x_0 \notin M$，根据射影定理，便有

$$
x_0 = y_0 + z_0,\quad y_0 \in M,\quad z_0 \in M^\perp.
$$

显然 $z_0 \neq 0$，$z_0$ 是新的与 $M$ 中一切元都正交的元。为什么说是推广呢？因为现在的 $\dim M$ 不限于有限的。

区别于一般 Banach 空间，Hilbert 空间是几何性质最丰富的空间，理由之一就在于它有射影定理。早在 20 世纪 30 年代，人们就已举出反例，即使对前述的 $L^p(p \neq 2)$ 空间，也不能有类似射影定理那样美好的性质。关于这个反例可参见 [36]。


**命题 3.1** 设 $M$ 是 $H$ 的线性流形，则 $\overline{M} = (M^{\perp})^{\perp}$。

**证** 设 $x \in (M^{\perp})^{\perp}$，因为 $\overline{M}$ 是 $H$ 的子空间，根据射影定理，

$$
x = y + z,\quad y \in \overline{M},\quad z \in (\overline{M})^{\perp}.
$$

不难证明 $(\overline{M})^{\perp} = M^{\perp}$。于是，用 $z$ 与上述表达式作内积有

$$
0 = (x, z) = (z, z),
$$

故 $z = 0$，从而 $x = y \in \overline{M}$。可见 $(M^{\perp})^{\perp} \subset \overline{M}$。

另一方面，由正交补定义有 $M \subset (M^{\perp})^{\perp}$，又因 $(M^{\perp})^{\perp}$ 是闭的，故 $\overline{M} \subset (M^{\perp})^{\perp}$。证毕。


# 不可分 Hilbert 空间中的正规正交基展开

设 $H$ 是 Hilbert 空间，$\{e_\alpha\}_{\alpha\in A}$ 是 $H$ 的正规正交基，其中指标集 $A$ 可以是不可数集。

这里的“正规正交基”指：

1. $\|e_\alpha\|=1$；
2. $\alpha\neq\beta$ 时 $(e_\alpha,e_\beta)=0$；
3.
   $$
   \overline{\operatorname{span}\{e_\alpha:\alpha\in A\}}=H.
   $$

即使 $A$ 不可数，对任意 $x\in H$，仍然有 Fourier 展开

$$
\boxed{
x=\sum_{\alpha\in A}(x,e_\alpha)e_\alpha.
}
$$

不过需要注意：对于每个固定的 $x$，其中非零的 Fourier 系数实际上至多只有可数个。

---

## 1. Bessel 不等式

对任意有限子集 $F\subset A$，都有

$$
\boxed{
\sum_{\alpha\in F}|(x,e_\alpha)|^2\le \|x\|^2.
}
$$

证明思路：

令

$$
y=\sum_{\alpha\in F}(x,e_\alpha)e_\alpha.
$$

由正规正交性，

$$
\|y\|^2
=
\sum_{\alpha\in F}|(x,e_\alpha)|^2.
$$

并且 $x-y$ 与 $y$ 正交，因此

$$
\|x\|^2
=
\|x-y\|^2+\|y\|^2
\ge
\|y\|^2.
$$

于是得到 Bessel 不等式。

---

## 2. 每个向量只有至多可数个非零 Fourier 系数

设

$$
c_\alpha=(x,e_\alpha).
$$

定义

$$
A_n=
\left\{
\alpha\in A:
|c_\alpha|\ge\frac1n
\right\}.
$$

则每个 $A_n$ 都是有限集。

证明：

若 $A_n$ 无限，则可以从中任取含 $N$ 个元素的有限集合 $F$。由 Bessel 不等式，

$$
\|x\|^2
\ge
\sum_{\alpha\in F}|c_\alpha|^2
\ge
\frac{N}{n^2}.
$$

因此

$$
N\le n^2\|x\|^2.
$$

但若 $A_n$ 无限，可以取得任意大的 $N$，矛盾。

所以 $A_n$ 有限。

另一方面，

$$
\{\alpha:c_\alpha\neq0\}
=
\bigcup_{n=1}^\infty A_n.
$$

因为任意 $c_\alpha\neq0$，总可以取充分大的 $n$ 使

$$
|c_\alpha|\ge\frac1n.
$$

于是非零系数集合是可数个有限集之并，因此至多可数：

$$
\boxed{
\#\{\alpha:(x,e_\alpha)\neq0\}\le\aleph_0.
}
$$

这说明：

> Hilbert 空间虽然可能有不可数正规正交基，但每个具体向量只需要其中至多可数多个基向量。

---

## 3. 不可数正规正交基下的 Fourier 展开

设

$$
\{\alpha:(x,e_\alpha)\neq0\}
=
\{\alpha_1,\alpha_2,\ldots\}.
$$

则实际上

$$
\boxed{
x=
\sum_{n=1}^\infty
(x,e_{\alpha_n})e_{\alpha_n}.
}
$$

证明思路：

定义部分和

$$
S_N=
\sum_{n=1}^N
(x,e_{\alpha_n})e_{\alpha_n}.
$$

由于正规正交基是完备的，Parseval 恒等式成立：

$$
\boxed{
\|x\|^2
=
\sum_{\alpha\in A}|(x,e_\alpha)|^2.
}
$$

而非零项只有可数个，所以

$$
\|x\|^2
=
\sum_{n=1}^\infty
|(x,e_{\alpha_n})|^2.
$$

又由正交性，

$$
\|x-S_N\|^2
=
\|x\|^2
-
\sum_{n=1}^N
|(x,e_{\alpha_n})|^2.
$$

令 $N\to\infty$，右端趋于 $0$，故

$$
S_N\to x.
$$

因此

$$
x=
\sum_{n=1}^\infty
(x,e_{\alpha_n})e_{\alpha_n}.
$$

---

## 4. Parseval 恒等式在不可分 Hilbert 空间中仍成立

若 $\{e_\alpha\}_{\alpha\in A}$ 是正规正交基，则对任意 $x\in H$，

$$
\boxed{
\|x\|^2
=
\sum_{\alpha\in A}|(x,e_\alpha)|^2.
}
$$

这里不可数求和可定义为

$$
\sum_{\alpha\in A}a_\alpha
:=
\sup_{F\subset A,\ F\text{ 有限}}
\sum_{\alpha\in F}a_\alpha,
\qquad a_\alpha\ge0.
$$

但在 Hilbert 空间的 Fourier 系数情形中，由于非零项至多可数，因此最终仍退化成普通的可数级数。

---

## 5. 典型例子：$\ell^2(I)$

设 $I$ 是不可数集合，定义

$$
\ell^2(I)
=
\left\{
x=(x_i)_{i\in I}:
\sum_{i\in I}|x_i|^2<\infty
\right\}.
$$

对每个 $i\in I$，令 $e_i$ 为第 $i$ 个坐标为 $1$、其余坐标为 $0$ 的向量。

则

$$
\{e_i\}_{i\in I}
$$

是 $\ell^2(I)$ 的不可数正规正交基，因此 $\ell^2(I)$ 不可分。

但任意

$$
x=(x_i)_{i\in I}\in\ell^2(I)
$$

都只有至多可数个非零坐标。

因此

$$
x=\sum_{i\in I}x_i e_i
$$

实际上仍是一个可数级数。

---

## 6. 与 Hamel 基的区别

Hilbert 空间中的正规正交基与线性代数中的 Hamel 基不同。

### Hamel 基

要求任意向量都能表示成有限线性组合：

$$
x=\sum_{k=1}^N c_k e_k.
$$

### Hilbert 正规正交基

允许范数意义下的无穷级数：

$$
x=
\sum_{n=1}^\infty
(x,e_n)e_n.
$$

因此：

$$
\boxed{
\text{Hamel 基：有限线性组合}
}
$$

而

$$
\boxed{
\text{Hilbert 正规正交基：允许范数收敛的可数级数}
}
$$

---

## 7. 核心结论

设 $\{e_\alpha\}_{\alpha\in A}$ 是任意 Hilbert 空间 $H$ 的正规正交基，则对每个 $x\in H$：

1. 非零 Fourier 系数至多可数：
   $$
   \{\alpha:(x,e_\alpha)\neq0\}
   \text{ 至多可数};
   $$

2. 存在可数指标 $\alpha_1,\alpha_2,\ldots$ 使
   $$
   x=
   \sum_{n=1}^\infty
   (x,e_{\alpha_n})e_{\alpha_n};
   $$

3. Parseval 恒等式成立：
   $$
   \|x\|^2=
   \sum_{\alpha\in A}
   |(x,e_\alpha)|^2.
   $$

因此可以概括为

$$
\boxed{
\text{不可数 ONB}
\Longrightarrow
\text{每个向量的 Fourier 支撑至多可数}
\Longrightarrow
\text{仍可作通常的 Fourier 展开}.
}
$$

# Riesz表示定理

$
\begin{aligned}
&X'表示X上所有的连续线性泛函\\
&
\end{aligned}
$