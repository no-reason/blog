设 \(V\) 是有限维向量空间，\(T\in \operatorname{End}(V)\)。Jordan–Chevalley 分解指

\[
T=S+N,
\]

其中

- \(S\) 是半单（在代数闭包上可对角化）；
- \(N\) 是幂零；
- \(SN=NS\)。

要证明：满足这些条件的 \(S,N\) 唯一。

以下先假设底域 \(K\) 代数闭；一般情形可先把标量扩张到 \(\overline K\)，结论随之得到。

---

令 \(V_\lambda\) 表示 \(T\) 对应于特征值 \(\lambda\) 的广义特征空间：

\[
V_\lambda=\ker (T-\lambda I)^m
\]

（当 \(m\) 足够大时）。有主分解

\[
V=\bigoplus_{\lambda}V_\lambda.
\]

关键是证明：在 \(V_\lambda\) 上，

\[
S=\lambda I,\qquad N=T-\lambda I.
\]

这就说明 \(S,N\) 完全由 \(T\) 决定，从而唯一。

---

## 关键论证

因为 \(S\) 与 \(N\) 交换，且 \(S\) 半单，所以可按 \(S\) 的特征空间分解：

\[
V=\bigoplus_{\mu} E_\mu(S),
\]

其中

\[
E_\mu(S)=\ker(S-\mu I).
\]

又因为 \(SN=NS\)，所以每个 \(E_\mu(S)\) 都被 \(N\) 保持：

\[
N(E_\mu(S))\subseteq E_\mu(S).
\]

于是，在 \(E_\mu(S)\) 上，

\[
T=S+N=\mu I+N.
\]

而 \(N\) 是幂零的，所以 \(\mu I+N\) 的唯一特征值是 \(\mu\)。更具体地说，

\[
(T-\mu I)|_{E_\mu(S)}=N|_{E_\mu(S)}
\]

是幂零算子。

现在取 \(v\in V_\lambda\)。将其按 \(S\) 的特征空间分解：

\[
v=\sum_\mu v_\mu,\qquad v_\mu\in E_\mu(S).
\]

由于 \(v\in V_\lambda\)，有某个 \(r\) 使得

\[
(T-\lambda I)^r v=0.
\]

对每个分量 \(v_\mu\)，因为 \(E_\mu(S)\) 对 \(T\) 不变，所以

\[
(T-\lambda I)^r v_\mu=0.
\]

但在 \(E_\mu(S)\) 上，

\[
T-\lambda I=(\mu-\lambda)I+N.
\]

若 \(\mu\ne\lambda\)，则 \((\mu-\lambda)I+N\) 可逆：因为 \(N\) 幂零，设 \(N^q=0\)，则

\[
\bigl((\mu-\lambda)I+N\bigr)^{-1}
=
\frac1{\mu-\lambda}
\sum_{j=0}^{q-1}
\left(-\frac{N}{\mu-\lambda}\right)^j.
\]

因此，当 \(\mu\ne\lambda\) 时，

\[
(T-\lambda I)^r v_\mu=0
\]

只能推出

\[
v_\mu=0.
\]

故 \(v\) 只有 \(\mu=\lambda\) 的分量，即

\[
V_\lambda\subseteq E_\lambda(S).
\]

反过来，在 \(E_\lambda(S)\) 上，

\[
T-\lambda I=N
\]

是幂零，所以

\[
E_\lambda(S)\subseteq V_\lambda.
\]

于是

\[
\boxed{V_\lambda=E_\lambda(S)}.
\]

因此，在 \(V_\lambda\) 上 \(S\) 就是标量算子：

\[
\boxed{S|_{V_\lambda}=\lambda I}.
\]

而

\[
\boxed{N|_{V_\lambda}=T|_{V_\lambda}-\lambda I}.
\]

这些表达式完全由 \(T\) 的广义特征空间分解决定。

---

## 推出唯一性

若还有另一组 Jordan–Chevalley 分解

\[
T=S'+N',
\]

其中 \(S'\) 半单、\(N'\) 幂零且 \(S'N'=N'S'\)，那么按上面的结论，对每个 \(V_\lambda\)，都有

\[
S|_{V_\lambda}=\lambda I=S'|_{V_\lambda}.
\]

又因为

\[
V=\bigoplus_\lambda V_\lambda,
\]

所以

\[
S=S'.
\]

进而

\[
N=T-S=T-S'=N'.
\]

故

\[
\boxed{S=S',\qquad N=N'.}
\]

这就证明了 Jordan–Chevalley 分解的唯一性。

不一定。

\(AB=BA\) 只能保证：**\(B\) 会把 \(A\) 的某些“由 \(A\) 自然定义”的子空间保持住**，例如特征子空间、广义特征子空间、\(\ker p(A)\)、\(\operatorname{im} p(A)\) 等；但任意一个 \(A\)-不变子空间未必是 \(B\)-不变的。

反例：

\[
A=\begin{pmatrix}
1&0\\
0&1
\end{pmatrix}=I,\qquad
B=\begin{pmatrix}
0&1\\
0&0
\end{pmatrix}.
\]

显然 \(AB=BA\)，因为 \(A=I\)。

取子空间

\[
W=\operatorname{span}\{e_2\}.
\]

由于 \(A e_2=e_2\in W\)，所以 \(W\) 是 \(A\)-不变子空间。

但

\[
B e_2=e_1\notin W,
\]

所以 \(W\) 不是 \(B\)-不变子空间。

---

不过，下列结论成立：

若 \(AB=BA\)，则对任意多项式 \(p\)，有

\[
Bp(A)=p(A)B.
\]

因此：

\[
B(\ker p(A))\subseteq \ker p(A).
\]

