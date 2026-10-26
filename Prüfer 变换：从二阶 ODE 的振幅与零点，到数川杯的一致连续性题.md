# Prüfer 变换：从二阶 ODE 的振幅与零点，到数川杯的一致连续性题

> **专题定位**：二阶线性常微分方程；相平面；对称—反对称矩阵；能量法；Sturm 比较；振幅—相位分解；一致连续。  
> **两道核心题目**：① CMC 模拟题 $y''+q(x)y=0$ 的全局有界性；② 数川杯题 $f\circ g$ 的非周期性及更强的非一致连续性。
>
> **术语声明**：第一道题采用真正的 Prüfer 变量变换；第二道题采用由它启发的**相位绕圈（phase winding）方法**，并不是从不存在的 ODE 推导 Prüfer 微分方程。这个区别必须保留。

## 一、先从平面几何理解 Prüfer 变换

考虑

$$
\boxed{y''(x)+q(x)y(x)=0,\qquad q(x)>0,\quad q\in C^1.}
$$

一个二阶 ODE 等价于二维一阶系统。我们暂不固定归一化尺度，取任意 $h(x)>0$（$h\in C^1$）：

$$
 u(x)=y(x),\qquad v(x)=\frac{y'(x)}{h(x)},\qquad
 V(x)=\begin{pmatrix}v(x)\\u(x)\end{pmatrix}.
$$

由方程得

$$
\begin{aligned}
 u'&=hv,\\
 v'&=-\frac qh u-\frac{h'}h v.
\end{aligned}
$$

因此

