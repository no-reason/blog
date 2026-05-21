# 谈Vitali收敛定理在概率论和实变教材中的两种不同表示形式

## 前言

笔者在最近的实变函数课上学习了Vitali收敛定理，但经过之前概率论的学习,笔者发现所谓的Vitali收敛定理其实就是概率论中讨论的L_{r}收敛的条件。但是笔者发现在笔者的概率论教材(苏淳、冯群强《概率论》)中该定理描述如下:

$$
若对r>0,随机变量序列\{|X_{n}|^{r},n\in N_{}\}一致可积\\
且X_{n}\overset{p}{\to }X,则X\in L_{r},且X_{n}\overset{L_{r}}{\to }X\\
$$


但在笔者的实变课本中,却又出现了不同于一致可积的另一个名词:

$
\begin{aligned}
&Vitali定理:\\
&(1)mE<+\infty\\
&(2)\{f_{n}(x)\}是在E上积分等度绝对连续的函数列\\
&(3)在E上f_{n}(x)\overset{p}{\to }f\\
&则f(x)在E上可积,且\lim_{n\to \infty}\int_{E}f_{n}(x)dx=\int_{E}f(x)dx\\
&\\
\end{aligned}
$

我们发现实变函数的教材中将概率论教材中的一致可积概念换成了等度绝对连续，但经过笔者的仔细分析,这两个概念的等价性并不显然。故本文将讨论这两个概念的等价性。并证明在Vitali定理的前提假设(全集测度有限,在概率测度上自然满足)下,一致可积与等度绝对连续这两个概念等价。

## 积分等度绝对连续与一致可积

$
\begin{aligned}
&\\\\
&因此我们下面证明在mE<+\infty的前提下\\
&f_{n}(x)一致可积\iff f_{n}(x)在E上积分绝对等度连续\\
&\\\\
&f_{n}(x)一致可积,i.e.\\
&\forall \epsilon >0,\exists 只与\epsilon 有关的M>0\\
&s.t. \int_{|f_{n}(x)\geq M|}|f_{n}(x)|dx \leq \epsilon \\
&f_{n}(x)在E上积分绝对等度连续,i.e.\\
&\forall \epsilon >0,\exists 只与\epsilon 有关的\delta >0\\
&s.t. \forall A\subseteq E,m(A)\leq \delta \\
&有\int_{A}|f_{n}(x)|dx\leq \epsilon \\
&\\\\
&Prove:\\
&一致可积\Rightarrow 等度绝对连续\\
&由f_{n}(x)在E上一致可积可知\\
&\forall \epsilon >0,\exists 只与\epsilon 有关的M,s.t. \\
&\int_{|f_{n}(x)\geq M|}|f_{n}(x)|dx \leq \epsilon \\
&记\{x:f_{n}(x)\geq M\}=T\\
&则\int_{A}|f_{n}(x)|dx=\int_{A\cap T}|f_{n}(x)|dx+\int_{A\cap T^{c}}|f_{n}(x)|dx\\
&\leq \epsilon +\int_{A\cap T^{c}}|f_{n}(x)|dx\\
&\leq \epsilon +\int_{A\cap T^{c}}Mdx\\
&\leq \epsilon +Mm(A)(*)\\
&取\delta =\frac{\epsilon}{M}\\ 
&即有(*)\leq 2\epsilon \\
&故知一致可积\Rightarrow 等度绝对连续\\
&\\\\
&等度绝对连续\Rightarrow 一致可积\\
&由|f_{n}(x)|在E上的积分等度绝对连续\\
&故可知\\
&\forall \epsilon >0,\exists 只与\epsilon 有关的\delta \\
&s.t. \forall A\subseteq E,m(A)<\delta \\
&\int_{A}|f_{n}(x)|dx\leq \epsilon \\
&\\
&我们欲证:\\
&\int_{|f_{n}(x)|\geq M}|f_{n}(x)|dx\leq \epsilon \\
&一个自然的想法是\\
&我们只需证明m(\{x:|f_{n}(x)|\geq M\})<\delta \\
&\\
&在证明该命题前,我们首先证明一个引理:\\
&若mE<+\infty,\{f_{n}(x)\}在E上积分等度绝对连续\\
&则\int_{E}|f_{n}|(x)dx一致有界\\
&由f_{n}(x)在E上积分等度绝对连续\\
&\\
&\forall \epsilon >0,\exists 只与\epsilon 有关的\delta >0\\
&s.t. \forall A\subseteq E,m(A)\leq \delta \\
&有\int_{A}|f_{n}(x)|dx\leq \epsilon \\
&我们取\epsilon =1\\
&则\exists \delta >0,\\
&s.t. \forall A\subseteq E,m(A)\leq \delta \\
&\int_{A}|f_{n}(x)|dx\leq 1\\
&我们考虑对E做分拆\\
&在空间 \mathbb{R}^n 中，构造由“左闭右开”区间组成的 n 维正方体网格\\
&我们可以强行设定每一个小网格的体积（测度）均严格小于 \delta\\
&由于该网格个数是可数的\\
&因此我们可以将其记为\{Q_{k}\}_{k=1}^{+\infty}\\
&令E_{k}=E\cap Q_{k}\\
&\\
&且\sum_{k=1}^{\infty}m(E_{k})=m(E)<+\infty\\
&因此\exists N\in N_+,s.t. \\
&\sum_{k=N+1}^{\infty}m(E_{k})\leq \delta  \\
&取E_{d}=\cup_{k=N+1}^{\infty}E_{k}\\
&\\
&考虑集合E_1,E_2,\cdots E_{N},E_{d}\\
&\\
&\int_{E}|f_{n}(x)|dx=\sum_{k=1}^{N}\int_{E_{k}}|f_{n}(x)|dx+\int_{E_{d}}|f_{n}(x)|dx\\
&\leq N+1\\
&故知\int_{E}|f_{n}(x)|dx一致有界\\
&\\\\
&回到原命题的证明:\\
&我们欲证m(x:|f_{n}(x)|\geq M)<\delta \\    
&一个自然的想法是直接使用Chebyshev不等式\\
&m(x:|f_{n}(x)|\geq M)\leq \frac{Ex}{M}\\
&\leq \frac{N+1}{M}\\
&故知\exists M>0,s.t. m(x:|f_{n}(x)|\geq M)<\delta \\
&故知等度绝对连续\Rightarrow 一致可积\\
&\\\\
\end{aligned}
$