特别地，若 \(\lambda\) 是 \(A\) 的特征值，则

\[
E_\lambda(A)=\ker(A-\lambda I)
\]

以及广义特征空间

\[
V_\lambda(A)=\ker(A-\lambda I)^m
\]

都是 \(B\)-不变的。

证明例如对 \(v\in\ker(A-\lambda I)^m\)，有

\[
(A-\lambda I)^m(Bv)
=
B(A-\lambda I)^m v
=
0,
\]

故 \(Bv\in\ker(A-\lambda I)^m\)。

这也是 Jordan–Chevalley 分解唯一性证明中使用的结论：由 \(SN=NS\)，可得 \(S\) 的特征空间被 \(N\) 保持；并不是说所有 \(S\)-不变子空间都必然被 \(N\) 保持。

是的，但要区分底域是否代数闭（通常在 \(\mathbb C\) 上讨论时没有问题）。

设 \(A,B\in M_n(\mathbb C)\) 且

\[
AB=BA.
\]

对 \(A\) 的特征值 \(\lambda\)，其根子空间（广义特征空间）为

\[
V_\lambda(A)=\ker(A-\lambda I)^r
\]

，其中 \(r\) 充分大（例如 \(r=n\) 即可）。

由于 \(A\) 与 \(B\) 可交换，所以 \(B\) 也与 \((A-\lambda I)^r\) 可交换：

\[
(A-\lambda I)^rB=B(A-\lambda I)^r.
\]

若 \(v\in V_\lambda(A)\)，则

\[
(A-\lambda I)^r v=0.
\]

因此

\[
(A-\lambda I)^r(Bv)
=
B(A-\lambda I)^r v
=
0.
\]

故

\[
Bv\in V_\lambda(A).
\]

所以确实有

\[
\boxed{B(V_\lambda(A))\subseteq V_\lambda(A).}
\]

即：**\(A\) 的每个根子空间都是 \(B\)-不变子空间。**

---

在复数域上，这还可以推出：每个非零根子空间中都有 \(A,B\) 的公共特征向量。

证明如下。固定 \(A\) 的一个根子空间 \(V_\lambda(A)\)。它被 \(B\) 保持，因此可以考虑限制算子

\[
B|_{V_\lambda(A)}.
\]

由于 \(\mathbb C\) 代数闭，\(B|_{V_\lambda(A)}\) 存在特征值 \(\mu\)，于是存在非零向量 \(u\in V_\lambda(A)\)，使

\[
Bu=\mu u.
\]

令

\[
E=\ker\bigl(B|_{V_\lambda(A)}-\mu I\bigr).
\]

则 \(E\neq 0\)。又因为 \(AB=BA\)，可知 \(E\) 对 \(A\) 也不变：

\[
B(Au)=A(Bu)=A(\mu u)=\mu Au,
\]

所以 \(Au\in E\)。

而 \(E\subseteq V_\lambda(A)\)，故在 \(E\) 上，

\[
(A-\lambda I)^r=0.
\]

于是 \((A-\lambda I)|_E\) 是幂零算子，特别地其核非零。取

\[
0\ne v\in\ker\bigl((A-\lambda I)|_E\bigr),
\]

则

\[
Av=\lambda v.
\]

同时 \(v\in E\)，故

\[
Bv=\mu v.
\]

所以

\[
\boxed{Av=\lambda v,\qquad Bv=\mu v.}
\]

这就是所求的公共特征向量。

---

因此，在 \(\mathbb C\) 上可以总结为：

\[
\boxed{
AB=BA
\Longrightarrow
\begin{cases}
\text{\(A\) 的每个根子空间都被 \(B\) 保持；}\\
\text{\(A\) 的每个非零根子空间中都存在 \(A,B\) 的公共特征向量。}
\end{cases}}
\]

但在 \(\mathbb R\) 上第二句话不一定对，因为 \(B\) 未必有实特征向量。例如

\[
A=I,\qquad
B=\begin{pmatrix}0&-1\\1&0\end{pmatrix}.
\]

二者可交换，且 \(A\) 唯一的根子空间是整个 \(\mathbb R^2\)，它当然被 \(B\) 保持；但 \(B\) 在 \(\mathbb R\) 上没有特征向量，所以不存在实的公共特征向量。

这里确实有一个术语上的习惯差异，需要区分。

设 \(A\in M_n(\mathbb F)\)，\(\lambda\) 是 \(A\) 的特征值。考虑递增链

\[
\ker(A-\lambda I)
\subseteq
\ker(A-\lambda I)^2
\subseteq \cdots
\subseteq
\ker(A-\lambda I)^k
\subseteq\cdots .
\]

由于空间有限维，它必定在某一步稳定。

---

## 通常的标准定义

通常说 \(\lambda\) 对应的**根子空间**（也称广义特征子空间）时，指的是这个稳定后的空间：

\[
\boxed{
V_\lambda
=
\bigcup_{k\ge 1}\ker(A-\lambda I)^k
=
\ker(A-\lambda I)^r
\quad (r\text{充分大}).
}
\]

例如直接取 \(r=n\) 一定可以：

\[
V_\lambda=\ker(A-\lambda I)^n.
\]

但这只是一个方便的上界，不一定是最小的指数。

---

## 与最小多项式的关系

若 \(A\) 的最小多项式中 \((x-\lambda)\) 的次数为 \(s\)，即

\[
m_A(x)=(x-\lambda)^s q(x),
\qquad q(\lambda)\ne 0,
\]

那么恰好有

\[
\boxed{
V_\lambda=\ker(A-\lambda I)^s.
}
\]

这里的 \(s\) 是使核空间稳定所需的最小指数：

