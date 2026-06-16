# $L^{p}$ 空间

$
\begin{aligned}
&L^p=\{f,\int_{E}|f(x)|^{p}<+\infty\}\\
&L^{p}是线性空间\\
&\int_{E}|f+g|^{p}dx\leq \int_{E}(|f|^{p}+|g|^{p})\cdot 2^{p-1}dx\\
&def:\rho(f,g)=(\int_{E}|f-g|^{p}dx)^{\frac{1}{p}}\\
&\\\\
&下面验证\rho 是一个内积\\
&(1)\rho(f,g)=0 \iff f=g\\
&(2)\rho(f,g)=\rho(g,f)\\
&(3)\rho(f,g)\leq \rho(f,z)+\rho(z,g)\\
&\\\\
&Prove:\\
&(1)f=g,a.e.\\
&故知\rho ,不是一个内积\\
&\\\\
&若f=g,,a.e.于E,则在\mathcal{L}^{p}中看作相等\\
&定义L^{p}=\mathcal {L}^{p}/\sim\\
&这样\rho 就满足内积的第一条了\\
&\\
&"Holder不等式":\\
&p,q\geq 1,若\frac{1}{p}+\frac{1}{q}=1,则称p,q互为共轭指数\\
&\\
&特别的,1,\infty互为共轭指数\\
&\\
&\int_{E}|f(x)g(x)|dx\leq [\int_{E}|f(x)^{p}dx|]^{\frac{1}{p}}[\int_{E}|g(x)|^{q}dx]^{\frac{1}{q}}\\
&利用e^{x}的凸性\\
&易有:a^{\frac{1}{p}}b^{\frac{1}{q}}\leq \frac{1}{p}a+\frac{1}{q}b\\
&取a,b,为\frac{|f(x)|^{p}}{\int_{E}|f(x)|^{p}dx},\frac{|g(x)|^{q}}{\int_{E}|g(x)|^{q}dx}\\
&两边同时取积分得证\\
&\\\\
&Proposition:\\
&\int_{E}|f(x)|^{p}dx\\
&\\
&Minkowski不等式:\\
&f,g\in L^{p}\\
&(1\leq p<+\infty),则\\
&[\int_{E}|f+g|^{p}dx]^{\frac{1}{p}}\leq [\int_{E}(|f|^{p}dx)]^{\frac{1}{p}}[\int_{E}(|g|^{p}dx)]^{\frac{1}{p}}\\\\
&赋范空间(X,||\cdot ||),||\cdot ||: X\to R\\
&(1)||x||\geq 0,||x||=0\iff x=0\\
&(2)||\alpha x||=|\alpha |||x||\\
&(3)||x+y||\leq ||x||+||y||\\
&\\\\
&定义:设f_{k}\in L^{p},若\exists f\in L^{p},s.t.: \\
&\lim_{k\to +\infty} ||f_{k}-f||_{p}=0,称\{f_{k}\}收敛于f\\
&称f_{k}依L^{p}收敛或p方平均收敛\\
&\\
&定义:(基本列)\\
&若家f_{k}\in L^{p},满足\lim_{k,j\to \infty}||f_{k}-f_{j}||_{p}=0\\
&称\{f_{k}\}是L^{p}中的Cauchy列\\
&\\
&Tip:\\
&若:\{f_{k}\}收敛,则极限唯一.\\
&f_{k}\to f\\
&||f||_{p}\leq ||f_{k}-f||_{p}+||f_{k}||_{p}\\
&||f_{k}||_{p}\leq ||f-f_{k}||+||f||_{p}\\
&||f_{k}||_{p}-||f||_{p}\leq ||f-f_{k}||_{p}\to 0\\
&则||f_{k}||_{p}\to ||f||(k\to +\infty)\\\\
&\\
&p方平均收敛可以推出依测度收敛\\
&(Chebyshev不等式)\\
&\\\\
&L^{p}是完备的\\
&(i.e.任意Cauchy列都收敛)\\
&\\\\
&证明:\\
&\{f_{k}\}是Cauchy列，\exists f=\lim_{k\to +\infty} f_{k}\\
&且f\in L^{p}\\
&\forall \sigma >0,\\
&令E_{k,j}(\sigma )=\{x,|f_{j}(x)-f_{k}(x)|\geq \sigma \}\\
&||f_{i}-f_{k}||_{p}=[\int_{E}|f_{i}(x)-f_{k}(x)|^{p}]^{\frac{1}{p}}\geq [\int_{E_{k,j}}|f_{i}(x)-f_{k}(x)|^{p}]^{\frac{1}{p}}\geq \sigma \cdot m[E_{k,j}(\sigma )]^{\frac{1}{p}}\\
&\\
&\{f_{k}\}为依测度收敛基本列\\
&\int_{E}|f_{k}(x)-f(x)|^{p}dx=\int_{E}\lim_{i\to +\infty} |f_{k}(x)-f_{k_i}(x)|^{p}dx\leq \underline{\lim} \\
&先省略\\\\
&\\
&L^{p}可分\\
&若(X,d)上有可数稠密子集X_{0},称X可分\\
&\\
&\cdot L^{p}可分\\
&L^{p}([a,b])\\
&\forall \epsilon >0,\forall f\\
&\exists \phi \in X_{0}\\
&s.t. \\
&[\int _{E}|f(x)-\phi(x)|^{p}dx]^{\frac{1}{p}}\leq \epsilon \\
&将X_{0}取为有理多项式集合即可\\
&(Lusin+Waierstarass定理)\\
&(也可以考虑简单函数逼近)\\
&\\\\
&L^{\infty}不可分\\
&\\
&L^{p}中,只有p=2的时候可以定义内积\\
&\\
&<f,g>=\int _{E}f(x)\overline{g(x)}dx\\
&此时的Holder不等式:\\
&(Schwarz不等式)\\
&||f\cdot g||_{1}\leq ||f||_{2}||g||_{2}\\
&(函数的表示问题)\\
&命题(内积的连续性):\\
&f_{k},f\in L^{2}(E)\\
&\lim_{k\to +\infty}||f_{k}-f||_{2}=0\\
&<f_{k},g>\to <f,g>,\forall g\\
&|<f_{k},g>-<f,g>|=|<f_{k}-f,g>|\\
&\leq ||(f_{k}-f)\overline{g}||_{1}\\
&\leq ||f_{k}-f||_{2}\cdot ||g||_{2}\to 0\\
&\\
\end{aligned}
$