$$
\boxed{
V'=M_hV,\qquad
M_h=\begin{pmatrix}-h'/h&-q/h\\h&0\end{pmatrix}.}
$$

只要 $y$ 是非零解，就不可能同时有 $y=y'=0$（否则由初值问题唯一性推出恒零），所以 $V(x)\neq0$。能够选取连续展开的角 $\theta(x)$，写成

$$
\boxed{
V=r\begin{pmatrix}\cos\theta\\\sin\theta\end{pmatrix},
\qquad r=\sqrt{y^2+\frac{y'^2}{h^2}}>0.}
$$

这里把 $v$ 放在第一坐标、$u=y$ 放在第二坐标，仅为了让常系数振子的角度按逆时针方向增加；换成 $(u,v)^T$ 也完全可以，只需相应改变角度约定。

### 1. 为什么求振幅用内积、求相位用行列式？

对任意非零平面曲线 $V=r(\cos\theta,\sin\theta)^T$：

$$
(r^2)'=2\langle V,V'\rangle,\qquad
\theta'=\frac{\det(V,V')}{r^2}.
$$

**几何解释**：内积只提取速度的径向投影，行列式消去与位置向量平行的速度而提取切向运动。因此：

- 要证明 $|y|\le r$ 有界，就设法控制 $r^2$；
- 要研究 $y=r\sin\theta$ 的零点，就设法控制 $\theta'$。

### 2. 一般尺度 $h$ 下的统一公式

利用 $V'=(v',u')^T$ 计算：

$$
\begin{aligned}
\frac{r'}r
&=\left(h-\frac qh\right)\sin\theta\cos\theta
 -\frac{h'}h\cos^2\theta,\\[3pt]
\theta'
&=h\cos^2\theta+\frac qh\sin^2\theta
 +\frac{h'}h\sin\theta\cos\theta.
\end{aligned}
\tag{1}
$$

**最重要的策略**：先明确证明目标，再选择 $h$ 消去对该目标最不利的项，而不是机械地背一个固定版本的 Prüfer 公式。

## 二、研究有界性：选择 $h=\sqrt q$

为了让 (1) 式振幅方程中的交叉项消失，主动要求

$$
 h-\frac qh=0\quad\Longleftrightarrow\quad h=\sqrt q.
$$

记 $\omega=\sqrt q$，则

$$
V=\begin{pmatrix}y'/\omega\\y\end{pmatrix},\qquad
V'=\left[
\underbrace{\omega\begin{pmatrix}0&-1\\1&0\end{pmatrix}}_{\text{反对称：瞬时旋转}}
+
\underbrace{\begin{pmatrix}-\omega'/\omega&0\\0&0\end{pmatrix}}_{\text{对称：坐标伸缩}}
\right]V.
$$

对任何反对称矩阵 $S^T=-S$，恒有 $V^TSV=0$，即纯旋转不改变范数。于是

$$
\begin{aligned}
 r^2&=y^2+\frac{y'^2}{q},\\
 (r^2)'&=-\frac{q'}{q^2}y'^2,\\
 \frac{r'}r&=-\frac{q'}{2q}\cos^2\theta.
\end{aligned}
\tag{2}
$$

与之相配套的相位公式为

$$
\boxed{\theta'=\sqrt q+\frac{q'}{2q}\sin\theta\cos\theta.}
\tag{3}
$$

注意 (3) 中 $\theta'$ **未必处处为正**，因为 $q'$ 的修正项可能较大。这就是研究零点间距时常常改用固定尺度的原因。

### CMC 模拟题：证明所有解有界

**题目** 设 $q\in C^1([0,\infty))$，$q(x)\ge\lambda>0$，且 $q'$ 只有有限个零点。若 $y\in C^2([0,\infty))$ 满足

$$
 y''+q(x)y=0,
$$

证明 $y$ 在 $[0,\infty)$ 上有界。

**证明（Prüfer/能量形式）** 由于 $q'$ 连续且只有有限个零点，存在 $R>0$，使 $q'$ 在 $[R,\infty)$ 上不变号。

**情况 1：$q'\ge0$**。由 (2) 得 $(r^2)'\le0$，于是

$$
 |y(x)|\le r(x)\le r(R),\qquad x\ge R.
$$

**情况 2：$q'\le0$**。此时不能直接使用 $r^2$，但可考虑加权半径平方

$$
 E(x)=q(x)r(x)^2=y'(x)^2+q(x)y(x)^2.
$$

直接求导：

$$
\boxed{E'(x)=q'(x)y(x)^2\le0.}
$$

于是

$$
 \lambda y(x)^2\le E(x)\le E(R),\qquad x\ge R,
$$

从而

$$
 |y(x)|\le\sqrt{\frac{E(R)}\lambda}.
$$

无论哪一种情形，$y$ 在尾部有界；在紧区间 $[0,R]$ 上，由连续性亦有界，故全局有界。$\square$

**归纳**：第一个能量 $r^2=y^2+y'^2/q$ 适合 $q'\ge0$；第二个能量 $qr^2=y'^2+qy^2$ 适合 $q'\le0$。它们不是互不相关的凑法，而是同一 Prüfer 半径的两个权重。

### 进一步推广：不要求最终单调

由 (2) 并记 $(q')_-:=\max\{-q',0\}$，得到

$$
 \frac{r'}r\le\frac{(q')_-}{2q}.
$$

故

$$
\boxed{
r(x)\le r(R)\exp\!\left[\frac12\int_R^x\frac{(q'(t))_-}{q(t)}\,dt\right].}
$$

因此如果

$$
 \int_R^\infty\frac{(q')_-}{q}<\infty,
$$

则 $r$ 及 $y$ 全局有界。这是 **能量法 $+$ Grönwall** 的统一写法。

## 三、研究零点间距：选择固定尺度 $h=\sqrt\lambda$

现在假定 $q(x)\ge\lambda>0$，目标是控制零点间距。这时选定

$$
V_\lambda=\begin{pmatrix}y'/\sqrt\lambda\\y\end{pmatrix}
=r_\lambda\begin{pmatrix}\cos\theta_\lambda\\\sin\theta_\lambda\end{pmatrix}.
$$

因为 $h=\sqrt\lambda$ 是常数，(1) 中的 $h'/h$ 项消失：

$$
\begin{aligned}
\theta_\lambda'
&=\sqrt\lambda\cos^2\theta_\lambda
+\frac q{\sqrt\lambda}\sin^2\theta_\lambda\\
&\ge\sqrt\lambda.
\end{aligned}
$$

非零解的零点简单，且

$$
 y(x)=0\iff\theta_\lambda(x)\in\pi\mathbb Z.
$$

设 $a<b$ 是相邻零点。由于 $\theta_\lambda$ 严格递增，相位恰增加 $\pi$，故

$$
 \pi=\int_a^b\theta_\lambda'(x)\,dx\ge\sqrt\lambda(b-a).
$$

得到 Sturm 型估计

$$
\boxed{b-a\le\frac\pi{\sqrt\lambda}.}
$$

特别地，相位无限增长，故所有非零解都具有无穷多个零点。

若还有 $q\le\Lambda$，对 $h=\sqrt\Lambda$ 重复论证即可得到

$$
\boxed{\frac\pi{\sqrt\Lambda}\le b-a\le\frac\pi{\sqrt\lambda}.}
$$

**两种坐标的区别**：变尺度 $h=\sqrt q$ 让振幅微分公式简洁；固定尺度 $h=\sqrt\lambda$ 让相位微分公式有正下界。不同尺度得到的 $r,\theta$ 一般不是同一对函数。

## 四、从 Sturm–Prüfer 走向一致连续性

### 1. 二阶 ODE 的一个应用定理

**定理** 若 $q:[0,\infty)\to(0,\infty)$ 连续，$q(x)\to+\infty$，并且 $y$ 是非零解

$$
 y''+q(x)y=0,
$$

那么

$$
\boxed{y\text{ 在 }[0,\infty)\text{ 上一致连续}\iff y(x)\to0.}
$$

**证明** 任给 $M>0$，存在 $R_M$ 使得 $q(x)\ge M$（$x\ge R_M$）。由上一节的零点间距估计，所有位于足够远尾部的相邻零点间距不超过 $\pi/\sqrt M$。令 $M\to\infty$，可知零点间距趋于零。

若 $y$ 一致连续，任给 $\varepsilon>0$，取一致连续所对应的 $\delta>0$；再令 $M$ 足够大使 $\pi/\sqrt M<\delta$。于是每个充分大的点都离某个零点不到 $\delta$，所以 $|y(x)|<\varepsilon$。得 $y(x)\to0$。

反之，若连续函数 $y(x)\to0$，它在尾部的振幅任意小，在前面的紧区间上一致连续，故在整个半轴上一致连续。$\square$

**警告**：仅 $q\ge\lambda>0$ 不足以保证所有解的全局有界性；它控制的是零点间距。要控制振幅，还需要能量或其他额外结构。

### 2. 由此得到的启发

对于一般振荡函数

$$
 F(x)=A(x)\sin\phi(x),
$$

判断一致连续通常需要同时考虑：

- 相位 $\phi$ 是否在越来越短的区间内跨越固定角度；
- 振幅 $A$ 是否保持一定大小，或在无穷远处衰减到零。

例如 $\sin(x^2)$ 不一致连续；但 $x^{-1/2}\sin(x^2)$ 在 $[1,\infty)$ 上一致连续，因为振幅趋于零。

## 五、数川杯：将复合函数改写成相位绕圈问题

**原题** $f:\mathbb R\to\mathbb R$ 为非常值连续周期函数，$g:\mathbb R\to\mathbb R$ 连续，若

$$
 \limsup_{x\to+\infty}\frac{|g(x)|}{x}=+\infty,
$$

证明 $f\circ g$ 不是周期函数。

实际上更强地证明其不是一致连续函数。

### 1. 构造相位（不是 Prüfer ODE）

设 $T>0$ 是 $f$ 的周期，定义

$$
\boxed{
\theta(x)=\frac{2\pi}{T}g(x),\qquad
H(s)=f\!\left(\frac{T}{2\pi}s\right).
}
$$

于是 $H$ 是非常值连续 $2\pi$ 周期函数，并且

$$
\boxed{f(g(x))=H(\theta(x)).}
$$

若 $\theta$ 在一个短区间中变化超过 $2\pi$，由介值定理可知 $H$ 会在其中经历**固定振荡幅度**

$$
\operatorname{osc}H=M-m>0,
\qquad M=\max H,\quad m=\min H.
$$

这与 Prüfer 角“每跨越 $\pi$ 就经过一个零点”的原理在几何直觉上相同：**相位跨越迫使可观测函数完成一次振荡**。

### 2. 直接用一致连续性约束相位变化

反设 $F=H\circ\theta=f\circ g$ 一致连续。取

$$
 \varepsilon=\frac{M-m}{2}>0.
$$

存在 $\delta>0$ 使得

$$
 |a-b|<\delta\implies |F(a)-F(b)|<\varepsilon.
$$

声称

$$
\boxed{|a-b|<\delta\implies|\theta(a)-\theta(b)|<2\pi.}
\tag{4}
$$

若否，存在 $a,b$ 满足 $|a-b|<\delta$ 且 $|\theta(a)-\theta(b)|\ge2\pi$。由于 $\theta$ 连续，$\theta([a,b])$ 包含完整一圈。$H$ 在任意一整圈上都能达到 $M,m$，故存在 $s,t$ 位于 $a,b$ 之间，使

$$
 |F(s)-F(t)|=M-m>\varepsilon,
$$

但 $|s-t|\le |a-b|<\delta$，矛盾。故 (4) 成立。

### 3. 把局部相位限制累加成全局限制

取 $x>0$，将 $[0,x]$ 分为 $N=\lfloor2x/\delta\rfloor+1$ 段，则每段长度小于 $\delta$。由 (4) 和三角不等式，

$$
 \begin{aligned}
 |\theta(x)-\theta(0)|
 &<2\pi N\\
 &\le2\pi\left(\frac{2x}{\delta}+1\right).
 \end{aligned}
$$

因此

$$
 |\theta(x)|\le |\theta(0)|+\frac{4\pi}{\delta}x+2\pi,
$$

进而 $|\theta(x)|=O(x)$，也即 $|g(x)|=O(x)$，与

$$
 \limsup_{x\to\infty}\frac{|g(x)|}{x}=\infty
$$

矛盾。故 $F$ 不一致连续，进而不可能是连续周期函数。$\square$

### 4. 为什么此法是 Prüfer 的“思想推广”，不是 Prüfer 方程？

| 比较点 | 真实的 Prüfer 方法 | 数川杯相位绕圈方法 |
|---|---|---|
| 起点 | 二阶线性 ODE $y''+qy=0$ | 周期函数复合 $f\circ g$ |
| 相位 | 由 $(y,y'/h)$ 的极角定义 | 直接规定 $\theta=2\pi g/T$ |
| 研究手段 | 微分方程控制 $\theta'$、$r'$ | 连续性、介值定理、有限区间分割 |
| 振荡信息 | 每增加 $\pi$ 出现零点 | 每跨越 $2\pi$ 经历 $M-m$ 振荡 |
| 结论 | 零点间距、振幅有界性 | 复合函数不一致连续、非周期性 |

本题甚至没有要求 $g$ 可导，因此硬去构造 $\theta'$ 是没有根据的。最自然的方法是研究**相位在短区间内的总变化量**，这比研究瞬时角速度更一般。

### 5. 与原稿证明的对应关系

原稿用逆否命题先证：

$$
 \forall\delta>0,\ \exists x\ge0:\quad |g(x+\delta)-g(x)|>T.
$$

然后利用介值定理找出任意靠近的一对最大、最小值对应的自变量。

本节的新证明则反过来从 $F$ 一致连续出发，直接得到

$$
\forall |a-b|<\delta,\quad |g(a)-g(b)|<T,
$$

再分段累加得到 $g(x)=O(x)$。两者本质相同，后一写法省去了单独陈述反证引理的步骤。

## 六、解题时的选择原则与容易混淆的点

1. **研究振幅**：先构造正定二次型（半径平方），让内积 $V\cdot V'$ 尽量消去交叉项；常取 $h=\sqrt q$。
2. **研究零点**：用相位与行列式 $\det(V,V')$；若 $q\ge\lambda$，常取固定 $h=\sqrt\lambda$。
3. **研究一致连续性**：直接看“短距离下函数值变化能否仍有固定下界”。若有已知周期波形，借助相位跨越和介值定理往往比对导数估计更稳健。
4. **不要把高频振荡等同于不一致连续**：若振幅趋于零，函数仍可能一致连续。
5. **不要把相位净增长与单调旋转混淆**：$g$ 可以上下往返；只要某一短区间两端的相位差跨越一整圈，连续性就迫使函数完成一轮振荡。
6. **不要混淆题目目标**：数川杯原题要证“不是周期函数”，证明“不是一致连续”是一条更强、因而充分的路线。

## 七、建议练习

**练习 1（ODE，能量）** 设 $y''+(1+x^2)y=0$、$y(0)=0$、$y'(0)=1$。不用求通解证明 $|y(x)|\le1$；并证明相邻零点间距不超过 $\pi$。

**练习 2（ODE，一致连续）** 设 $q(x)\to\infty$ 且 $q(x)>0$。为什么从“所有解零点越来越密集”只能推出“若一致连续则解趋于零”，而不能直接推出“不一致连续”？

**练习 3（相位绕圈）** 设 $f$ 为非常值连续周期函数，$g(x)=x^2\sin x$。不求任何导数，证明 $f\circ g$ 不一致连续。

---

**相关阅读**：`从一道数川杯一致连续问题谈起_原稿整理.md`（题目原稿结构及校订）；Sturm 比较定理；Prüfer 振幅—相位方程；Lyapunov 能量估计；一致连续的反证序列法。