\[
\ker(A-\lambda I)^s
=
\ker(A-\lambda I)^{s+1}
=
\cdots.
\]

在 Jordan 标准形下，\(s\) 就是特征值 \(\lambda\) 对应的**最大 Jordan 块的大小**。

---

## 所以 \(\ker(A-\lambda I)^k\) 是什么？

对任意 \(k\ge 1\)，

\[
\ker(A-\lambda I)^k
\]

都是 \(A\)-不变子空间，包含那些满足

\[
(A-\lambda I)^k v=0
\]

的向量。

有些教材也会把它叫作“\(k\) 阶根子空间”或“第 \(k\) 阶广义特征子空间”；但若不加“\(k\) 阶”这一限定，**“\(\lambda\) 的根子空间”通常特指稳定后的最大者**：

\[
\ker(A-\lambda I)^s.
\]

因此更严谨地说：

\[
\boxed{
\begin{aligned}
\ker(A-\lambda I)^k
&:\text{ 第 \(k\) 阶广义特征空间（或 \(k\) 阶根子空间）；}\\
V_\lambda=\ker(A-\lambda I)^s
&:\text{ \(\lambda\) 对应的根子空间／广义特征子空间。}
\end{aligned}
}
\]

其中 \(s\) 是最小多项式中 \((x-\lambda)^s\) 的指数。

---

例如，若

\[
A\sim
\begin{pmatrix}
J_3(\lambda)&0\\
0&J_2(\lambda)
\end{pmatrix},
\]

则最小多项式含有 \((x-\lambda)^3\)，所以

\[
V_\lambda=\ker(A-\lambda I)^3.
\]

并且通常有严格包含：

\[
\ker(A-\lambda I)
\subsetneq
\ker(A-\lambda I)^2
\subsetneq
\ker(A-\lambda I)^3,
\]

而从三次开始稳定：

\[
\ker(A-\lambda I)^3
=
\ker(A-\lambda I)^4
=
\cdots.
\]

在你前面“若 \(AB=BA\)，则 \(B\) 保持 \(A\) 的每个根子空间”的说法中，使用的是稳定后的

\[
V_\lambda=\ker(A-\lambda I)^s.
\]

事实上更强：对**每个** \(k\ge 1\)，都有

\[
B\bigl(\ker(A-\lambda I)^k\bigr)
\subseteq
\ker(A-\lambda I)^k.
\]

是，一定是。

设 \(A,B\in M_n(\mathbb F)\) 满足

\[
AB=BA.
\]

则对任意标量 \(\lambda\) 和任意正整数 \(k\)，都有

\[
\boxed{
B\bigl(\ker(A-\lambda I)^k\bigr)
\subseteq
\ker(A-\lambda I)^k.
}
\]

也就是说，\(A\) 的每个 \(k\) 阶广义特征子空间（\(k\) 阶根子空间）都是 \(B\)-不变子空间。

证明很直接。由 \(AB=BA\)，有

\[
(A-\lambda I)B=B(A-\lambda I).
\]

因此取 \(k\) 次幂：

\[
(A-\lambda I)^kB=B(A-\lambda I)^k.
\]

对任意

\[
v\in \ker(A-\lambda I)^k,
\]

有

\[
(A-\lambda I)^k v=0.
\]

从而

\[
(A-\lambda I)^k(Bv)
=
B(A-\lambda I)^k v
=
B0
=
0.
\]

所以

\[
Bv\in\ker(A-\lambda I)^k.
\]

故结论成立。

注意“不变”这里是指

\[
B(W)\subseteq W.
\]

若 \(B\) 可逆，则还可以得到 \(B(W)=W\)；但一般 \(B\) 不可逆时通常只能保证包含关系。


不能。\(AB=BA\) 一般只能推出（在 \(\mathbb C\) 等代数闭域上）

\[
\boxed{\text{\(A,B\) 可以同时上三角化}}
\]

但**不能**推出它们可以同时化为各自的 Jordan 标准形。

你前面的结论说明：\(A\) 的每个广义特征空间

\[
\ker(A-\lambda I)^k
\]

都被 \(B\) 保持。于是可以在这些不变子空间中继续寻找 \(B\) 的特征向量，最终构造公共特征向量，并归纳得到共同的上三角形基。

但“同时上三角化”远弱于“同时 Jordan 化”。原因是：即使基向量可以共同组织成上三角结构，\(A\) 的 Jordan 链与 \(B\) 的 Jordan 链也未必兼容。

---

## 反例

取

\[
A=J_3(0)
=
\begin{pmatrix}
0&1&0\\
0&0&1\\
0&0&0
\end{pmatrix},
\qquad
B=A^2=
\begin{pmatrix}
0&0&1\\
0&0&0\\
0&0&0
\end{pmatrix}.
\]

显然

\[
AB=A^3=0=BA.
\]

所以 \(A,B\) 可交换。

\(A\) 已经是一个 \(3\) 阶 Jordan 块；但是

\[
B=A^2=
\begin{pmatrix}
0&0&1\\
0&0&0\\
0&0&0
\end{pmatrix}
\]

不是 Jordan 标准形。

事实上 \(B\) 的 Jordan 标准形是

\[
J_2(0)\oplus J_1(0)
=
\begin{pmatrix}
0&1&0\\
0&0&0\\
0&0&0
\end{pmatrix},
\]

因为 \(B\neq0\) 而 \(B^2=0\)。

现在若存在同一个可逆矩阵 \(P\)，使得

\[
P^{-1}AP=J_3(0)
\]

且 \(P^{-1}BP\) 也是 Jordan 标准形，那么由 \(B=A^2\) 可得

