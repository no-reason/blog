# Flandars定理及其证明

本文主要介绍给定空间内矩阵最大秩作为限制后,描述子空间维数上限的重要工具:

Flandars定理:

$
\begin{aligned}
&设M_{m,n}(R)是所有m\times n矩阵构成的线性空间\\
&V是M_{m,n}(R)的线性子空间\\
&且 \max_{A\in V}rank(A)=r\\
&则 \dim V\leq r\max\{m,n\}\\
\end{aligned}
$

并给出证明

## Dieudonne定理

$
\begin{aligned}
&我们首先介绍Flandars定理的一个特例:\\
&Dieudonne定理:\\
&设M_{n,n}(R)是所有n\times n矩阵构成的线性空间\\
&V是M_{n,n}(R)的线性子空间\\
&且 \max_{A\in V}rank(A)=n-1\\
&则 \dim V\leq (n-1)\max\{n,n\}\\
&\\
&下面,我们将采取逐步探索的方法\\
&考虑Dieudonne定理的证明\\
&设A=arg \max_{A\in V} rank (A)\\
&则r(A)=n-1\\
&为了以简驭繁\\
&我们自然考虑\exists 可逆阵P,Q\\
&s.t. PAQ=diag(I_{n-1},0)\\
&由于P,Q均为可逆阵\\
&故知V\cong PVQ\\
&故知我们可不妨设\exists  diag(I_{n-1},0)\in V\\
&\\
&考虑到如果V不是线性空间\\
&而只是一个集合\\
&我们对其中矩阵的形式便无法做任何限制\\
&\\
&因此我们需要利用线性空间的性质来对V中的矩阵加以限制\\
&\\
&一个自然的想法是考虑扰动\\
&设X=\begin{bmatrix}
A&a\\
b^{T}&c\\
\end{bmatrix}\\
&\\
&则X+k\begin{bmatrix}
I_{n-1}\\
&0\\
\end{bmatrix}\in V\\
&\Rightarrow \begin{bmatrix}
A&a\\
b^{T}&c\\
\end{bmatrix}+k\begin{bmatrix}
I_{n-1}\\
&0\\
\end{bmatrix}=\begin{bmatrix}
A+kI_{n-1}&a\\
b^{T}&c\\
\end{bmatrix}\in V\\
&取k充分大可知A+kI_{n-1}可逆\\
&det(\begin{bmatrix}
A+kI_{n-1}&a\\
b^{T}&c\\
\end{bmatrix})=det(A+kI_{n-1})\cdot (c-b^{T}(A+kI_{n-1})^{-1}a)=0\\
&\\
&此时我们发现现在只可以研究k \to \infty的情况\\
&如果那么此时我们要想讨论左侧的表达式为0\\
&可能就需要基于矩阵范数进行复杂的讨论\\
&\\\\
&因此我们换一种扰动的方法\\
&考虑\begin{bmatrix}
I_{n-1}\\
&0\\
\end{bmatrix}+kX=\begin{bmatrix}
I_{n-1}+kA&ka\\
kb^{T}&kc\\
\end{bmatrix}\in V\\
&\Rightarrow \\
&当k充分小时\\
&det(\begin{bmatrix}
I_{n-1}+kA&ka\\
kb^{T}&kc\\
\end{bmatrix})=det(I_{n-1}+kA)\cdot (kc-kb^{T}(I_{n-1}+kA)^{-1}ka)=0\\
&\\
&由于\lim_{k\to 0}det(I_{n-1}+kA)=1\\
&故知\lim_{k\to 0}kc-kb^{T}(I_{n-1}+kA)^{-1}ka=0\\
&\Rightarrow\\
&c=\lim_{k\to 0}kb^{T}(I_{n-1}+kA)^{-1}a=0\\
&\Rightarrow c=0\\
&\lim_{k\to 0}b^{T}(I_{n-1}+kA)^{-1}a=0\\
&令k \to 0,可知b^{T}a=0\\
&我们发现\\
&由于V是线性空间\\
&故上述性质也可以利用扰动方法进行强化\\
&\\
&\\
&考虑\\
&\forall \begin{bmatrix}
A&b_1\\
c_1^{T}&0
\end{bmatrix},\begin{bmatrix}
A'&b_2\\ 
c_2^{T}&0\\
\end{bmatrix}\in V\\
&\begin{bmatrix}
A+A'&b_1+b_2\\
c_1^{T}+c_2^{T}&0\\
\end{bmatrix}\in V\\
&\Rightarrow \\
&(c_1^{T}+c_2^{T})(b_1+b_2)=0\\
&\Rightarrow c_1^{T}b_1+c_1^{T}b_2+c_2^{T}b_1+c_2^{T}b_2=0\\
&\Rightarrow c_1^{T}b_2+c_2^{T}b_1=0(*)\\
&\\\\
&下面我们考虑如何对V的维数进行刻画\\
&考虑到A部分最多可以共享(n-1)^{2}个自由度\\
&\\
&也即我们需要证明的\\
&只需要证明在上述限制下\\
&b部分和c部分最多可以共享(n-1)个自由度\\
&\\
&为了将b,c两部分割裂考虑,我们考虑下述映射:\\
&\\
&f:V\to M_{n-1,n}(R)\\
&\begin{bmatrix}
A&b\\
c^{T}&0\\
\end{bmatrix}\mapsto (A~~b)\\
&\\
&则dim V=dim ker f +dim Im f\\
&\\
&设W=L(\{b|\begin{bmatrix}A&b\\ c^{T}&0\end{bmatrix}\in V\})\\
&设dim W=q\\
&W=\{w_1,\cdots ,w_{q}\}\\
&\\
&则dim Im f \subseteq L (E_{11},E_{12},\cdots ,E_{n-1,n-1},\begin{bmatrix}O&w_{1}\\ 0&0\\
\end{bmatrix},\begin{bmatrix}O&w_{2}\\ 0&0\\
\end{bmatrix},\cdots ,\begin{bmatrix}O&w_{q}\\ 0&0\\
\end{bmatrix})\\
&故知dim Imf    \leq (n-1)^{2}+q\\
&而X\in Ker f\iff X=\begin{bmatrix}
O&0\\
c^{T}&0\\
\end{bmatrix}\\
&故由(*)可知\\
&\forall \begin{bmatrix}
A&b\\
c'^{T}&0\\
\end{bmatrix}\in V\\
&都有\\
&c^{T}b=0\\
&\Rightarrow \\
&设T=\{c^{T}|\begin{bmatrix}
0&0\\
c^{T}&0\\
\end{bmatrix}\in ker f\}\\
&则T\perp W\\
&\Rightarrow \\
&dim T\leq n-1-q\\
&\Rightarrow \\
&dim ker f\leq n-1-q\\
&\\
&\Rightarrow \\
&dim V \leq (n-1)^{2}+n-1-q+q=(n-1)n=n^{2}-n\\
&\\
&故原命题得证\\
\end{aligned}
$

