# 带状矩阵的 $O(nk^2)$ LU 分解：从稀疏消元到 Markov 期望 DP

> （提示 GPT：这是我自行整理的学习笔记，不需要加入工作日“每日一题”的题目复盘；但需要纳入每周 GitHub/blog 学习复盘。不要将“无需每日一题复盘”理解为忽略本篇的正常学习记录。）

**关键词**：带状矩阵、$k$ 对角、LU 分解、无主元消元、Thomas 算法、复杂度、Markov 链、期望 DP、CF24D、ABC189 F、线性方程组。

## 0. 先准确区分“$k$ 对角”和“半带宽 $k$”

本文用**半带宽 $k$** 表示

$$
\boxed{a_{ij}=0\quad\text{当 }|i-j|>k.}
$$

也就是说，矩阵只有主对角线及上、下各 $k$ 条对角线可以非零；总共最多 $2k+1$ 条对角线。三对角矩阵对应 $k=1$，五对角矩阵对应 $k=2$。

在**无需主元交换且所有消元主元都非零**的前提下，半带宽为 $k$ 的 $n\times n$ 矩阵可以做

$$
\boxed{\text{LU 分解 }O(nk^2),\quad\text{再求解 }Ax=b\text{ 只需 }O(nk).}
$$

空间可以控制在 $O(nk)$。如果 $k$ 是常数，整体即 $O(n)$。

请勿将此结论直接套用于“任意只有 $k$ 条分散的非零对角线”的矩阵：那些非零位置可能离主对角线很远，消元填充的范围未必受 $k$ 限制。

## 1. 为什么稠密消元需要 $O(n^3)$，带状消元只需要 $O(nk^2)$？

普通 LU 的第 $t$ 步使用主元 $a_{tt}$，对于 $i>t$ 设

$$
\ell_{it}=\frac{a_{it}}{a_{tt}},\qquad
a_{ij}\leftarrow a_{ij}-\ell_{it}a_{tj}.
$$

稠密矩阵中可能有 $O(n)$ 个待消行、每行 $O(n)$ 个待更新元素；每一步就要 $O(n^2)$，总共 $O(n^3)$。

如果 $A$ 是半带宽 $k$ 的带状矩阵，则第 $t$ 列只有

$$
t+1\le i\le\min(n,t+k)
$$

这些行需要消元，最多 $k$ 行；并且主元行第 $t$ 列右侧非零部分只在

$$
t+1\le j\le\min(n,t+k)
$$

这些列，最多 $k$ 列。所以每步至多 $O(k^2)$，总成本

$$
\boxed{\sum_{t=1}^n O(k^2)=O(nk^2).}
$$

**为什么消元过程中带外不会突然出现非零项？** 因为一次更新 $a_{ij}\leftarrow a_{ij}-\ell_{it}a_{tj}$ 要真正产生新项，必须同时满足 $i\le t+k$、$j\le t+k$ 以及 $i,j>t$。这时 $|i-j|\le k-1$，仍在原带内。其余位置既不会被用于消元，也不会被更新。

更一般地，令下带宽为 $k_\ell$、上带宽为 $k_u$，则在无主元交换时 LU 分解耗时

$$
O(nk_\ell k_u+n(k_\ell+k_u)),
$$

方程求解耗时 $O(n(k_\ell+k_u))$。对于 $k_\ell=k_u=k\ge1$，便是 $O(nk^2)$ 的常见结论。

### 复杂度和数值条件不能混淆

上述简单递推**不是对任何非奇异带状矩阵都自动可用**。例如

$$
A=\begin{pmatrix}0&1\\1&0\end{pmatrix}
$$

是非奇异三对角矩阵，但第一个主元是 $0$，无法直接执行无交换的 LU。若 $A$ 对称正定，则无需主元交换也可顺利分解；一般矩阵需考虑选主元或使用成熟数值库。带状选主元 LU 在局部行交换后仍能利用带宽，虽然上三角因子可能比原矩阵更宽。

此外，**代数上主元非零**并不意味着**浮点上数值稳定**；很小的主元可能引发显著舍入误差。竞赛中如果转移方程严格对角占优或可证明主元充分安全，通常可以直接写无主元的带状算法。

