# 实变函数

## 课程内容概览
- 集合论基础
- 测度论
- 可测函数
- 勒贝格积分
- 积分的极限定理
- 微分与积分
- L^p空间

## 第一章 集合论基础

### 1.1 集合的基本概念
- **定义**：具有一定性质的元素的全体，满足：无序性、互异性、确定性
- **元素与集合的关系**：属于（\(\in\)）或不属于（\(\notin\)）
- **表示方法**：列举法、描述法
- **罗素悖论**：集合不能包含自身作为元素，否则会导致矛盾
- **哥德尔定理**：任何包含初等算术的形式系统，若一致则不完全；其一致性无法在系统内证明

- **关键性质**：对任意无穷基数 \(\alpha\)：
  $$\alpha + \alpha = \alpha \quad \text{和} \quad \alpha \cdot \alpha = \alpha$$

- **无穷基数加法定理**：\(\alpha + \beta = \max(\alpha, \beta)\)（当至少一个是无穷基数时）
  
  **推论**：对任意无穷基数 \(\alpha < c\)，都有 \(\alpha + c = c\)

#### 1.9.12 两个集合并的势
- **命题**：若 \(|A \cup B| = c\)，则 \(|A| = c\) 或 \(|B| = c\)

- **证明**（切片法）
  不妨取与 \(A \cup B\) 等势的模型，记
  \[
  A \cup B = (0,1)^2.
  \]

  分两种情况：

  1. 若 \(\exists y_0 \in (0,1)\)，使得
    \[
    \{(x,y_0)\mid x\in(0,1)\}\subset A,
    \]
  1. 有限交是开集。
  2. 任意并是开集。

  相关点的定义：
  1. 内点：$x_0\in E$ 且 $\exists\delta>0$ 使 $B(x_0,\delta)\subset E$。
  2. 孤立点：$x_0\in E$ 且 $\exists\delta>0$ 使 $B(x_0,\delta)\cap E=\{x_0\}$。
  3. 边界点：$x_0\in \mathbb{R}^n$ 且任意邻域同时与 $E$、$E^c$ 相交。

  ### Lindelof 定理（$\mathbb{R}^n$）

  若 $F\subset \mathbb{R}^n$，$\Gamma$ 是 $F$ 的开覆盖，则存在至多可数子覆盖 $\Gamma'\subset \Gamma$ 覆盖 $F$。

  证明思路：对每个 $x\in F$，取 $G_x\in\Gamma$ 使 $x\in G_x$，再取有理中心和有理半径小球
  $$
  B(y_x,r_x)\subset G_x,
  $$
  利用有理点和有理半径的可数性得到至多可数子覆盖。

  ### Heine-Borel 定理

  若 $F$ 是有界闭集，$\Gamma$ 是 $F$ 的开覆盖，则存在有限子覆盖。

  证明思路：先由 Lindelof 定理取可数子覆盖
  $$
  \Gamma=\{G_1,G_2,\dots\},
  $$
  定义
  $$
  H_k=\left(\bigcup_{i=1}^{k}G_i\right)^c\cap F.
  $$
  则 $H_k$ 为下降闭集列。若每个 $H_k$ 非空，由 Cantor 闭区间套定理得
  $$
  \bigcap_{k=1}^{\infty}H_k\ne\varnothing,
  $$
  与 $\Gamma$ 覆盖 $F$ 矛盾。故存在 $t$ 使 $H_t=\varnothing$，即 $G_1,\dots,G_t$ 覆盖 $F$。

  反例（去掉有界条件）：
  $$
  F=\mathbb{R},\quad \Gamma=\{(-n,n):n\in\mathbb{N}\},
  $$
  有可数覆盖但无有限子覆盖。

  反例（去掉闭条件）：
  $$
  F=(0,1),\quad \Gamma=\{(\tfrac1n,1):n\in\mathbb{N}\},
  $$
  同样无有限子覆盖。

  ### $\mathbb{R}$ 中开集的结构

  若 $G\subset \mathbb{R}$ 是开集，则可表示为至多可数个两两不交开区间的并：
  $$
  G=\bigcup_{i=1}^{\infty}I_i,
  $$
  其中 $I_i$ 两两不交。

  在 $\mathbb{R}^n$ 中，可将开集表示为至多可数个小矩体的并（常见取法为有理端点的半开矩体）。
则x_n一定存在子列x_{n_k}，x_{n_k}\in F_1或x_{n_k}\in F_2\\
则x_0\in F_1'或x_0\in F_2'\\
故知(*)成立\\
\\
由F_1,F_2闭,F_1'\subset F_1,F_2'\subset F_2\\
则F_1'\cup F_2'\subset F_1\cup F_2\\
则(F_1\cup F_2)'\subset F_1\cup F_2\\
$
(2)
$设F=\cap _{\alpha \in I} F_{\alpha}\\
则F\subset F_{\alpha}\\
则F'\subset F_{\alpha}'\subset F_{\alpha}\\
\to F_{\alpha }'\subset\cap _{\alpha \in I} F_{\alpha}'=F$