\[
P^{-1}BP
=
P^{-1}A^2P
=
(P^{-1}AP)^2
=
J_3(0)^2
=
\begin{pmatrix}
0&0&1\\
0&0&0\\
0&0&0
\end{pmatrix}.
\]

但这个矩阵不是 Jordan 标准形，矛盾。

所以 \(A,B\) 不存在同一组基使它们**都**成为 Jordan 标准形。

---

总结：

\[
\boxed{
AB=BA
\Longrightarrow
\text{可同时上三角化（在代数闭域上）}
}
\]

但通常只有

\[
\boxed{
AB=BA
\centernot\Longrightarrow
\text{可同时 Jordan 化}.
}
\]

有些额外条件下可以同时对角化。例如，若 \(A,B\) 都可对角化且 \(AB=BA\)，则它们可以同时对角化。


下面完全不用商空间，只用“先找公共特征向量 + 分块矩阵归纳”来证明。默认底域是 \(\mathbb C\)（或任意代数闭域）。

设 \(V=\mathbb C^n\)，且

\[
AB=BA.
\]

---

# 1. \(AB=BA\Rightarrow A,B\) 可同时上三角化

对 \(n\) 作归纳。

## \(n=1\)

显然成立。

---

## 归纳步骤

设结论对所有 \(n-1\) 阶矩阵成立。现在考虑 \(A,B\in M_n(\mathbb C)\)，且

\[
AB=BA.
\]

### 第一步：找一个公共特征向量

取 \(A\) 的一个特征值 \(\lambda\)，并令

\[
E_\lambda(A)=\ker(A-\lambda I).
\]

这是非零空间。

对任意 \(v\in E_\lambda(A)\)，即 \(Av=\lambda v\)，有

\[
A(Bv)=B(Av)=B(\lambda v)=\lambda Bv.
\]

所以

\[
Bv\in E_\lambda(A).
\]

即

\[
B(E_\lambda(A))\subseteq E_\lambda(A).
\]

因此 \(B\) 在非零空间 \(E_\lambda(A)\) 上的限制

\[
B|_{E_\lambda(A)}
\]

有特征向量。于是存在 \(0\ne v_1\in E_\lambda(A)\) 和 \(\mu\in\mathbb C\)，使

\[
Av_1=\lambda v_1,\qquad Bv_1=\mu v_1.
\]

所以 \(v_1\) 是 \(A,B\) 的公共特征向量。

---

### 第二步：写成分块矩阵

将 \(v_1\) 扩充为一组基：

\[
(v_1,v_2,\dots,v_n).
\]

由于

\[
Av_1=\lambda v_1,\qquad Bv_1=\mu v_1,
\]

所以在这组基下，二者都具有如下分块形式：

\[
A=
\begin{pmatrix}
\lambda & \alpha\\
0&A_1
\end{pmatrix},
\qquad
B=
\begin{pmatrix}
\mu & \beta\\
0&B_1
\end{pmatrix},
\]

其中

\[
\alpha,\beta\in M_{1,n-1}(\mathbb C),
\qquad
A_1,B_1\in M_{n-1}(\mathbb C).
\]

注意左下角为零，正是因为直线

\[
\operatorname{span}\{v_1\}
\]

同时被 \(A,B\) 保持。

---

### 第三步：由 \(AB=BA\) 推出低阶块可交换

直接计算：

\[
AB=
\begin{pmatrix}
\lambda\mu & \lambda\beta+\alpha B_1\\
0&A_1B_1
\end{pmatrix},
\]

而

\[
BA=
\begin{pmatrix}
\mu\lambda & \mu\alpha+\beta A_1\\
0&B_1A_1
\end{pmatrix}.
\]

由 \(AB=BA\)，比较右下角分块，得到

\[
\boxed{A_1B_1=B_1A_1.}
\]

由归纳假设，存在 \(P_1\in GL_{n-1}(\mathbb C)\)，使得

\[
P_1^{-1}A_1P_1,\qquad P_1^{-1}B_1P_1
\]

均为上三角矩阵。

令

\[
P=
\begin{pmatrix}
1&0\\
0&P_1
\end{pmatrix}.
\]

则

\[
P^{-1}AP=
\begin{pmatrix}
\lambda & \alpha P_1\\
0&P_1^{-1}A_1P_1
\end{pmatrix},
\]

\[
P^{-1}BP=
\begin{pmatrix}
\mu & \beta P_1\\
0&P_1^{-1}B_1P_1
\end{pmatrix}.
\]

由于右下角块已经是上三角矩阵，所以这两个矩阵整体也都是上三角矩阵。

故

\[
\boxed{AB=BA\Longrightarrow A,B\text{ 可同时上三角化}.}
\]

---

# 2. 若 \(A,B\) 均可对角化且 \(AB=BA\)，则可同时对角化

这次使用 \(A\) 的特征空间分块。

设 \(A\) 的不同特征值为

\[
\lambda_1,\lambda_2,\dots,\lambda_r.
\]

因为 \(A\) 可对角化，

\[
V=E_{\lambda_1}(A)\oplus E_{\lambda_2}(A)\oplus\cdots\oplus E_{\lambda_r}(A).
\]

在每个特征空间 \(E_{\lambda_i}(A)\) 中任取一组基，把这些基拼起来。则 \(A\) 的矩阵形如

\[
A=
\begin{pmatrix}
\lambda_1 I_{d_1}&0&\cdots&0\\
0&\lambda_2 I_{d_2}&\cdots&0\\
\vdots&\vdots&\ddots&\vdots\\
0&0&\cdots&\lambda_r I_{d_r}
\end{pmatrix},
\]

其中