## 正交系

$
\begin{aligned}
&f,g\in L^{2}(E),若<f,g>=0,则称f,g正交\\
&\\
&若\{\phi _{\alpha}\}_{\alpha \in I}中两两正交\\
&称\{\phi_{\alpha}\}是正交系\\
&若||\phi_{\alpha}||_{2}=1,则称\{\phi_{\alpha}\}是标准正交系\\
&\\\\
&th:\\
&L^{2}(E)中任意标准正交系均可数\\
&\{\phi_{\alpha}\}_{\alpha \in I}是标准正交系\\
&||\phi_{\alpha}-\phi_{\beta}||_{2}\\
&||\phi_{\alpha}-\phi_{\beta}||_{2}^{2}=<\phi_{\alpha}-\phi_{\beta},\phi_{\alpha}-\phi_{\beta}>\\
&=2\\
&\Rightarrow ||\phi_{\alpha}-\phi_{\beta}||_{2}=\sqrt{2}\\
&\\
&若\phi_{\alpha }不可数\\
&\\
&由L^{2}可分\\
&\exists X_{0}\\
&\\\\
&
\end{aligned}
$



这是一个非常经典的泛函分析拓扑问题！它完美地将代数（正交性）**与**拓扑（稠密性）结合在了一起。

在给出严格证明之前，我们必须先扫清一个极其重要的“隐藏大前提”：**这个结论只对“可分（Separable）”的 $L^2$ 空间成立。**
如果在考场上遇到这道题，直接开写证明是会被扣分的。你必须先向阅卷老师指出：我们通常研究的 $L^2(\mathbb{R}^n)$ 或 $L^2([a, b])$（基于 Lebesgue 测度）是**可分空间**。
*可分的定义是：空间中存在一个**至多可数的稠密子集**（你可以把它想象成实数轴上的有理数）。在 $L^2$ 中，这个可数稠密子集通常是“端点为有理数、取值为有理数的阶梯函数集合”。*

只要有了“可分性”这个大前提，证明的底层逻辑就是一个极其优美的“几何抽屉原理”。

---

### 🧠 证明核心逻辑：距离的绝对孤立

如果有一群互相垂直且长度为 1 的向量（标准正交系），它们彼此之间的距离会被“勾股定理”死死锁住。这意味着它们不可能无限靠近，每一个向量周围都有一个绝对属于自己的“私人空间（开球）”。因为整个空间里只有可数个“锚点（稠密点）”，所以这种私人空间最多只能有可数个！

---

### 🚀 严密证明过程

**【已知条件】**
设 $H$ 为可分的 Hilbert 空间（例如标准的 $L^2$ 空间）。
设 $\{e_\alpha\}_{\alpha \in I}$ 是 $H$ 中的任意一个标准正交系（其中 $I$ 是索引集）。

**【求证目标】**
索引集 $I$ 是至多可数的。

#### 第一步：利用勾股定理计算“极小安全距离”

对于标准正交系中的任意两个**不同**的元素 $e_\alpha$ 和 $e_\beta$（$\alpha \neq \beta$），由于它们都是单位向量（$\|e_\alpha\| = \|e_\beta\| = 1$），且相互正交（内积 $\langle e_\alpha, e_\beta \rangle = 0$），我们计算它们之间的距离平方：

$$\begin{aligned}
\|e_\alpha - e_\beta\|^2 &= \langle e_\alpha - e_\beta, e_\alpha - e_\beta \rangle \\
&= \|e_\alpha\|^2 - 2\langle e_\alpha, e_\beta \rangle + \|e_\beta\|^2 \\
&= 1 - 0 + 1 = 2
\end{aligned}$$