## 2. 三对角矩阵：Thomas 追赶法为何是 $O(n)$？

考虑

$$
\begin{pmatrix}
d_1&c_1&&\\
a_2&d_2&c_2&\\
&\ddots&\ddots&\ddots\\
&&a_n&d_n
\end{pmatrix}
\begin{pmatrix}x_1\\x_2\\\vdots\\x_n\end{pmatrix}
=\begin{pmatrix}b_1\\b_2\\\vdots\\b_n\end{pmatrix}.
$$

令 $A=LU$，取 $L$ 为单位下双对角，$U$ 为上双对角，则

$$
\begin{aligned}
u_1&=d_1,\\
\ell_i&=a_i/u_{i-1},\\
u_i&=d_i-\ell_i c_{i-1},\qquad i=2,\ldots,n.
\end{aligned}
$$

解 $Ly=b$：

$$
y_1=b_1,\qquad y_i=b_i-\ell_i y_{i-1}.
$$

再解 $Ux=y$：

$$
x_n=y_n/u_n,\qquad x_i=(y_i-c_ix_{i+1})/u_i.
$$

每步常数次运算，所以总复杂度 $O(n)$，额外存储 $O(n)$。这与竞赛中直接消元出 $x_i=\alpha_i x_{i+1}+\beta_i$ 的“追赶递推”本质完全相同。

### 一个纯数学的随机游走例子

在整数线段 $\{0,1,\ldots,N\}$ 上进行公平随机游走，$0,N$ 为吸收端点，设 $E_i$ 为从 $i$ 出发第一次命中端点的期望步数，则

$$
E_0=E_N=0,\qquad E_i=1+\frac12(E_{i-1}+E_{i+1}).
$$

等价于三对角线性方程

$$
2E_i-E_{i-1}-E_{i+1}=2.
$$

除了 Thomas 法，还可以观察二阶差分为常数，于是尝试二次函数 $E_i=ai^2+bi+c$，结合边界得到

$$
\boxed{E_i=i(N-i).}
$$

这是一道很典型的“可以看成矩阵求逆，但更好的办法是利用差分方程结构”的问题。

## 3. C++17：真正使用 $O(nk)$ 存储的带状 LU + 解方程

以下实现演示**对称半带宽 $k$，不做主元交换**的 LU。输入矩阵可按三元组或各带状元素填写；使用 `band[i][j-i+k]` 表示 $a_{ij}$。

- 分解：$O(nk^2)$；
- 前代、回代：$O(nk)$；
- 存储：$O(nk)$；
- 限制：要求无主元 LU 的每个主元非零，且浮点条件适合直接消元。

```cpp
#include <bits/stdc++.h>
using namespace std;
using ld = long double;

struct BandLU {
    int n, k;
    vector<vector<ld>> a; // a[i][j-i+k], 仅保存 |i-j|<=k

    BandLU(int n_, int k_) : n(n_), k(k_),
        a(n_, vector<ld>(2 * k_ + 1, 0)) {}

    ld& at(int i, int j) {
        // 调用方必须保证 0<=i,j<n 且 |i-j|<=k
        return a[i][j - i + k];
    }

    void factorize() {
        for (int t = 0; t < n; ++t) {
            ld pivot = at(t, t);
            if (fabsl(pivot) < 1e-18L)
                throw runtime_error("zero / nearly zero pivot; needs pivoting");
            int last = min(n - 1, t + k);
            for (int i = t + 1; i <= last; ++i) {
                ld mult = at(i, t) / pivot;
                at(i, t) = mult; // 存入 L 的乘子
                for (int j = t + 1; j <= last; ++j)
                    at(i, j) -= mult * at(t, j);
            }
        }
    }

    vector<ld> solve(const vector<ld>& b) const {
        vector<ld> y(n), x(n);
        for (int i = 0; i < n; ++i) {
            ld rhs = b[i];
            for (int j = max(0, i - k); j < i; ++j)
                rhs -= a[i][j - i + k] * y[j];
            y[i] = rhs; // L 的对角元为 1
        }
        for (int i = n - 1; i >= 0; --i) {
            ld rhs = y[i];
            for (int j = i + 1; j <= min(n - 1, i + k); ++j)
                rhs -= a[i][j - i + k] * x[j];
            x[i] = rhs / a[i][k];
        }
        return x;
    }
};

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    // 输入格式：n k；接下来 n 行，每行输入所有带内元素
    // a[i][max(0,i-k)], ..., a[i][min(n-1,i+k)]；最后 n 个 b_i
    int n, k;
    cin >> n >> k;
    BandLU lu(n, k);
    for (int i = 0; i < n; ++i)
        for (int j = max(0, i - k); j <= min(n - 1, i + k); ++j)
            cin >> lu.at(i, j);
    vector<ld> b(n);
    for (ld& v : b) cin >> v;
    lu.factorize();
    auto x = lu.solve(b);
    cout << fixed << setprecision(12);
    for (int i = 0; i < n; ++i)
        cout << x[i] << (i + 1 == n ? '\n' : ' ');
}
```

