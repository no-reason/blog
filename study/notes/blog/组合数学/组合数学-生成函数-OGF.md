## 3.1 普通型生成函数 (Ordinary Generating Function, OGF)

### 1. 核心定义
给定数列 $(a_n)_{n\ge 0}$，其普通型生成函数（OGF）定义为形式幂级数：

$$
A(x) = \sum_{n=0}^{\infty} a_n x^n
$$

其中 $x^n$ 作为“位置标记”（无具体数值意义），$a_n$ 是我们关心的计数，记作 $a_n = [x^n]A(x)$。

### 2. 形式幂级数 (Formal Power Series) 代数运算
在组合数学中，一般不考虑幂级数的收敛半径，将其视为域 $F$ 上的形式幂级数环 $F[[x]]$。
对于 $f(x) = \sum a_n x^n$ 和 $g(x) = \sum b_n x^n$：
* **加法**：$f(x) + g(x) = \sum_{n=0}^{\infty} (a_n + b_n)x^n$
* **乘法（Cauchy 卷积）**：$f(x)g(x) = \sum_{n=0}^{\infty} c_n x^n$，其中 $c_n = \sum_{k=0}^n a_k b_{n-k}$。
* **形式导数**：
$$f'(x) = \sum_{n=1}^{\infty} n a_n x^{n-1} = \sum_{n=0}^{\infty} (n+1)a_{n+1}x^n$$

### 3. 复合逆与乘法逆
* **复合定义**：只有当 $f(x)$ 是多项式，或者 $g(x)$ 满足常数项 $g(0)=0$ 时，复合函数 $f(g(x))$ 才有定义。
* **复合逆**：若 $f(g(x)) = g(f(x)) = x$，则称 $g(x)$ 为 $f(x)$ 的复合逆，记为 $\bar{f}(x)$。
  * **命题与证明**：设 $f, g$ 互为复合逆，若 $a_0 = 0$，则 $b_0 = 0$ 且 $a_1 \ne 0, b_1 \ne 0$。
    *证明*：由 $g(f(x))=x$，代入 $x=0$ 得 $b_0 = g(0) = g(a_0) = g(f(0)) = 0$。设 $f(x) = a_r x^r + \cdots (a_r \ne 0)$，$g(x) = b_s x^s + \cdots (b_s \ne 0)$，则 $f(g(x)) = a_r(b_s x^s)^r + \cdots = a_r b_s^r x^{rs} + \cdots = x$。比较系数得 $rs=1$，故 $r=s=1$，从而 $a_1 b_1 = 1 \implies a_1 \ne 0, b_1 \ne 0$。
* **乘法逆**：若 $f(x)g(x) = 1$，称 $g(x)$ 为 $f(x)$ 的乘法逆。
  * **命题与证明**：$f(x)$ 有乘法逆 $\iff a_0 \ne 0$。
    *证明*：若有乘法逆，则常数项相乘 $a_0 b_0 = 1 \implies a_0 \ne 0$。反之若 $a_0 \ne 0$，可递归构造 $b_0 = 1/a_0$，$b_n = -\frac{1}{a_0} \sum_{k=1}^n a_k b_{n-k}$，故逆存在。

### 4. OGF 的核心算子与运算规则
若 $(a_n)_{n \ge 0} \xrightarrow{OGF} f(x)$，则有以下规则：
1. **导数归零法则**：若 $f'(x) = 0$，则 $f(x) = a_0$。
2. **微分方程法则**：若 $f'(x) = f(x)$，则递推得 $a_n = \frac{a_0}{n!} \implies f(x) = a_0 e^x$。
3. **序列移位算子**：
   * 左移 1 位：$(a_{n+1}) \xrightarrow{OGF} \frac{f(x)-a_0}{x}$
   * 左移 k 位：$(a_{n+k}) \xrightarrow{OGF} \frac{f(x) - \sum_{i=0}^{k-1}a_i x^i}{x^k}$
4. **加权算子（$n$ 乘子）**：$(n a_n) \xrightarrow{OGF} x f'(x)$。（多次加权如 $n^k a_n$ 对应 $(x \frac{d}{dx})^k f(x)$）。
5. **加权算子推论**：$(P(n)a_n)_{n\geq 0} \xrightarrow{OGF} P(xD)f(x)$。
6. **前缀和算子**：$s_n = \sum_{k=0}^n a_k \xrightarrow{OGF} \frac{f(x)}{1-x}$。

### 5. 卷积定理

设

$$
f(x)=\sum_{n\ge 0}a_nx^n,\quad g(x)=\sum_{n\ge 0}b_nx^n
$$

