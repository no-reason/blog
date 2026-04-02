# Swap矩阵与矩阵向量化
## Dirac记号下矩阵的表示
$
\begin{aligned}
&对于任意的矩阵A\in C^{m\times n}\\
&A=\sum _{i=1}^{m}|m_i\rangle \langle m_i|A\sum _{i=1}^{n}|n_j\rangle \langle n_j|\\
&=\sum_{i=1}^{m}\sum_{j=1}^{n}|m_i\rangle \langle m_i|A|n_j\rangle \langle n_j|\\
&=\sum_{i=1}^{m}\sum_{j=1}^{n}\langle m_i|A|n_j\rangle |m_i\rangle \langle n_j|\\ 
\end{aligned}
$
## Swap 矩阵
$
\begin{aligned}
&\Pi _{m,n}=\sum_{i=1}^{m}\sum_{j=1}^{n}|n_j\rangle \langle m_i|\otimes |m_i\rangle \langle n_j|\\
&\Pi _{m,n}具有如下性质:\\
&\begin{cases}
&(1)\Pi _{m,n}vec(A^T)=vec{A},\Pi _{n,m}vec(A)=vec(A^T)\\
&\forall A\in C^{m\times n}\\
&(2)\Pi _{m,1}=I_m,\Pi _{1,n}=1_{n}\\
&(3)\Pi _{m,n}=\Pi _{n,m}^{-1}=\Pi _{n,m}^{T}\\
\end{cases}\\
\end{aligned}
$
## Swap矩阵的Swap作用
$
\begin{aligned}
&\Pi _{m,n}(|u\rangle \otimes |v\rangle )=|v\rangle \otimes |u\rangle \\
&\forall |u\rangle \in C^m,|v\rangle \in C^n\\
&该证明只需将\Pi _{m,n}视为C^{n\times  m}与C^{m\times n}上的矩阵的张量积\\
&从而将其视为C^m上和C^n上线性变换的张量积\\
&将|u\rangle \otimes |v\rangle 视为C^m\otimes C^n上的向量\\
&则利用线性变换张量积的运算性质即可得证\\
\\\\
&进一步的,对于A\in C^{m\times n},B\in C^{p\times q}\\
&我们有\Pi _{m,p}(A\otimes B)\Pi _{n,q}^T=B\otimes A\\
\end{aligned}
$
## 矩阵向量化
### 矩阵向量化的定义
$
\begin{aligned}
&A=(a_{ij})=(a_{.1},a_{.2},\cdots ,a_{.n})\in C^{m\times n}\\
&则vec(A)=\begin{bmatrix}
a_{.1}\\
a_{.2}\\
\vdots \\
a_{.n}\\
\end{bmatrix}\in C^{m\times n}称为矩阵A的向量化\\
&\\\\
\end{aligned}
$
### 矩阵向量化和张量积
$
\begin{aligned}
&|\overline{v}\rangle \otimes |u\rangle =vec(|u\rangle \langle v|)\in C^{n\times m}\
&\\\\
&设A,X,B\in C^{m\times m},则\\
&vec(AXB)=(B^T\otimes A)vec(X)\\
&证明,我们只需对X=|u\rangle \langle v|时的情况进行证明\\
&(因为X可表示成若干上述矩阵的线性组合)\\
&vec(AXB)=vec(A|u\rangle \langle v|B)\\
&(B|v\rangle)^{\dagger}=\langle v|B^{\dagger}\\
&(B^{\dagger}|v\rangle )^{\dagger}=\langle v|B\\
&\Rightarrow vec(AXB)=\overline{(B^{\dagger}|v\rangle )}\otimes A|u\rangle \\
&=(B^T\otimes A)(\overline{|v\rangle }\otimes |u\rangle)\\
&=(B^T\otimes A)vec(X)\\
&\\
&注:vec(A_1A_2\cdots A_n)=(A_n^TA_{n-1}^T\cdots A_{k+1}^T\otimes A_1A_2\cdots A_{k-1})vec(A_k)\\
&\\
\end{aligned}
$
### 矩阵向量化和两矩阵乘积的迹
$
\begin{aligned}
&设A,B\in C^{m\times m},证明:\\
&tr(A^{\dagger}B)=\langle vec(A)|vec(B)\rangle \\
&同样由于线性性\\
&我们只需证明A=|u\rangle \langle v|,B=|w\rangle \langle x|的情况\\
&带入进行代数运算即可得证\\
\end{aligned}
$
### 矩阵方程
#### 线性方程
$
\begin{aligned}
&已知矩阵A,B,C\in C^{m\times m}\\
&解以下关于矩阵X\in C^{m\times m}的方程\\
&AXB=C\\
&P.S.:该矩阵方程的求解理论\\
&我们已经在Moore-Penrose拟逆一章中给过介绍\\
&下面我们介绍应用矩阵向量化求解的方式\\\\\\
&AXB=C\iff (B^T\otimes A)vec X=vec(C)\\
&之后利用求解向量的线性方程组的方法即可求解\\
&\\\\
\end{aligned}
$
#### Sylvester矩阵方程
$
\begin{aligned}
&设矩阵A,B\in C^{n\times n}没有相同的特征值，\\
&则\forall G\in C^{n\times n},以下方程:\\
&AX-XB=G有惟一解X\in C^{n\times n }\\
&我们对于方程两边同时取向量化\\
&vec(AX)-vec(XB)=vec(G)\\
&vec(AX)=(1^T\otimes A)vec(X)\\
&vec(XB)=(B^T\otimes 1)vec(X)\\
&\Rightarrow (1\otimes A-B^T\otimes 1)vec(X)=vec(G)\\
&我们下面只需证明(1\otimes A-B^T\otimes 1)是可逆阵\\
&考虑1\otimes A-B^T\otimes 1的特征值\\
&设|u_i\rangle ,|v_j\rangle 分别是A和B^T的特征向量\\
&a_i,b_j分别是其对应的特征值\\
&则(1\otimes A-B^T\otimes 1)(|v_j\rangle \otimes |u_i\rangle )\\
&=(1\otimes A)(|v_j\rangle \otimes |u_i\rangle )-(B^T\otimes 1)(|v_j\rangle \otimes |u_i\rangle )\\
&=|v_j\rangle \otimes A|u_i\rangle -B^T|v_j\rangle \otimes |u_i\rangle \\
&(a_i-b_j)(|v_j\rangle \otimes |u_i\rangle )\\
&故知a_i-b_j为1\otimes A-B^T\otimes 1的特征向量\\
&故知上述线性方程组的系数矩阵可逆\\
&故知Sylvester方程有惟一解\\
&\\\\
\end{aligned}
$
#### Liapunov 矩阵方程
$
\begin{aligned}
&设矩阵A,C\in C^{m\times m},C^{\dagger}=C\\
&A的特征值的虚部<0\\
&则以下方程A^{\dagger}X-XA+C=0有惟一解X\in C^{m\times m}\\
&且X^{\dagger}=X\\
&注：Liaponov方程为上述Sylvester方程的特例\\
&\\\\
\end{aligned}
$
### Schmidt分解
$
\begin{aligned}
&设|\Phi\rangle \in C^{m}\otimes C^{n},\\
&则\exists C^m的正交系\{|u_i\rangle \}和C^n的正交系\{|v_j\rangle \}s.t.\\
& |\Phi \rangle =\sum_{i=1}^{r}c_i|u_i\rangle \otimes |v_i\rangle \\
&证明:\\
&由vec:C^{m\times n}\to C^n\otimes C^m为同构可知\\
&\exists A\in C^{m\times n}s.t.\\
&vec(A)=|\Phi \rangle \\
&由矩阵的奇异值分解可知\exists C^m的正交系|x_j\rangle 和C^n的正交系|y_j\rangle \\
&s.t. A=\sum _{i=1}^{r}s_i|x_i\rangle \langle y_j|\\
&这样vec(A)=\sum_{i=1}^{r}s_i\overline{|y_i\rangle }\otimes |x_i\rangle \\
&取|u_i\rangle =\overline{|y_i\rangle },|v_i\rangle =|x_i\rangle \\
\end{aligned}
$
### 实对称矩阵的对称向量化
$
\begin{aligned}
&svec(A)=\begin{bmatrix}
s_{11}\\
\sqrt{2}s_{21}\\
\vdots\\
\sqrt{2}s_{n1}\\
s_{22}\\
\sqrt{2}s_{32}\\
\vdots\\\
\sqrt{2}s_{n2}\\
\vdots\\
s_{nn}\\
\end{bmatrix}\in R^{\frac{m(m+1)}{2}}\\
\end{aligned}
$