Note:F_n闭,$\cup _{n=1}^{\infty}F_n$不一定是闭集.
反例:$F_n=[\frac{1}{n},1-\frac{1}{n}]$

若F_n=[-n,n]则$\cup F_n=R$

NOte:对于任意一个集合$E\subset R^n$,定义$E'\cup E=\overline {E}$称为E的闭包

定义:
若$A\subset B,\overline{A}=\overline{B}$，则称A在B中稠密

(Cantor闭区间套定理):
若F_n是有界闭集,且F_1,F_2,\cdots 下降
则$\cap _{k=1}^{\infty}F_k\ne \emptyset$

证明:$
(1)若\exists N,s.t.\forall k>N,F_K=F_N\\
则\subset _{k=1}^{\infty}F_k=F_N\ne \emptyset\\
(2)不妨设F_1,F_2,\cdots 互不包含\\
x_1\in F_1/F_2\\
x_2\in F_2/F_3\\
\vdots \\\
x_n\in F_n/F_{n+1}\\
则\{x_n\}_{n=1}^{\infty}\subset F_1\\
又由于聚点定理(任意有界列都有收敛子列)\\
i.e.任意有界集都有聚点\\
故知Cantro闭区间套定理成立\\
$

开集:
定义:称G$\subset$ R^n为开集,若G^c为闭集

开集的另一定义:
G开集$\iff \forall x_0 \in G,\exists \delta _0,s.t. B(x_0,\delta _0)\subset G$

证明两种定义等价:
$
\Rightarrow\\
G开,G^C闭\\
\forall x_0\in G,x_0 \notin G^C=G^c \cup (G^c)'\\
\exists n_0,s.t.B(x_0,\frac{1}{n})\cap G^c=\emptyset\\
则B(x_0,\frac{1}{n})\subset G
\Leftarrow\\
要证G开(G^c闭集)\\
\forall x_0\in G,\exists \delta _0,\\
s.t. B(x_0,\delta _0)\subset G\\
则B(x_0,\delta _0)\cap G^c=\emptyset\\
x_i\notin (G_c)'\\
G\cap (G^c)'=\emptyset\\
(G^c)'\subset G^c\\
故成立\\$
性质:
(1)有限交是开集
(2)任意并是开集
$
\forall E\subset R^n\\
E'=\{E的所有聚点构成的集合\}\\
\forall x_0\in E,\\
若\exists \delta _0\\
s.t. B(x_0,\delta _0)\subset E\\
则称x_0为E的内点\\
E^{o}=\{E的所有内地构成的集合\}\\
\forall x_0\in E\\
若\exists \delta _0\\
s.t. B(x_0,\delta _0)\cap E=\{x_0\}\\
则称x_0是孤立点\\
\forall x_0\in R^n,若\forall n\\
B(x_0,\frac{1}{n})\cap E\ne \emptyset\\ 
B(x_0,\frac{1}{n})\cap E^c\ne \emptyset\\
则称x_0为E的边界点\\$

th(lindelof定理):

$
F\subset R^n,\Gamma 是F的开覆盖\\
则存在\Gamma ' \subset \Gamma\\
\Gamma' 覆盖F,且\Gamma'至多可数\\
\\\\
证明:\\
\forall x\in F,\exists G_x\in \Gamma \\
s.t. G_x\subset \Gamma \\
故\exists \delta _x,s.t. B(x,\delta _x)\subset G_x\\
\exists 有理点y_x\\
r_x\in Q,s.t. \\
x\in B(y_x,r_x)\subset G_x\\
\\
\forall x \in F,\exists B(y_x,r_x),G_x\\
s.t.x\in B(y_x,r_x)\subset G_x\\
F\subset \cup _{x\in F}B(y_x,r_x)\\
而\cup _{x\in F}B(y_x,r_x)是至多可数的\\$

(Heine-Borel定理):
$设F是一有界闭集,\Gamma 是F的一个开覆盖\\
则\exists \Gamma '\subset \Gamma,\\
s.t. \Gamma '覆盖F且\Gamma '有限\\
证明:\\
(cantor有界闭集套定理)\cdots \\
不妨设\Gamma =\{G_1,G_2,\cdots ,G_n,\cdots\}\\
令H_k=(\cup _{i=1}^{k}G_i)^c\cap F\\
随着k增大,H_k逐渐减小\\
故H_k是一个下降列\\
若\forall k,H_k非空\\
则由Cantor有界闭集套定理\\
\cap _{k=1}^{\infty}H_k\ne \emptyset\\
经过德摩根公式运算即知矛盾\\若\exists t,s.t H_t为空集\\
则取子覆盖为G_1,G_2,\cdots ,G_t即可知原命题得证$

e.g.若去掉有界条件的反例:

$F=\mathbb{R}$（闭但无界），取开覆盖
\[
\Gamma=\{(-n,n):n\in\mathbb{N}\}.
\]
显然 $\mathbb{R}=\bigcup_{n=1}^{\infty}(-n,n)$，但任取有限子族
$(-n_1,n_1),\dots,(-n_k,n_k)$，其并仍为 $(-N,N)$（$N=\max n_i$），不能覆盖 $\mathbb{R}$。
故去掉“有界”后结论不成立。
