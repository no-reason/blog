# THM6.3 M是紧集\iff M是列紧闭集

## 距离线性空间中的自列紧$\Rightarrow 可分$
$
\begin{aligned}
\end{aligned}
$

$
\begin{aligned}
&\Rightarrow \\
&\Rightarrow 证明的基本思路是:\\
&考虑反证法\\
&如果M不是列紧集\\
&就会存在一个无穷数列\{x_{n}\}没有收敛子列\\
&那么\forall y\in M,\exists \delta _{y}\\
&s.t.\overset{o}{B_{y}}(\delta _{y})\cap \{x_{n}\}=\emptyset\\
&\\
&那么我们考虑\\
&M\subseteq B_{y}(\delta _{y})\\
&故由M是紧集可知Heine-Borel定理成立\\
&\\
&因此有有限子覆盖\{B_{y_{1}}(\delta _{y_{1}}),\cdots ,B_{y_{k}}(\delta _{y_{k}})\}\\
&\\
&s.t. M\subseteq \cup_{i=1}^{k}B_{y_{i}}(\delta _{y_{i}})\\
&故\{x_{n}\}\subseteq \cup_{i=1}^{k}B_{y_{i}}(\delta _{y_{i}})\\
&\\
&故知\exists i_{0}\in \{1,\cdots ,k\},s.t.\\
&\{n|x_{n}\in B_{y_{i_{0}}}(\delta _{y_{i_{0}}})\}是无限集\\
&\\
&这与\overset{o}{B_{y_{i_{0}}}}(\delta _{y_{i_{0}}})\cap \{x_{n}\}=\emptyset矛盾\\
&\Leftarrow \\
&\\
&只需证明:\\
&\exists \epsilon _{0}>0,\forall x\in M,\exists \alpha _{x}\in \Gamma\\
&s.t. B(x,\epsilon _{0})\subset G_{\alpha _{x}}\\
&\\
&反证:\\
&若\forall \frac{1}{n},\exists x_{n}\in M\\
&\forall \alpha \in \Gamma \\
&s.t. B(x_{n},\frac{1}{n})\not\subset G_{\alpha }\\
&由M是列紧集可知\{x_{n}\}有收敛子列\{x_{n_{k}}\}\\
&\{x_{n_{k}}\}\to x_{0}\in M\\
&\Rightarrow \exists \alpha _{0}\in \Gamma \\
&s.t. x_{0}\in G_{\alpha _{0}}\\
&由G_{\alpha _{0}}是开集可知\\
&\exists r>0\\
&s.t. B(x_{0},r)\subset G_{\alpha _{0}}\\
&\\
&\exists k_{1}>0,k>k_{1}\\
&s.t. d(x_{n_{k}},x_{0})<\frac{r}{3}\\
&\\
&\exists k_{2}>0,k>k_{2}\\
&s.t. \frac{1}{n_{k}}<\frac{r}{3}\\
&\\
&当K=k_{1}+k_{2}时\\
&当k>K时\\
&B(x_{n_{k}},\frac{1}{n_{k}})\subset B(x_{0},r)\subset G_{\alpha _{0}}\\
\end{aligned}
$




## 一般的距离线性空间中有界闭集不一定是紧集

原因是：一般的距离线性空间中，M列紧+闭才等价于紧急，但是列紧需要完全有界+完备
才能保障

## 对角线方法


## Arzela-Ascoli-THM:$\mathcal {F}$ 是C[0,1]中的列紧集 $\iff \mathcal {F}$是一致有界并同等连续的