> 为什么这个代码不能直接替代 LAPACK 的所有带状求解器？因为它不做选主元；工程数值线性代数还要处理行交换、额外填充带、条件数和误差控制。LAPACK 的 `DGBTRF/DGBTRS` 是带状选主元分解与求解的成熟实现。

## 4. 算法竞赛的总视角：Markov 过程为何会产生矩阵方程？

对有限状态、具有吸收终点的 Markov 过程，记 $E_i$ 为从非终止状态 $i$ 出发的期望总代价，$c_i$ 为该状态的一步期望成本，$Q_{ij}$ 为从非终止状态 $i$ 到非终止状态 $j$ 的转移概率。由条件期望：

$$
E_i=c_i+\sum_jQ_{ij}E_j.
$$

整体写成

$$
\boxed{(I-Q)E=c.}
$$

若所有非终止状态最终都会被吸收（有限状态下的瞬时状态条件），则 $I-Q$ 可逆，形式上 $E=(I-Q)^{-1}c$。

但算法竞赛通常**不应真的求逆**。应先看转移图能否经过状态排序或消元得到：三角结构、三对角/带状结构、树结构、或者“可倒序递推 + 少量全局参数”的结构。

## 5. 真实竞赛例题一：CF24D — Broken robot（重点）

原题：<https://codeforces.com/problemset/problem/24/D>

简述：$n\times m$ 网格内，机器人每次从“停留、左移、右移、下移”中**等概率选择所有合法动作**；从给定位置出发，求第一次到达最后一行的期望步数。$1\le n,m\le1000$。

设 $E_{r,c}$ 为从位置 $(r,c)$ 到最后一行的期望步数，则 $E_{n,c}=0$。

如果 $1<c<m$，四个合法动作给出

$$
E_{r,c}=1+\frac14(E_{r,c}+E_{r,c-1}+E_{r,c+1}+E_{r+1,c}),
$$

因此

$$
3E_{r,c}-E_{r,c-1}-E_{r,c+1}=4+E_{r+1,c}.
$$

左、右边界仅有三个动作，例如左侧

$$
2E_{r,1}-E_{r,2}=3+E_{r+1,1}.
$$

$m=1$ 时只有“停留、向下”，于是 $E_{r,1}=2+E_{r+1,1}$。

固定一行的全部未知量 $E_{r,*}$，下一行 $E_{r+1,*}$ 已知，所以这是一个**三对角线性系统**。沿行号从下到上迭代；每一行用 Thomas 法 $O(m)$ 求解，复杂度

$$
\boxed{O(nm)\text{ 时间},\quad O(m)\text{ 额外空间}.}
$$

### C++17 题解（处理 $m=1$、边界和终止行）

