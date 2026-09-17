# 证明：完全有界集\iff 任意无穷点列必有Cauchy子列

## 前言

在一般的赋范线性空间中,我们熟知的Bolzano-Weierstrass定理不一定成立,经典的反例是:

$
\begin{aligned}
&\ell^{2}=\{(x_{1},x_{2},\cdots )|x_{i}\in \mathbb{R},\sum_{i=1}^{\infty }|x_{i}|^{2}<\infty \}\\
&||x||_{2}=(\sum_{i=1}^{\infty }|x_{i}|^{2})^{\frac{1}{2}}\\
&取x_{i}\in \ell^{2},x_{i}=(0,0,\cdots ,0,1,0,\cdots )\\
&则\{x_{i}\}是\ell^{2}中的无穷点列,但\{x_{i}\}没有收敛子列\\
\end{aligned}
$

因此为了在赋范线性空间中推广推广Bolzano-Weierstrass定理,我们引入了完全有界集的概念。

并且在赋范线性空间中关于完全有界集,我们有下述结论成立:

$
\begin{aligned}
&\text{设V是赋范线性空间, M是V的子集} \\
&\text{则M是完全有界集}\iff \text{任意无穷点列}\{x_n\}\subset M\text{必有Cauchy子列}
\end{aligned}
$

我们又知道,在泛函分析中，如果我们对一个赋范线性空间加上完备性的条件。那么我们就可以得到:

$\boxed{任意的Cauchy列都收敛}$

至此我们也就在一般的赋范线性空间中建立起了Bolzano-Weierstrass定理的推广版本。

$
\begin{aligned}
&设V是一个完备的赋范线性空间\\
&M是V的一个完全有界子集\\
&则M中的任意无限点列必有收敛子列\\
\end{aligned}
$

下文将对上述理论建立的核心引理给出证明:
$\boxed{完全有界集\iff 任意无穷点列必有Cauchy子列}$

## 命题
本文将证明下述命题:
$
\begin{aligned}
&设V是是一赋范线性空间\\
&证明M是V上的完全有界集\iff \forall 无穷点列 \{x_{n}\}\subset M,存在\{x_{n_{k}}\}是\{x_{n}\}的Cauchy子列\\
&\\
\end{aligned}
$

## 证明

$
\begin{aligned}
&\Rightarrow :\\
&\Rightarrow证明的基本想法是:\\
&完全有界集一定可以被有限个小球覆盖\\
&因此根据抽屉原理,就一定会有一个小球中有无穷个点\\
&\\
&我们不断对将这个球的半径缩小\\
&并以这种形式实现对M的分划加细\\
&\\
&得到上述加细分划后对于每个分划取点构造Cauchy列即可获证\\
&\\\\
&\Rightarrow 之证明:\\
&设M是V上的完全有界集,任取M中的无穷点列\{x_{n}\}\\
&由M是完全有界集可知\\
&\forall \epsilon >0,\exists x_{1},\cdots ,x_{k(\epsilon )}\in V,s.t. \\
&M\subset \cup_{i=1}^{k(\epsilon )}B(x_{i},\epsilon )\\
&取\epsilon =1\\
&则\exists x_{1_1},\cdots ,x_{k(1)}\in V,s.t. \\
&M\subset \cup_{i=1}^{k(1)}B(x_{i},1)\\
&则由抽屉原理可知\\
&\exists i_{1}\in \{1,\cdots ,k(1)\},s.t. \\
&\{n|x_{n}\in B(x_{i_{1}},1)\}是无限集\\
&\\
&下面我们归纳的取:\\
&设我们现在已经取到B(x_{i_{1}},1),\cdots ,B(x_{i_{n}},\frac{1}{n})\\
&s.t. \{n|x_{n}\in  B(x_{i_{1}},1)\cap \cdots \cap B(x_{i_{n}},\frac{1}{n})\}是无限集\\
&下面证明:\\
&同样可取B(x_{i_{n+1}},\frac{1}{n+1})\\
&s.t. \{n|x_{n}\in  B(x_{i_{1}},1)\cap \cdots \cap B(x_{i_{n+1}},\frac{1}{n+1})\}是无限集\\
&\\
&由M是完全有界集可知\\
&\exists x_{1(n+1)},\cdots ,x_{k(n+1)}\in V,s.t. \\
&M\subseteq \cup _{i=1}^{k(n+1)}B(x_{i},\frac{1}{n+1})\\
&则知M\cap B(x_{i_{1}},1)\cap \cdots \cap B(x_{i_{n}},\frac{1}{n})\subseteq \cup _{i=1}^{k(n+1)}B(x_{i},\frac{1}{n+1})\\
&故由抽屉原理可知\\
&\exists i_{n+1}\in \{1,\cdots ,k(n+1)\},s.t. \\
&\{n|x_{n}\in  B(x_{i_{1}},1)\cap \cdots \cap B(x_{i_{n+1}},\frac{1}{n+1})\}是无限集\\
&\\
&由归纳法可知\\
&I_{n}=\{n|x_{n}\in  B(x_{i_{1}},1)\cap \cdots \cap B(x_{i_{n}},\frac{1}{n})\} 均为无限集\\
&取n_{1}<n_{2}<\cdots <n_{k}<\cdots \\
&满足n_{1}\in I_{1},n_{2}\in I_{2},\cdots ,n_{k}\in I_{k},\cdots \\
&则\forall \epsilon >0\\
&取N>\frac{2 }{\epsilon}\\
&则\forall i,j>N\\
&x_{n_{i}},x_{n_{j}}\in B(x_{i_{N}},\frac{1}{N})\\
&\Rightarrow \|x_{n_{i}}-x_{n_{j}}\|<\frac{2}{N}<\epsilon\\
&\Rightarrow \{x_{n_{k}}\}是\{x_{n}\}的Cauchy子列\\
&\Rightarrow \Rightarrow 成立\\
&\\\\
&\Leftarrow :\\
&\Leftarrow证明的基本想法是:\\
&考虑反证法\\
&若M不是完全有界集\\
&则B(x_1,\epsilon )必然无法覆盖M\\
&因此\exists x_{2}\notin B(x_1,\epsilon )\\
&s.t. B(x_1,\epsilon )\cup B(x_2,\epsilon )仍无法覆盖M\\
&以此类推构造x_1,\cdots ,x_{n}不是Cauchy列即知矛盾\\
&\\
&\Leftarrow 之证明:\\
&反证法:\\
&设M不是完全有界集\\
&则\exists \epsilon >0\\
&s.t.\\
&任意有限个点\{x_{1},\cdots ,x_{n}\}\subset V\\
&均有M\not\subseteq \cup _{i=1}^{n}B(x_{i},\epsilon )\\
&故知\exists x_{1},s.t. \\
&M\not\subseteq B(x_{1},\epsilon )\\
&\exists x_{2}\notin B(x_{1},\epsilon )\\
&\exists x_{3}\notin B(x_{1},\epsilon )\cup B(x_{2},\epsilon )\\
&\cdots \\
&构造出上述点列x_{1},\cdots ,x_{n},\cdots \subset M\\
&则\forall x_{i},x_{j}\in \{x_{1},\cdots ,x_{n},\cdots \}\\
&\Rightarrow \|x_{i}-x_{j}\|\geq \epsilon\\
&故知\{x_{i}\}是无限点列,但\{x_{i}\}没有Cauchy子列\\
&矛盾\\
&故\Leftarrow 成立\\
\end{aligned}
$