$
\begin{aligned}
&证明:\\
&C[0,1]是完备的\\
&\Rightarrow :\\
&\mathcal {F}是列紧集\\
&\Rightarrow \mathcal {F}完全有界\\
&\exists M>0,s.t. \\
&\mathcal {F}\subseteq B(0,M)\\
&\Rightarrow \mathcal {F}一致有界\\
&\forall \epsilon >0\\
&\exists \epsilon -网\{f_{1},\cdots ,f_{k(\epsilon )}\}\\
&\forall f\in \mathcal {F},\exists f_{i}\in \{f_{1},\cdots ,f_{k(\epsilon )}\}\\
&s.t. \|f-f_{i}\|<\epsilon \
&由f_{i}(x)一致连续可知\\
&\exists \delta _{i}>0,s.t. \\
&|f_{i}(x)-f_{i}(y)|<\epsilon ,\forall x,y\in [0,1],|x-y|<\delta _{i}\\
&\\
&取\delta =min\{\delta _{1},\cdots ,\delta _{k(\epsilon )}\}\\
&则\forall f\in \mathcal {F},\exists f_{i}\in \{f_{1},\cdots ,f_{k(\epsilon )}\}\\
&s.t. \|f(x)-f(y)\|<...分段估计即可\\
&\Leftarrow :\\
&\forall\{f_{n}\}\subset \mathcal {F}\\
&找Cauchy子列\{f_{n_{k}}\}\\
&考虑[0,1]\cap Q=\{r_j\}是有理数的稠密子集\\
&\forall j,\{f_{n}(r_{j})\}是有界数列\\ 
&\Rightarrow \{f_{n}(r_{j})\}有收敛子列\{f_{n_{k}}(r_{j})\}\\
&下面考虑f_{n_{k}}(t)是否就是f_{n}(x)的Cauchy列\\
&d(f_{n_{k}},f_{n_{k+m}})=\sup_{t\in [0,1]}|f_{n_{k}}(t)-f_{n_{k+m}}(t)|\\
&\forall \epsilon >0\\
&\exists \delta >0,s.t. \\
&[0,1]\subseteq \cup_{j=1}^{\infty}B(r_{j},\delta )\\
&由有限覆盖定理可知\\
&不妨设[0,1]\subseteq \cup_{j=1}^{N}B(r_{j},\delta )\\
&\forall t\in [0,1],\exists j_{0},s.t. |t-r_{j_{0}}|<\delta\\
&针对j_{1},\cdots ,j_{N}\\
&\exists K>0\\
&当k>K时\\
&|f_{n_{k}}(r_{j_{0}})-f_{n_{k+m}}(r_{j_{0}})|<\epsilon\\
&\Rightarrow |f_{n_{k}}(t)-f_{n_{k+m}}(t)|<\epsilon\\
&\Rightarrow \{f_{n_{k}}\}是Cauchy列\\
&\Rightarrow \{f_{n}\}有收敛子列\\
&\\\\\\
&Arzela-Ascoli定理更一般的形式是:\\
&K是紧度量空间\\
&\mathcal {F}\in C(K)\\
&若\mathcal {F}一致有界并同等连续\\
&则\mathcal {F}是列紧集\\
\end{aligned}
$



同等连续:\epsilon 的选取不与\epsilon 和f相关

## 

$
\begin{aligned}
&\{f_{n}(z)\}\subset H(D_{3}一致有界)\\
&证明:\{f_{n}(z)\}同等连续on D_{1}\\
&证明就是如果导数一致有界就一定同等连续\\
&所以只需要说明导数一致有界就可以\\
&用Cauchy积分公式表示一下导数就可以了\\
\end{aligned}
$


Montel定理

$
\begin{aligned}
&设\{f_{n}(z)\}是区域\Omega上一致有界的全纯函数列\\
&则于任何完全位于\Omega内的有界区域D\\
&恒有f_{n}(z)的子序列在D上一致收敛\\
\end{aligned}
$


# 赋范线性空间

$
\begin{aligned}
&(X,\|\cdot\|)是赋范线性空间\\
&(1)\|x\|\geq 0,\|x\|=0\iff x=0\\
&(2)\|ax\|=|a|\|x\|\\
&(3)\|x+y\|\leq \|x\|+\|y\|\\
&\\
&齐次性、正定性、三角不等式\\
&若第一条不能保证范数为零可以推出x=0\\
&那么就称为半范数\\
&\\
&例:\\
&L^{p},\ell^{p}都是赋范线性空间\\
&(\Omega ,\mu),\sigma 有限测度空间\\
&(整个空间可以被可数个有限测度集合覆盖)\\
&\\
&d(x,y)=\|x-y\|\\
&则(X,d)是距离线性空间\\
&\\\\
&线性算子:\\
&
\end{aligned}
$


