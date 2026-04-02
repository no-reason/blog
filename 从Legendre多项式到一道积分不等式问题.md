# 从Legendre多项式到一道积分不等式的解答
笔者今天在整理电脑时，发现了这篇文章。回忆起来应该是暑假夏令营期间写完以后，因为公众号排版出现了一些问题，所以就计划等之后稍微学习一下排版格式，把问题解决以后再发表。但是之后把格式调整好之后就忘记了这篇文章。
下面展示的是夏令营期间写好的版本。
## 前言
笔者在最近的夏令营中遇到了这样一个问题
$求\min_{a_1,\cdots ,a_n\in R}\int _{0}^{1}(1+a_1x+\cdots+a_nx^n)^2$
在夏令营培训中,笔者学习了本题目的两种方法.
其中一种方法使用Legendre多项式,让笔者感到眼前一亮.
特以此文作为记录
## Legendre多项式
$
\begin{aligned}
&对于多项式空间而言\\
&我们知道其具有一组基\{1,x,\cdots ,x^n\}\\
&但这样的一组基并不正交\\
&\\
&而在很多问题中，我们需要找到一组正交基来使问题进行简化\\
&这就引出了本文的主角Legendre多项式\\
&\\
&(P.S.我们在如下内积定义下进行讨论):\\
&(f,g)=\int _{a}^{b}fgdx\\
&\\\\
&(Legendre多项式)：\\
&P_0=1,P_n=\frac{1}{2^nn!}\frac{d^n}{dx^n}(x^2-1)^n，x\in [-1,1]\\
&\\\\
&Legendre多项式具有正交性:\\
&i.e. \\
&(P_n,P_m)=\int _{a}^{b}P_n(x)P_m(x)dx=\begin{cases}
0,m\ne n\\
\frac{2}{2n+1},m=n\\
\end{cases}\\
&\\\\
\end{aligned}
$
## 原题的求解
$
\begin{aligned}
&考虑到题目中的区间是[0,1]\\
&而标准Legendre多项式中的P_i定义域为[-1,1]\\
&故我们进行一下转换\\
&下面讨论的P_i(x)为标准Legender多项式意义下的P_i(2x-1)\\
&设1+a_x+\cdots+a_nx^n=k_0P_0+k_1P_1+\cdots +k_nP_n\\
&则\int _{0}^{1}(1+a_1x+\cdots +a_nx^n)^2dx=\int _{0}^{1}(k_0P_0+\cdots +k_nP_n)^2dx\\
&=\int _{0}^{1}\sum_{0\leq i,j\leq n}k_ik_jP_iP_jdx\\
&由换元积分容易知道\\
&本题中(P_i,P_i)=\frac{1}{2i+1}\\
&故知上式\\
&=\sum_{i=0}^{n}k_i^2\frac{1}{2i+1}(*)\\
&\\\\
&而对于f=1+a_1x+\cdots +a_nx^n而言\\
&f(0)=1\\
&故知\sum_{i=0}^{n}(-1)^ik_i\\
&考虑到(*)中是关于k_i平方的表达式\\
&k_i本身的正负不会对题目产生影响\\
&\\
&故命题等价于考虑\\
&k_0+\cdots k_n=1\\
&求\min\sum_{i=0}^{n}k_i^2\frac{1}{2i+1}\\
&由Cauchy不等式知\\
&(\sum_{i=0}^{n}k_i^2\frac{1}{2i+1})(\sum_{i=0}^{n}2i+1)\geq (\sum_{i=0}^{n}k_i)^2=1\\
&故知原所求式\geq \frac{1}{(n+1)^2}\\
&\\\\
\end{aligned}
$
## 另解
$
\begin{aligned}
&我们将所求原式直接进行展开\\
&原式=\sum_{i,j=0}^{n}a_ia_j\int _{0}^{1}x^{i+j}dx=\sum_{1\leq i,j\leq n}\frac{a_ia_j}{i+j+1}\\
&=(1,a_1,\cdots ,a_n)(\frac{1}{i+j+1})_{n\times n}(1,a_1,\cdots,a_n)^T\\
&记(\frac{1}{i+j+1})_{n\times n}=B=\begin{bmatrix}
1&&\alpha \\
\alpha ^T&&A\\
\end{bmatrix}\\
&=b_{00}+2\sum_{i=1}^{n}b_{i0}a_i+\sum_{i,j=1}^{n}b_{ij}a_ia_j\\
&\\
&我们直接对上式的每个分量求导\\
&2b_{i0}+2\sum_{j=1}^{n}b_{ij}a_j=0\\
&其中上述等式构成一个n元线性方程组\\
&其系数矩阵为2A\\
&而熟知B为Cauchy型行列式\\
&其行列式非零\\
&故可知上述方程组有惟一解\\
&我们考虑该方程组\\
&\begin{bmatrix}
b_{11}&b_{12}&\cdots &b_{1n}\\
\vdots&\vdots&\cdots&\vdots\\
b_{n1}&b_{n2}&\cdots&b_{nn}\\
\end{bmatrix}\begin{bmatrix}
a_1\\
\vdots\\
a_n\\
\end{bmatrix}=-\begin{bmatrix}
b_{10}\\
\vdots\\
v_{n0}\\
\end{bmatrix}\\
&也即\\
&A\begin{bmatrix}
a_1\\
\vdots\\
a_n\\
\end{bmatrix}=-\begin{bmatrix}
b_{10}\\
\vdots\\
b_{n0}\\
\end{bmatrix}=-\alpha\\
&故知取\begin{bmatrix}
a_1\\
\vdots\\
a_n\\
\end{bmatrix}=-A^{-1}\alpha 即可\\
&\\\\
&我们现在带入计算原积分表达式的最小值\\
&I=(1~~~~~ -\alpha ^T{A^{-1}}^{T})\begin{bmatrix}
1&\alpha^T\\
-\alpha &A
\end{bmatrix}\begin{bmatrix}
1\\
A^{-1}\alpha \\
\end{bmatrix}\\
&计算可得:\\
&上式=1-\alpha ^TA^{-1}\alpha \\
&\\
&因此我们只需设法计算\alpha ^TA^{-1}\alpha \\
&该式的计算需要我们使用Cauchy行列式公式\\
&考虑对于\begin{vmatrix}
1&\alpha \\
\alpha ^T&A\\
\end{vmatrix}\\
&=|A||1-\alpha ^TA^{-1}\alpha |\\
&因此我们只需要计算|B|和|A|\\
&即可得到原问题的答案\\
&\\
&而B和A恰好都是Cauchy行列式\\
&该型行列式的计算方法可以见笔者之前的文章\\
&--行列式计算的一些问题和方法\\
&\\
&\\\\
&事实上\\
&对于上述方法求极值的过程\\
&我们也可以不借助微积分方法\\
&直接在代数角度推导出原二次型的最小值\\
&\\
&仍记I=\begin{bmatrix}
1&x^T\\
\end{bmatrix}\begin{bmatrix}
1&\alpha ^T\\
\alpha &A\\
\end{bmatrix}\begin{bmatrix}
1\\
x\\
\end{bmatrix}\\
&=1+x^T\alpha +\alpha ^T x+x^TAx\\
&由于A是正定矩阵\\
&\exists 可逆阵P,s.t. A=P^TP\\
&记Px=z^T,(p^T)^{-1}\alpha =\beta\\
&则原式=1+(z^T+\beta ^T)(z+\beta)-\beta\beta^T\\
&故知当z=-\beta时\\
&原式有最小值1-\beta\beta ^T\\
&之后计算同上面的微积分方法\\
\end{aligned}
$