\[
d_i=\dim E_{\lambda_i}(A).
\]

把 \(B\) 按同样的分块方式写成

\[
B=
\begin{pmatrix}
B_{11}&B_{12}&\cdots&B_{1r}\\
B_{21}&B_{22}&\cdots&B_{2r}\\
\vdots&\vdots&\ddots&\vdots\\
B_{r1}&B_{r2}&\cdots&B_{rr}
\end{pmatrix}.
\]

---

## 由交换关系消去 \(B\) 的非对角块

比较 \(AB\) 与 \(BA\) 的第 \((i,j)\) 个分块：

\[
(AB)_{ij}=\lambda_i B_{ij},
\]

\[
(BA)_{ij}=B_{ij}\lambda_j=\lambda_j B_{ij}.
\]

由于 \(AB=BA\)，所以

\[
\lambda_iB_{ij}=\lambda_jB_{ij}.
\]

即

\[
(\lambda_i-\lambda_j)B_{ij}=0.
\]

当 \(i\ne j\) 时，\(\lambda_i\ne\lambda_j\)，故

\[
B_{ij}=0.
\]

因此

\[
B=
\begin{pmatrix}
B_{11}&0&\cdots&0\\
0&B_{22}&\cdots&0\\
\vdots&\vdots&\ddots&\vdots\\
0&0&\cdots&B_{rr}
\end{pmatrix}.
\]

这正是说：每一个 \(A\) 的特征空间 \(E_{\lambda_i}(A)\) 都被 \(B\) 保持。

---

## 对每个对角块分别对角化

因为 \(B\) 可对角化，\(B\) 的最小多项式没有重根。于是每个限制块

\[
B_{ii}=B|_{E_{\lambda_i}(A)}
\]

也可对角化。

所以对每个 \(i\)，都可选取可逆矩阵 \(P_i\)，使得

\[
P_i^{-1}B_{ii}P_i
\]

为对角矩阵。

令

\[
P=
\begin{pmatrix}
P_1&0&\cdots&0\\
0&P_2&\cdots&0\\
\vdots&\vdots&\ddots&\vdots\\
0&0&\cdots&P_r
\end{pmatrix}.
\]

那么

\[
P^{-1}BP
=
\begin{pmatrix}
P_1^{-1}B_{11}P_1&0&\cdots&0\\
0&P_2^{-1}B_{22}P_2&\cdots&0\\
\vdots&\vdots&\ddots&\vdots\\
0&0&\cdots&P_r^{-1}B_{rr}P_r
\end{pmatrix}
\]

是对角矩阵。

而由于 \(A\) 的每一个对角块是标量矩阵 \(\lambda_iI_{d_i}\)，所以无论怎样更换第 \(i\) 个块内部的基，

\[
P_i^{-1}(\lambda_iI_{d_i})P_i=\lambda_iI_{d_i}.
\]

因此

\[
P^{-1}AP=A,
\]

仍然是对角矩阵。

所以

\[
\boxed{
AB=BA,\quad A,B\text{ 都可对角化}
\Longrightarrow
A,B\text{ 可同时对角化}.
}
\]

---

两种证明的分块结构可以概括为：

\[
\text{公共特征向量}
\Longrightarrow
\begin{pmatrix}
* & *\\
0 & \text{低阶块}
\end{pmatrix}
\Longrightarrow
\text{归纳同时上三角化};
\]

\[
\text{\(A\) 的特征空间直和分解}
\Longrightarrow
A=\operatorname{diag}(\lambda_iI),\
B=\operatorname{diag}(B_{ii})
\Longrightarrow
\text{分块内对角化}.
\]


有，但两件事的情况不完全一样：

- **同时对角化**可以非常直接地用“特征空间直和分解”证明；
- **同时上三角化**也可以先用“广义特征空间（根子空间）直和分解”把问题化到更小的公共不变块上，但最后仍需处理一对可交换幂零算子；这一步本质上需要构造一条公共不变旗标（或等价地作分块归纳）。不能只靠直和分解一步到位。

以下设底域为 \(\mathbb C\)，且

\[
AB=BA.
\]

---

# 1. 同时对角化：完全可以直接用直和分解

假设 \(A,B\) 都可对角化。

先按 \(A\) 的特征空间分解：

\[
V=\bigoplus_{\lambda\in\sigma(A)}E_\lambda(A),
\qquad
E_\lambda(A)=\ker(A-\lambda I).
\]

因为 \(AB=BA\)，所以每个 \(E_\lambda(A)\) 都是 \(B\)-不变的：

\[
v\in E_\lambda(A)
\Longrightarrow
A(Bv)=B(Av)=B(\lambda v)=\lambda Bv.
\]

故

\[
Bv\in E_\lambda(A).
\]

于是可以在每个 \(E_\lambda(A)\) 上考虑 \(B\) 的限制

\[
B_\lambda:=B|_{E_\lambda(A)}.
\]

由于 \(B\) 可对角化，\(B_\lambda\) 也可对角化。因此

\[
E_\lambda(A)
=
\bigoplus_{\mu}
\ker\bigl(B_\lambda-\mu I\bigr).
\]

而

\[
\ker\bigl(B_\lambda-\mu I\bigr)
=
E_\lambda(A)\cap E_\mu(B).
\]

故得到更细的直和分解：

\[
\boxed{
V
=
\bigoplus_{\lambda,\mu}
\left(E_\lambda(A)\cap E_\mu(B)\right).
}
\]

在每个小块

\[
V_{\lambda,\mu}:=E_\lambda(A)\cap E_\mu(B)
\]

上，有

\[
A|_{V_{\lambda,\mu}}=\lambda I,
\qquad
B|_{V_{\lambda,\mu}}=\mu I.
\]