则

$$
f(x)g(x)=\sum_{n\ge 0}c_nx^n,\quad c_n=\sum_{k=0}^{n}a_kb_{n-k}.
$$

这称为普通型生成函数的卷积（Cauchy 卷积）定理，即：乘积的系数等于两列系数的离散卷积。

**例 1.** 设 $n\in\mathbb{Z}^{+}$，则数列

$$
\left(\!\binom{n}{0}\!\right),\left(\!\binom{n}{1}\!\right),\left(\!\binom{n}{2}\!\right),\dots
$$

的生成函数为

$$
\sum_{k\ge 0}\left(\!\binom{n}{k}\!\right)x^k=(1+x+x^2+\cdots)^n=\frac{1}{(1-x)^n}.
$$

由广义二项式定理：

$$
(1-x)^{-n}=\sum_{k\ge 0}\binom{-n}{k}(-1)^kx^k=\sum_{k\ge 0}\binom{n+k-1}{k}x^k,
$$

故

$$
\left(\!\binom{n}{k}\!\right)=\binom{n+k-1}{k}.
$$

**例 2.** 给定 $k\in\mathbb{N}$，数列

$$
\binom{k}{k},\binom{k+1}{k},\binom{k+2}{k},\dots
$$

的生成函数为

$$
\sum_{n\ge k}\binom{n}{k}x^n
=x^k\sum_{j\ge 0}\binom{k+j}{k}x^j
=x^k\sum_{j\ge 0}\binom{k+j}{j}x^j
=\frac{x^k}{(1-x)^{k+1}}.
$$

补充：Riordan 矩阵 $R=(g(x),f(x))$ 是一个无限下三角矩阵，第 $k$ 列的生成函数为 $g(x)f^k(x)$（$k=0,1,2,\dots$），其中 $g(0)\ne 0,\ f(0)=0,\ f'(0)\ne 0$。例如 Pascal 矩阵

$$
P=\left(\frac{1}{1-x},\frac{x}{1-x}\right).
$$

**例 3.** 求方程

$$
x_1+x_2+x_3+x_4=20
$$

满足

$$
1\le x_1\le 6,\ 0\le x_2\le 7,\ 4\le x_3\le 8,\ 2\le x_4\le 6
$$

的整数解个数。

记满足上述条件且和为 $k$ 的解数为 $a_k$，设其生成函数

$$
f(x)=\sum_{k\ge 0}a_kx^k.
$$

则

$$
\begin{aligned}
f(x)
&=(x+x^2+\cdots+x^6)(1+x+\cdots+x^7)(x^4+x^5+\cdots+x^8)(x^2+x^3+\cdots+x^6)\\
&=x^7(1-x^6)(1-x^8)(1-x^5)^2(1-x)^{-4}.
\end{aligned}
$$

故

$$
a_{20}=[x^{20}]f(x)=[x^{13}](1-x^6)(1-x^8)(1-x^5)^2(1-x)^{-4}.
$$

先展开前半部分：

$$
(1-x^6)(1-x^8)(1-x^5)^2=1-2x^5-x^6-x^8+x^{10}+2x^{11}+2x^{13}+x^{14}-x^{16}-x^{18}-2x^{19}+x^{24}.
$$

又

$$
(1-x)^{-4}=\sum_{k\ge 0}b_kx^k,\quad b_k=\binom{-4}{k}(-1)^k=\binom{k+3}{k}=\binom{k+3}{3}.
$$

因此

$$
\begin{aligned}
a_{20}
&=b_{13}-2b_8-b_7-b_5+b_3+2b_2+2b_0\\
&=\binom{16}{3}-2\binom{11}{3}-\binom{10}{3}-\binom{8}{3}+\binom{6}{3}+2\binom{5}{3}+2\binom{3}{3}\\
&=560-2\cdot165-120-56+20+2\cdot10+2\cdot1=96.
\end{aligned}
$$

### 6. 常用基本生成函数模板
* $\sum_{n \ge 0} x^n = \frac{1}{1-x}$
* $\sum_{n \ge 0} n x^n = \frac{x}{(1-x)^2}$
* $\sum_{n \ge 0} a^n x^n = \frac{1}{1-ax}$
* **广义二项式定理**：$(1+x)^\alpha = \sum_{n \ge 0} \binom{\alpha}{n} x^n$，特别地，对于负整数幂：

  $$
  \frac{1}{(1-x)^k} = \sum_{n \ge 0} \binom{n+k-1}{k-1} x^n
  $$
  
  （对应从 $k$ 种元素中可重复选取 $n$ 个的方案数）。