因此，任意两个不同基向量之间的精确距离恒为：

$$\|e_\alpha - e_\beta\| = \sqrt{2}$$

这说明，在 $L^2$ 空间中，标准正交系里的点是非常“离散”的，它们彼此之间保持着严格的 $\sqrt{2}$ 的距离。

#### 第二步：构造互不相交的“私人空间（开球）”

为了把每个 $e_\alpha$ 隔离开，我们以每一个 $e_\alpha$ 为球心，作一个半径为 $r = \frac{\sqrt{2}}{2}$ 的开球，记为 $B_\alpha$：

$$B_\alpha = \left\{ x \in H \mathrel{\Big|} \|x - e_\alpha\| < \frac{\sqrt{2}}{2} \right\}$$

我们来证明，对于不同的 $\alpha$ 和 $\beta$，这两个球 $B_\alpha$ 和 $B_\beta$ 是**绝对互不相交**的。
（反证法）：假设存在一个点 $x \in B_\alpha \cap B_\beta$。
根据三角不等式，这两个球心之间的距离应该满足：

$$\|e_\alpha - e_\beta\| \le \|e_\alpha - x\| + \|x - e_\beta\|$$

因为 $x$ 同时在两个开球内，所以：

$$\|e_\alpha - x\| < \frac{\sqrt{2}}{2}, \quad \|x - e_\beta\| < \frac{\sqrt{2}}{2}$$

代入上面的不等式，得到：

$$\sqrt{2} \le \|e_\alpha - e_\beta\| < \frac{\sqrt{2}}{2} + \frac{\sqrt{2}}{2} = \sqrt{2}$$

这就得出了 $\sqrt{2} < \sqrt{2}$ 的荒谬结论！
矛盾！因此，**所有的开球 $\{B_\alpha\}_{\alpha \in I}$ 是两两互不相交的**。

#### 第三步：召唤稠密性实施“抽屉原理”绝杀

因为 $L^2$ 空间是可分的，所以它必定包含一个**至多可数的稠密子集**，我们将其记为 $D = \{d_1, d_2, d_3, \dots, d_n, \dots\}$。

既然 $D$ 在整个空间中是稠密的，这意味着空间里的**任意一个非空开集**中，都必定至少包含 $D$ 中的一个元素。

现在，我们把目光投向刚才构造的那一堆互不相交的开球 $\{B_\alpha\}$。

1. 对于每一个开球 $B_\alpha$，里面必定含有稠密子集 $D$ 中的至少一个元素。我们从 $B_\alpha$ 中随便挑出一个这样的点，记作 $d_{k(\alpha)}$。
2. 这样，我们就建立了一个从索引集 $I$ 到可数集 $D$ 的映射：$\alpha \mapsto d_{k(\alpha)}$。
3. **最关键的一步**：因为所有的开球 $B_\alpha$ 都是互不相交的！这就意味着，不同的球里绝对不可能挑出同一个 $d$。即如果 $\alpha \neq \beta$，必定有 $d_{k(\alpha)} \neq d_{k(\beta)}$。
4. 这说明，这个映射是一个**单射（One-to-one mapping）**！

既然我们能把索引集 $I$ 单射到一个至多可数的集合 $D$ 中，根据集合论的基数比较原理，索引集 $I$ 本身必定也是至多可数的。

证明完毕！ $\blacksquare$

---

### 💡 考场高分心法

这道题其实揭示了泛函分析中的一个极为深刻的推论：**所有无穷维的可分 Hilbert 空间，本质上都是同构的（它们都可以与平方可和数列空间 $\ell^2$ 建立等距同构）**。

在书写时，只要牢牢抓住“距离恒定为 $\sqrt{2}$ $\to$ 互不相交开球 $\to$ 稠密子集单射分配”这条逻辑主线，这种涉及拓扑与泛函混合的题目就能轻松秒杀。



## Fourier

$
\begin{aligned}W
&引理:令f_{k}(x)=\sum_{i=1}^{k}a_{i}\phi_{i}(x)\\
&则a_{i}=c_{i}时\\
&(这里的c_{i}是Fourier展开中的系数)\\
&(c_{k}=<f,\phi_{k}>)\\
&||f-f_{k}||最小\\
&Prove:\\
&||f-f_{k}||_{2}^{2}\\
&=||f||_{2}^{2}+\sum_{i=1}^{k}|a_{i}-c{i}|^{2}-\sum_{i=1}^{k}c_{i}^2\\
&||f-f_{k}||_{2}^{2}=||f||_{2}^{2}-\sum_{i=1}^{k}c_{i}^2\\
&\\
&Bessel不等式:\\
&\sum c_i^2\leq ||f||_2^2\\
&Riesz-Fisher定理:\phi_k 是标准正交系\\
&c_k满足\sum c_k^2<+\infty\\
&\exists g\in L^2,s.t.<g,\phi_k>=c_k,\forall k\\
&\\\\
&完全正交系:\\
&\{\phi_k\}是标准正交系,\\
&(\phi,\phi_{k})=0,\forall k,\iff  \phi=0\\
&\\
\end{aligned}
$