从每个 \(V_{\lambda,\mu}\) 中任选一组基，把所有这些基合并，就是一组公共特征向量基。因此 \(A,B\) 同时对角化。

这和 Jordan–Chevalley 分解的思路很接近：都是先按特征值对应的空间作直和分解，再在各块中分别处理。

---

# 2. 同时上三角化：先作“联合根子空间”直和分解

现在不假设 \(A,B\) 可对角化，只知道 \(AB=BA\)。

先按 \(A\) 的根子空间作主分解：

\[
V=\bigoplus_{\lambda\in\sigma(A)}V_\lambda(A),
\]

其中

\[
V_\lambda(A)
=
\ker(A-\lambda I)^{s_\lambda}.
\]

由于 \(AB=BA\)，每个 \(V_\lambda(A)\) 都被 \(B\) 保持。

因此可在每个 \(V_\lambda(A)\) 内再按 \(B\) 的根子空间分解：

\[
V_\lambda(A)
=
\bigoplus_{\mu}
V_{\lambda,\mu},
\]

其中

\[
V_{\lambda,\mu}
=
\ker\left(
\left(B|_{V_\lambda(A)}-\mu I\right)^{t_{\lambda,\mu}}
\right).
\]

于是得到

\[
\boxed{
V=
\bigoplus_{\lambda,\mu}V_{\lambda,\mu}.
}
\]

这些 \(V_{\lambda,\mu}\) 同时对 \(A,B\) 不变。理由是：

- \(V_\lambda(A)\) 本来就对 \(A,B\) 不变；
- 在 \(V_\lambda(A)\) 中，\(A\) 与 \(B|_{V_\lambda(A)}\) 仍可交换；
- 所以 \(B\) 的各根子空间也会被 \(A\) 保持。

---

## 在每个联合根子空间上发生什么？

在 \(V_{\lambda,\mu}\) 上，分别有

\[
A=\lambda I+N_A,
\qquad
B=\mu I+N_B,
\]

其中

\[
N_A:=A-\lambda I,\qquad N_B:=B-\mu I
\]

都是幂零算子，且仍然可交换：

\[
N_AN_B=N_BN_A.
\]

所以问题被归约为：

> 两个可交换的幂零算子 \(N_A,N_B\)，能否同时上三角化？

答案是可以。

---

# 3. 两个可交换幂零算子可以同时严格上三角化

设 \(N_1,N_2\) 是可交换的幂零算子。

首先，

\[
\ker N_1\neq 0.
\]

又因为 \(N_1N_2=N_2N_1\)，所以 \(\ker N_1\) 对 \(N_2\) 不变：

\[
v\in\ker N_1
\Longrightarrow
N_1(N_2v)=N_2(N_1v)=0.
\]

因此可以考虑 \(N_2\) 在 \(\ker N_1\) 上的限制。这个限制仍是幂零算子，所以其核非零：

\[
\ker\left(N_2|_{\ker N_1}\right)\neq 0.
\]

故存在 \(0\ne v_1\) 满足

\[
N_1v_1=0,\qquad N_2v_1=0.
\]

也就是

\[
Av_1=\lambda v_1,\qquad Bv_1=\mu v_1.
\]

在该公共不变块里找到了一个公共特征向量。

把 \(v_1\) 扩张成一组基，在此基下，

\[
N_1=
\begin{pmatrix}
0 & *\\
0 & N_1'
\end{pmatrix},
\qquad
N_2=
\begin{pmatrix}
0 & *\\
0 & N_2'
\end{pmatrix}.
\]

由 \(N_1N_2=N_2N_1\)，比较右下角可得

\[
N_1'N_2'=N_2'N_1'.
\]

继续对右下角块重复这一过程，最终就能使 \(N_1,N_2\) 同时严格上三角化。

于是

\[
A=\lambda I+N_1,\qquad B=\mu I+N_2
\]

在该块上同时上三角化。

对所有 \(V_{\lambda,\mu}\) 分别做此操作，再将各块的基拼起来，就得到 \(A,B\) 的同时上三角形式。

---

# 4. 总结：两种结论的“直和分解版本”

## 同时对角化

若 \(A,B\) 可对角化且 \(AB=BA\)，那么

\[
\boxed{
V=
\bigoplus_{\lambda,\mu}
\bigl(E_\lambda(A)\cap E_\mu(B)\bigr).
}
\]

每个直和分量上 \(A,B\) 都是标量算子：

\[
A=\lambda I,\qquad B=\mu I.
\]

因此直接得到同时对角化。

---

## 同时上三角化

若仅有 \(AB=BA\)，那么先有联合根子空间分解：

\[
\boxed{
V=
\bigoplus_{\lambda,\mu}V_{\lambda,\mu},
}
\]

其中在 \(V_{\lambda,\mu}\) 上，

\[
A=\lambda I+N_A,\qquad
B=\mu I+N_B,
\]

而 \(N_A,N_B\) 是可交换幂零算子。

然后对每个块中的可交换幂零部分构造共同不变旗标，得到同时上三角化。

因此：

\[
\boxed{
\text{同时对角化：直和分解本身就足够；}
}
\]

\[
\boxed{
\text{同时上三角化：直和分解先把问题分块，随后还需在每块中构造旗标。}
}
\]

因为幂零矩阵只有特征值 \(0\)，其整个空间往往就是唯一的根子空间，无法再通过“按不同特征值分块”继续细分。例如单个 Jordan 块 \(J_n(0)\) 的根子空间就是整个空间，但它显然尚未对角化；其上三角结构来自 Jordan 链／不变旗标，而非进一步的特征空间直和分解。