### 7. 普通型生成函数定理及其应用

**定理**

从 $n$ 元集 $X=\{a_1,\dots,a_n\}$ 中取 $k$ 元组合，其中 $a_i$ 的出现次数集合是 $M_i\ (1\le i\le n)$。记这种组合个数为 $c_k$，则 $(c_k)_{k\ge 0}$ 的生成函数为

$$
\sum_{k\ge 0}c_kx^k=\prod_{i=1}^{n}\left(\sum_{m\in M_i}x^m\right).
$$

**证明**

设 $a_i$ 的重数为 $m_i\in M_i$，且 $\sum_{i=1}^{n}m_i=k$。按定义，

$$
\sum_{k\ge 0}c_kx^k=(x^{\ast}+x^{\ast}+\cdots)\cdots(x^{\ast}+x^{\ast}+\cdots),
$$

其中第 $i$ 个括号中的指数取遍 $M_i$，故可写成

$$
\sum_{k\ge 0}c_kx^k=\prod_{i=1}^{n}\left(\sum_{m\in M_i}x^m\right).
$$

特别地：
* 当 $M_i=\{0,1\}$（$\forall i$）时，GF 为 $(1+x)^n$，故 $c_k=\binom{n}{k}$。
* 当 $M_i=\mathbb{N}$（$\forall i$）时，GF 为 $(1+x+x^2+\cdots)^n$，故 $c_k=\left(\!\binom{n}{k}\!\right)$。

**定理应用**

**例 1.** 从 $n$ 元集中取 $k$ 元组合，要求每个元都出现（即 $M_i=\mathbb{P},\ \forall i$），则这种组合个数的生成函数为

$$
\begin{aligned}
(x+x^2+\cdots)^n
&=x^n(1-x)^{-n}\\
&=x^n\sum_{j\ge 0}\binom{-n}{j}(-x)^j\\
&=x^n\sum_{j\ge 0}\binom{n+j-1}{j}x^j\\
&=\sum_{k\ge n}\binom{k-1}{k-n}x^k.
\end{aligned}
$$

从而所求组合个数为

$$
\binom{k-1}{k-n}=\binom{k-1}{n-1}.
$$

这也是方程

$$
x_1+\cdots+x_n=k
$$

的正整数解个数；等价地也是

$$
y_1+\cdots+y_n=k-n
$$

的非负整数解个数，即

$$
\left(\!\binom{n}{k-n}\!\right)=\binom{n+(k-n)-1}{k-n}=\binom{k-1}{k-n}.
$$

**例 2.** 从 $n$ 元集 $X=\{a_1,\dots,a_n\}$ 中取 $k$ 元组合，要求 $a_1,\dots,a_p$ 中每个元至多出现两次，而 $a_{p+1},\dots,a_n$ 都不重复出现。记组合个数为 $b_k$，则 $(b_k)_{k\ge 0}$ 的生成函数为

$$
\begin{aligned}
[(1+x)+x^2]^p(1+x)^{n-p}
&=\sum_j\binom{p}{j}x^{2j}(1+x)^{p-j}(1+x)^{n-p}\\
&=\sum_j\binom{p}{j}x^{2j}(1+x)^{n-j}.
\end{aligned}
$$

故

$$
\begin{aligned}
b_k
&=[x^k]\sum_j\binom{p}{j}x^{2j}(1+x)^{n-j}\\
&=\sum_j[x^{k-2j}]\binom{p}{j}(1+x)^{n-j}\\
&=\sum_j\binom{p}{j}\binom{n-j}{k-2j}.
\end{aligned}
$$

**例 3.** 从 $n$ 元集中取 $k$ 元组合，要求每个元至多出现 $m$ 次，记组合个数为 $b_k$，则 $(b_k)_{k\ge 0}$ 的生成函数为

$$
\begin{aligned}
(1+x+\cdots+x^m)^n
&=(1-x^{m+1})^n(1-x)^{-n}\\
&=\left(\sum_{i\ge 0}(-1)^i\binom{n}{i}x^{i(m+1)}\right)\left(\sum_{j\ge 0}\binom{n+j-1}{n-1}x^j\right).
\end{aligned}
$$

故

$$
b_k=\sum_{i=0}^{n}(-1)^i\binom{n}{i}\binom{n+k-i(m+1)-1}{n-1}.
$$

注：若取 $m=1$，则得恒等式

$$
\binom{n}{k}=\sum_{i=0}^{n}(-1)^i\binom{n}{i}\binom{n+k-2i-1}{n-1}.
$$