## Flandars定理

$
\begin{aligned}
&利用与上文证明Dieudonne定理完全相同的思路\\
&我们即可对Flandars定理给出证明\\
&\\
&Flandars定理:\\
&设M_{m,n}(R)是所有m\times n矩阵构成的线性空间\\
&V是M_{m,n}(R)的线性子空间\\
&且 \max_{A\in V}rank(A)=r\\
&则 \dim V\leq r\max\{m,n\}\\
&\\\\
&证明:\\
&(不妨设n\geq m)\\
&与上文类似\\
&我们不妨设I_{r}\in V\\
&考虑\forall \begin{bmatrix}
A&B\\
C&D\\
\end{bmatrix}\in V\\
&(其中A\in R^{r\times r},B\in R^{r\times (n-r)},C\in R^{(m-r)\times r},D\in R^{(m-r)\times (n-r)})\\
&\\
&则有当k充分小时\\
&总有kA+I_{r}可逆\\
&\Rightarrow \\
&\begin{bmatrix}
kA+I_{r}&kB\\
kC&kD\\
\end{bmatrix}\in V\\
&\\
&但这是我们发现由于m,n未必相等\\
&所以我们无法直接使用Cauchy行列式公式进行计算\\
&这里我们直接对上式子进行初等变换\\
&r(\begin{bmatrix}
kA+I_{r}&kB\\
kC&kD\\
\end{bmatrix})=r(\begin{bmatrix}I_{r}+kA&kB\\
O&kD-kC(I_{r}+kA)^{-1}kB\end{bmatrix})
&由kA+I_{r}可逆可知\\
&kD-kC(I_{r}+kA)^{-1}kB=O\\
&与上文类似可知\\
&D=O\\
&CB=O\\
&\\
&按照与上文相同的方法可知\\
&\forall \begin{bmatrix}
A_{1}&B_{1}\\
C_{1}&O\\
\end{bmatrix},\begin{bmatrix}
A_{2}&B_{2}\\
C_{2}&O\\
\end{bmatrix}\in V\\
&有C_{1}B_{2}+C_{2}B_{1}=0\\
&\\\\
&\\
&利用同样的映射法进行考虑\\
&f:V\to M_{r,n}(R)\\
&\begin{bmatrix}
A&B\\       
C&D\\
\end{bmatrix}\mapsto (A~~B)\\
&则记W=L(\{w,w\in Im B\})\\
&\\
&设dim W=q\\
&W=L(w_1,\cdots ,w_{q})\\
&则\{B|(A,B)\in V\}\subseteq L((w_1,0,\cdots ,0),\cdots ,(w_{q},0,\cdots ,0),(0,w_1,0,\cdots,0),\cdots ,(0,w_{q},0,\cdots,0),\cdots ,(0,0,\cdots,0,w_1),\cdots ,(0,0,\cdots ,w_{q}))\\
&故知\\
&\{(A,B)\in V\}\subseteq L(E_{11},E_{12},\cdots ,E_{rr},(w_1,0,\cdots ,0),\cdots ,(w_{q},0,\cdots ,0),(0,w_1,0,\cdots,0),\cdots ,(0,w_{q},0,\cdots,0),\cdots ,(0,0,\cdots,0,w_1),\cdots ,(0,0,\cdots ,w_{q}))\\
&故知dim Im f \leq r^{2}+q\cdot (n-r)\\
&\\
&\forall X\in ker f\iff X=\begin{bmatrix}O&0\\ C&0\end{bmatrix}\\
&故知\forall \begin{bmatrix}
A&B\\
C'&D\\
\end{bmatrix}\in V\\
&有CB=0\\
&设T=L(row C,\begin{bmatrix}
0&0\\
C&0\\
\end{bmatrix}\in ker f)\\
&\Rightarrow \\
&T\perp W\\
&\Rightarrow \\
&dim T\leq r-q\\
&\Rightarrow \\
&dim ker f\subseteq (r-q)(m-r)\\
&\Rightarrow \\
& dim V=dim ker f+dim Im f\leq r^{2}+q\cdot (n-r)   +(r-q)(m-r)\\
&=mr+q(n-m)\geq mr\\
&故知原命题得证\\
\end{aligned}
$

## Remark

在上述Flandars定理的证明中,其实我们可以发现比Flandars定理本身更强的结果

即$dim V\leq r\max\{m,n\}+q(\min(m,n)-\max(m,n))$

利用该结论,我们也可以解释

Flandars定理中若$dim V= r\max\{m,n\}$,则必然有$q=0$

也即$B\equiv 0$,$V$中的所有矩阵必然形如$\begin{bmatrix}A&O\\C&O\end{bmatrix}$