可以。设有 \(m\) 个 \(d\) 阶复矩阵（这里用 \(m\) 表示矩阵个数，避免和阶数混淆）

\[
A_1,A_2,\dots,A_m\in M_d(\mathbb C),
\]

并且它们两两可交换：

\[
A_iA_j=A_jA_i,\qquad \forall i,j.
\]

那么存在同一个可逆矩阵 \(P\)，使得

\[
P^{-1}A_1P,\ P^{-1}A_2P,\ \dots,\ P^{-1}A_mP
\]

全都是上三角矩阵。

即：

\[
\boxed{\text{一族两两可交换的复矩阵可以同时上三角化。}}
\]

下面按你前面希望的方式，使用“公共特征向量 + 分块矩阵归纳”，不使用商空间。

---

## 第一步：证明存在公共特征向量

先说明一个引理：

\[
\boxed{\text{两两可交换的 }A_1,\dots,A_m\text{ 有一个公共特征向量。}}
\]

取 \(A_1\) 的任意一个特征值 \(\lambda_1\)，记

\[
W_1=\ker(A_1-\lambda_1I)\neq 0.
\]

对任意 \(j\ge2\)，由于 \(A_1A_j=A_jA_1\)，若 \(v\in W_1\)，则

\[
A_1(A_jv)=A_j(A_1v)=A_j(\lambda_1v)
=\lambda_1A_jv.
\]

所以

\[
A_jv\in W_1.
\]

即

\[
A_j(W_1)\subseteq W_1,\qquad j=2,\dots,m.
\]

因此所有 \(A_2,\dots,A_m\) 都能限制在 \(W_1\) 上，并且这些限制仍两两可交换。

接着在非零空间 \(W_1\) 上考虑 \(A_2|_{W_1}\)。它有某个特征值 \(\lambda_2\)，令

\[
W_2=\ker\left(A_2|_{W_1}-\lambda_2I\right).
\]

则

\[
W_2\neq0,\qquad W_2\subseteq W_1.
\]

同样地，因为 \(A_2\) 与其余所有 \(A_j\) 可交换，所以对 \(j\ge3\) 有

\[
A_j(W_2)\subseteq W_2.
\]

继续这个过程，得到嵌套的非零子空间

\[
W_m\subseteq W_{m-1}\subseteq\cdots\subseteq W_1.
\]

其中在 \(W_m\) 上，所有 \(A_i\) 都是标量作用：

\[
A_i v=\lambda_i v,\qquad i=1,\dots,m.
\]

任取

\[
0\ne v_1\in W_m,
\]

便有

\[
\boxed{
A_i v_1=\lambda_i v_1,\qquad i=1,\dots,m.
}
\]

所以 \(v_1\) 是全部矩阵的公共特征向量。

---

## 第二步：在公共特征向量下写分块矩阵

将 \(v_1\) 扩充为 \(\mathbb C^d\) 的一组基：

\[
(v_1,v_2,\dots,v_d).
\]

由于对每个 \(i\),

\[
A_iv_1=\lambda_i v_1,
\]

所以每个 \(A_i\) 在这组基下都有形式

\[
A_i=
\begin{pmatrix}
\lambda_i & \alpha_i\\
0&A_i'
\end{pmatrix},
\]

其中

\[
\alpha_i\in M_{1,d-1}(\mathbb C),
\qquad
A_i'\in M_{d-1}(\mathbb C).
\]

---

## 第三步：右下角小矩阵仍两两可交换

对任意 \(i,j\)，由

\[
A_iA_j=A_jA_i
\]

计算两个分块矩阵的右下角，得到

\[
A_i'A_j'=A_j'A_i'.
\]

因此

\[
A_1',A_2',\dots,A_m'
\]

仍然是一族两两可交换的 \((d-1)\) 阶矩阵。

---

## 第四步：对阶数归纳

对 \(d\) 作归纳。

- \(d=1\) 时显然；
- 假设所有两两可交换的 \((d-1)\) 阶复矩阵都可以同时上三角化。

于是存在 \(Q\in GL_{d-1}(\mathbb C)\)，使得

\[
Q^{-1}A_i'Q
\]

对每个 \(i=1,\dots,m\) 都是上三角矩阵。

令

\[
P=
\begin{pmatrix}
1&0\\
0&Q
\end{pmatrix}.
\]

则

\[
P^{-1}A_iP
=
\begin{pmatrix}
\lambda_i&\alpha_iQ\\
0&Q^{-1}A_i'Q
\end{pmatrix}.
\]

右下角块已为上三角阵，因此整个矩阵也是上三角阵。对每个 \(i\) 都成立。

故 \(A_1,\dots,A_m\) 同时上三角化。

---

# 结论

\[
\boxed{
A_iA_j=A_jA_i\quad(\forall i,j)
\Longrightarrow
A_1,\dots,A_m\text{ 可同时上三角化}
}
\]

前提是底域为 \(\mathbb C\)，或更一般地，底域上每个相关矩阵都至少有特征值（例如所有特征多项式均可分裂）。

---

## 与两矩阵情形的关系

两矩阵时，你的论证是：

\[
A\text{ 的特征空间被 }B\text{ 保持}
\Longrightarrow
\text{在该空间中找 }B\text{ 的特征向量}.
\]

多个矩阵时完全类似，只是不断缩小空间：

\[
\begin{aligned}
W_1&=\ker(A_1-\lambda_1I),\\
W_2&=W_1\cap\ker(A_2-\lambda_2I),\\
&\ \vdots\\
W_m&=W_{m-1}\cap\ker(A_m-\lambda_mI).
\end{aligned}
\]

严格地说，第二行以后应理解为限制算子的核，例如