```cpp
#include <bits/stdc++.h>
using namespace std;
using ld = long double;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int n, m, sr, sc;
    cin >> n >> m >> sr >> sc;
    --sr; --sc;

    vector<ld> down(m, 0); // 初始：最后一行的 E=0
    for (int r = n - 2; r >= sr; --r) {
        vector<ld> diag(m), rhs(m), cur(m);
        for (int c = 0; c < m; ++c) {
            int horiz = (c > 0) + (c + 1 < m);
            // 合法动作数 = 2 + horiz (停留、向下、左右)
            diag[c] = 1 + horiz;    // 消去“停留”后的对角系数
            rhs[c] = 2 + horiz + down[c];
        }
        // 下对角 / 上对角非零时都为 -1
        for (int c = 1; c < m; ++c) {
            ld mult = -1.0L / diag[c - 1];
            diag[c] += mult;         // diag[c] -= 1 / diag[c-1]
            rhs[c] -= mult * rhs[c - 1];
        }
        cur[m - 1] = rhs[m - 1] / diag[m - 1];
        for (int c = m - 2; c >= 0; --c)
            cur[c] = (rhs[c] + cur[c + 1]) / diag[c];
        down.swap(cur);
    }
    cout << fixed << setprecision(12) << down[sc] << '\n';
}
```

**思考题**：如果不知道三对角 LU，能否通过猜测 $E_{r,c}=\alpha_cE_{r,c+1}+\beta_c$，从左向右消元再向左回代？证明它和上面的 Thomas 法等价。

## 6. 真实竞赛例题二：AtCoder ABC189 F — Sugoroku2（参数化消元）

原题：<https://atcoder.jp/contests/abc189/tasks/abc189_f>；官方题解：<https://atcoder.jp/contests/abc189/editorial/541>。

棋盘状态 $0,1,\ldots,N$，每次等概率向前移动 $1$ 至 $M$ 格，达到或越过 $N$ 时终止；部分陷阱格一旦落上去就立即回到 $0$。求到达终点的期望操作次数，不可达时输出 $-1$。

设 $f_i$ 为从 $i$ 出发的期望剩余次数：

$$
f_i=\begin{cases}
0,&i\ge N,\\
f_0,&i\text{ 为陷阱},\\
1+\dfrac1M\sum_{d=1}^{M}f_{i+d},&\text{其他 }i<N.
\end{cases}
$$

乍看无法倒序计算，因为遇到陷阱就依赖未知的 $f_0$。**不要先求出 $f_0$，而是将它作为一个形式参数**，设

$$
\boxed{f_i=a_if_0+b_i.}
$$

对于 $i\ge N$，有 $a_i=b_i=0$；对于陷阱格，$a_i=1,b_i=0$；其他位置有

$$
\boxed{a_i=\frac1M\sum_{d=1}^Ma_{i+d},\quad
b_i=1+\frac1M\sum_{d=1}^Mb_{i+d}.}
$$

于是倒序求出 $a_0,b_0$ 后，利用

$$
f_0=a_0f_0+b_0
$$

得到

$$
\boxed{f_0=\frac{b_0}{1-a_0}.}
$$

两个窗口和维护后，每个状态是 $O(1)$，总复杂度 $O(N+K)$（$K$ 为陷阱数）。如果存在连续至少 $M$ 个陷阱位置，那么无法跨过这段区域到达终点，答案为 $-1$；反之终点可达。

### C++17 题解

```cpp
#include <bits/stdc++.h>
using namespace std;
using ld = long double;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int N, M, K;
    cin >> N >> M >> K;
    vector<int> bad(N, 0);
    for (int t = 0, v; t < K; ++t) {
        cin >> v;
        bad[v] = 1;
    }
    int run = 0;
    for (int i = 0; i < N; ++i) {
        run = bad[i] ? run + 1 : 0;
        if (run >= M) { cout << -1 << '\n'; return 0; }
    }

    vector<ld> a(N, 0), b(N, 0);
    ld sumA = 0, sumB = 0; // 开始处理 i 时，对应 i+1,...,i+M
    for (int i = N - 1; i >= 0; --i) {
        if (bad[i]) {
            a[i] = 1;
            b[i] = 0;
        } else {
            a[i] = sumA / M;
            b[i] = 1 + sumB / M;
        }
        sumA += a[i];
        sumB += b[i];
        if (i + M < N) {
            sumA -= a[i + M];
            sumB -= b[i + M];
        }
    }
    cout << fixed << setprecision(12) << b[0] / (1 - a[0]) << '\n';
}
```