\[
W_2
=
\ker\bigl((A_2-\lambda_2I)|_{W_1}\bigr).
\]

可交换性保证：每次得到的 \(W_k\) 都会被剩余矩阵保持，因此可以不断进行下去。

---

## 实数域上的注意事项

若矩阵均为实矩阵，这个结论一般不成立，因为单个实矩阵也未必能实上三角化。例如

\[
\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix}
\]

没有实特征值，因而不能在 \(\mathbb R\) 上化为上三角阵。

但若每个 \(A_i\) 的特征多项式都在 \(\mathbb R\) 上分裂，则上面的证明在 \(\mathbb R\) 上原样成立。

---

顺便说，反方向不成立：若一组矩阵已经同时上三角化，它们不一定两两可交换。例如

\[
\begin{pmatrix}1&0\\0&0\end{pmatrix},
\qquad
\begin{pmatrix}0&1\\0&0\end{pmatrix}
\]

都上三角，但二者不交换。


记

\[
V=\mathbb C^n.
\]

这道题的关键是第 1 问给出的直和分解，以及第 2 问中由条件

\[
A_kA_j=0\quad(k<j)
\]

得到的包含关系

\[
\operatorname{Im}A_j\subseteq \ker A_k.
\]

最终可以证明：所有非零 \(A_k\) 的像空间之和是直和，因此非零矩阵的个数不超过 \(n\)。

---

## 1. 证明

\[
\mathbb C^n=\ker A_k\oplus\operatorname{Im}A_k.
\]

固定一个 \(k\)，简记 \(A=A_k\)。

由于 \(A\) 相似于对角阵，所以 \(A\) 可对角化。于是存在一组由 \(A\) 的特征向量组成的基。设 \(A\) 的不同特征值中，零特征值对应的特征向量为

\[
v_1,\dots,v_r,
\]

非零特征值对应的特征向量为

\[
w_1,\dots,w_s.
\]

则

\[
V=\operatorname{span}(v_1,\dots,v_r)\oplus
\operatorname{span}(w_1,\dots,w_s).
\]

其中

\[
Av_i=0,
\]

故

\[
\ker A=\operatorname{span}(v_1,\dots,v_r).
\]

另一方面，若

\[
Aw_j=\lambda_jw_j,\qquad \lambda_j\ne0,
\]

则

\[
w_j=A\left(\frac1{\lambda_j}w_j\right)\in\operatorname{Im}A.
\]

因此

\[
\operatorname{span}(w_1,\dots,w_s)\subseteq\operatorname{Im}A.
\]

反过来，任意 \(x\in V\) 可写成

\[
x=\sum_{i=1}^r a_iv_i+\sum_{j=1}^s b_jw_j.
\]

于是

\[
Ax=\sum_{j=1}^s b_j\lambda_jw_j
\in\operatorname{span}(w_1,\dots,w_s).
\]

所以

\[
\operatorname{Im}A=\operatorname{span}(w_1,\dots,w_s).
\]

从而

\[
\boxed{
V=\ker A\oplus\operatorname{Im}A.
}
\]

对每个 \(A_k\) 都成立。

---

## 2. 证明至少有 \(n\) 个 \(A_k\) 为零

由

\[
A_kA_j=0\qquad(k<j),
\]

对任意 \(x\in \operatorname{Im}A_j\)，可写作

\[
x=A_jy.
\]

于是当 \(k<j\) 时，

\[
A_kx=A_kA_jy=0.
\]

故

\[
\boxed{
\operatorname{Im}A_j\subseteq\ker A_k,\qquad k<j.
}
\]

特别地，

\[
\operatorname{Im}A_{k+1}+\cdots+\operatorname{Im}A_{2n}
\subseteq\ker A_k.
\]

而由第 1 问，

\[
\ker A_k\cap\operatorname{Im}A_k=\{0\}.
\]

所以

\[
\operatorname{Im}A_k\cap
\left(\operatorname{Im}A_{k+1}+\cdots+\operatorname{Im}A_{2n}\right)
=\{0\}.
\]

这表明

\[
\operatorname{Im}A_k+
\operatorname{Im}A_{k+1}+\cdots+
\operatorname{Im}A_{2n}
\]

中，第一项与后面各项之和直和。

从后往前不断使用此结论，便得到

\[
\boxed{
\operatorname{Im}A_1\oplus
\operatorname{Im}A_2\oplus\cdots\oplus
\operatorname{Im}A_{2n}
}
\]

是一个直和。（其中零空间当然不影响直和。）

因此

\[
\sum_{k=1}^{2n}\dim\operatorname{Im}A_k\leq \dim V=n.
\]

即

\[
\sum_{k=1}^{2n}\operatorname{rank}A_k\leq n.
\]

设非零矩阵的个数为 \(r\)。每个非零矩阵的秩至少为 \(1\)，所以

\[
r\leq \sum_{k=1}^{2n}\operatorname{rank}A_k\leq n.
\]

即至多有 \(n\) 个矩阵非零。

总共有 \(2n\) 个矩阵，所以零矩阵的个数至少是

\[
2n-n=n.
\]

故

\[
\boxed{
A_1,A_2,\dots,A_{2n}\text{ 中至少有 }n\text{ 个为零矩阵。}
}
\]

核心链条可概括为：

\[
A_kA_j=0\ (k<j)
\Longrightarrow
\operatorname{Im}A_j\subseteq\ker A_k
\]

以及可对角化给出的

\[
\ker A_k\cap\operatorname{Im}A_k=\{0\}.
\]

所以各个像空间可以直和嵌入到 \(n\) 维空间中，非零矩阵自然不可能超过 \(n\) 个。