**与带状 LU 的区别**：这里的转移依赖 $i+1,\ldots,i+M$，形成上带状结构，但陷阱会全局返回 $0$，造成循环依赖。它更适合“按递推方向消去局部未知量，保留一个全局参数”，不需要硬套普通带状 LU。

## 7. 两类竞赛技巧怎样统一？

从 Markov 方程 $(I-Q)E=c$ 出发：

| 转移图/矩阵结构 | 数学操作 | 竞赛写法 | 常见复杂度 |
|---|---|---|---|
| 仅向一个方向转移（可自环） | 三角方程组回代 | 倒序期望 DP | $O(\text{边数})$ |
| 一维最近邻转移 | 三对角 LU | 追赶法 / 系数递推 | $O(n)$ |
| 固定半带宽 $k$ | 带状 LU | 局部高斯消元 | $O(nk^2)$ |
| 树上的局部相邻转移 | 树形稀疏消元 | 叶到根系数递推 | $O(n)$（适当结构下） |
| 向前依赖 + 少量全局重置 | 低秩耦合/参数消元 | $f_i=a_if_0+b_i$ | 依具体转移而定 |

进一步的研究视角：若两个独立 Markov 链联合成为状态 $(X_t,Y_t)$，其联合转移可写为 $P_X\otimes P_Y$（独立且同步更新时）。但这个 Kronecker 结构**并不保证**所求系统具有小半带宽；联合状态的排序、局部转移方式、吸收条件都会影响实际可利用的结构。不要把“复合 Markov 链”与“带状矩阵”直接等同。

## 8. 解这类题的通用检查清单

1. 先定义目标：首次命中时间、累计奖励、还是命中概率？
2. 用条件期望写出 $E_i=c_i+\sum_jQ_{ij}E_j$，并处理吸收状态。
3. 判断答案是否有限；若存在无法到达吸收状态的闭合类，可能没有有限期望。
4. 对状态重新编号，观察 $I-Q$ 是否三角、带状、树形、块结构或低秩耦合。
5. 优先**不显式求逆**；选择递推、追赶、树形消元、参数待定或带状 LU。
6. 明确推导所需假设：主元非零、可达性、转移概率和边界条件。
7. 分别计算运行时间与存储：输入本身可能需要 $O(nk)$，辅助空间通常可更小。
8. 核对数值稳定性（特别是转移概率接近 1 或分母接近 0 的情形）。

## 9. 延伸训练

1. 从头推导 $O(n)$ 三对角追赶法，但不使用 LU 分解术语。
2. 对一维偏置随机游走，设左移概率 $p$、右移概率 $q=1-p$，推导 $E_i$ 的二阶差分方程并给出边界条件。
3. CF24D：将 $m=1$、$m=2$ 代入代码，检验边界公式；解释其系数矩阵为何严格对角占优。
4. ABC189 F：从方程组角度解释为什么只需保留一个未知参数 $f_0$。
5. 把半带宽从 $k=1$ 扩大到 $k=2$，画出一次消元后发生变化的元素，自己证明不会出现带外填充。
6. 如果每一行转移概率不同、状态还允许上下左右移动，为什么不一定能逐行独立求解？能否改用块三对角系统？

---

## 参考资料

- Codeforces 24D — Broken robot：<https://codeforces.com/problemset/problem/24/D>
- AtCoder ABC189 F — Sugoroku2：<https://atcoder.jp/contests/abc189/tasks/abc189_f>
- AtCoder ABC189 F 官方题解：<https://atcoder.jp/contests/abc189/editorial/541>
- LAPACK `DGBTRF`：带状矩阵的带主元 LU 分解，<https://www.netlib.org/lapack/explore-html/df/dd6/group__gbtrf_ga725ad1dfee52c0dff571566d64e30ae8.html>
- LAPACK `DGBTRS`：基于带状 LU 解线性系统，<https://www.netlib.org/lapack/explore-html/d1/dd7/group__gbtrs_ga21ed607226c9690cadc991f15435fa74.html>

本文中的代码均为学习用途重新编写的 C++17 参考实现，重点展示数学结构与时间复杂度；生产环境更应关注数值稳定性和成熟数值库。
