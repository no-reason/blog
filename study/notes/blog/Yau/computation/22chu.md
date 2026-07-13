# Yau 22

## P1
**问题 1.** 考虑 $\{p_i(x)\}_{i=0}^\infty$，这是一个与内积相关的正交多项式族
$$
\langle f, g \rangle = \int_{-1}^1 f(x)g(x)w(x) dx, \quad w(x) > 0 \quad \text{对于 } x \in (-1, 1),
$$
其中 $p_i(x)$ 是一个 $i$ 次多项式。设 $x_0, x_1, \dots, x_n$ 为 $p_{n+1}(x)$ 的根。在次数不超过 $n$ 的多项式子空间中构造一组标准正交基，使得对于该子空间中的任意多项式，其在该基下展开的系数等于该多项式在节点 $x_0, x_1, \dots, x_n$ 处的缩放值（scaled values）。

$
\begin{aligned}
&直接考虑Lagrange基函数\\
&l_{k}(x)=\prod _{j\ne k}\frac{x-x_{j}}{x_{k}-x_{j}}\\
&下面我们证明上述选取的基函数在不超过n的多项式子空间中正交\\
&即当i\ne j时，证明\int _{-1}^{1}l_{i}(x)l_{j}(x)w(x)dx=0\\
&考虑到l_{i}(x)l_{j}(x)为2n次多项式\\
&p_{n+1}为n+1次多项式\\
&考虑对l_il_j关于p_{n+1}做带余除法\\
&l_il_j=p_{n+1}q+r\\
&deg q\leq n-1\\
&由于p_{n+1}与所有次数不超过n的多项式正交\\
&故知\int _{-1}^{1}p_{n+1}(x)q(x)w(x)dx=0\\
&故知\int _{-1}^{1}l_{i}(x)l_{j}(x)w(x)dx=\int _{-1}^{1}r(x)w(x)dx\\
&由r(x)次数\leq n\\
&故知r(x)至多只有n个根(若r(x)非零)\\
&但r(x_{k})+p_{n+1}(x_{k})q(x_{k})=l_{i}(x_{k})l_{j}(x_{k})\\
&由p_{n+1}(x_k)=0以及i\ne j，故知\\
&\forall 0\leq k\leq n,\quad r(x_{k})=l_i(x_k)l_j(x_k)=0\\
&故知r(x)=0\\
&故知\int _{-1}^{1}l_{i}(x)l_{j}(x)w(x)dx=0\\
&故知\{l_i\}_{i=0}^n确为一组正交基，但一般不是标准正交基\\
&令\lambda_i=\langle l_i,l_i\rangle
=\int_{-1}^{1}l_i(x)^2w(x)dx>0\\
&并令e_i(x)=\frac{l_i(x)}{\sqrt{\lambda_i}}\\
&则\{e_i\}_{i=0}^n为次数不超过n的多项式子空间的一组标准正交基\\
&对任意次数不超过n的多项式f，由Lagrange插值公式\\
&f(x)=\sum_{k=0}^{n}f(x_k)l_k(x)\\
&所以f在标准正交基\{e_i\}下的第i个展开系数为\\
&\langle f,e_i\rangle
=\left\langle\sum_{k=0}^{n}f(x_k)l_k,
\frac{l_i}{\sqrt{\lambda_i}}\right\rangle\\
&=\frac{f(x_i)}{\sqrt{\lambda_i}}\langle l_i,l_i\rangle
=\sqrt{\lambda_i}\,f(x_i)\\
&故该展开系数正是节点值f(x_i)的缩放值，缩放因子为\sqrt{\lambda_i}，原命题得证\\
\end{aligned}
$



## P2

考虑如下形式的二维不动点迭代：
$$x_{k+1} = f(x_k, y_k), \quad y_{k+1} = g(x_k, y_k).$$
假设向量值函数 
$\vec{H}(x, y) = (f(x, y), g(x, y))^T$ 是连续可微的，并且其雅可比（Jacobian）矩阵的无穷范数在唯一的不动点 $(x_\infty, y_\infty)$ 处严格小于 1。现在考虑一个新的迭代格式：
$$x_{k+1} = f(x_k, y_k), \quad y_{k+1} = g(x_{k+1}, y_k). \quad (2)$$
证明：对于足够接近该不动点的初始条件，迭代 (2) 是收敛的，并且收敛到与迭代 (1) 相同的不动点。

$
\begin{aligned}
&我们首先证明原迭代的不动点,仍为新迭代的不动点\\
&当x_{k},y_{k}=x_{\infty},y_{\infty}时\\
&显然有\\
&x_{k+1}=x_{\infty},y_{k+1}=y_{\infty}\\
&故知原迭代形式的不动点\\
&仍为新迭代形式的不动点\\
&考虑在新迭代形式下:\\
&\begin{pmatrix}
x_{k+1}-x_{\infty}\\
y_{k+1}-y_{\infty}\\
\end{pmatrix}=
\begin{pmatrix}
f(x_{k},y_{k})-x_{\infty}\\
g(f(x_{k},y_{k}),y_{k})-y_{\infty}\\
\end{pmatrix}\\
&我们对f(x,y)和g(f(x,y),y)在(x_{\infty},y_{\infty})处做Taylor展开\\
&f(x,y)=f(x_{\infty},y_{\infty})+\frac{\partial f}{\partial x}(x_{\infty},y_{\infty})(x-x_{\infty})+\frac{\partial f}{\partial y}(x_{\infty},y_{\infty})(y-y_{\infty})+O((x-x_{\infty})^2+(y-y_{\infty})^2)\\
&g(f(x,y),y)=g(f(x_{\infty},y_{\infty}),y_{\infty})+\frac{\partial g}{\partial x}\frac{\partial f}{\partial x}(x_{\infty},y_{\infty})(x-x_{\infty})+(\frac{\partial g}{\partial x}\frac{\partial f}{\partial y}+\frac{\partial g}{\partial y})(x_{\infty},y_{\infty})(y-y_{\infty})+O((x-x_{\infty})^2+(y-y_{\infty})^2)\\
&即\\
&\begin{pmatrix}
x_{k+1}-x_{\infty}\\
y_{k+1}-y_{\infty}\\
\end{pmatrix}=\begin{pmatrix}
f_{x}&f_{y}\\
g_{x}f_{x}&g_{x}f_{y}+g_{y}\\
\end{pmatrix}\begin{pmatrix}
x-x_{0}\\
y-y_{0}\\
\end{pmatrix}+\begin{pmatrix}
O((x-x_{0})^2+(y-y_{0})^2)\\
O((x-x_{0})^2+(y-y_{0})^2)\\
\end{pmatrix}\\
&\Rightarrow \\
&(下列矩阵范数均表示无穷范数)\\
&||\begin{pmatrix}
x_{k+1}-x_{\infty}\\
y_{k+1}-y_{\infty}\\
\end{pmatrix}\leq ||\begin{pmatrix}
f_{x}&f_{y}\\
g_{x}f_{x}&g_{x}f_{y}+g_{y}\\
\end{pmatrix}\begin{pmatrix}
x-x_{0}\\
y-y_{0}\\
\end{pmatrix}||+||\begin{pmatrix}
O((x-x_{0})^2+(y-y_{0})^2)\\
O((x-x_{0})^2+(y-y_{0})^2)\\
\end{pmatrix}||\\
&\leq ||\begin{pmatrix}
f_{x}&f_{y}\\
g_{x}f_{x}&g_{x}f_{y}+g_{y}\\
\end{pmatrix}||||\begin{pmatrix}
x-x_{0}\\
y-y_{0}\\
\end{pmatrix}||+||\begin{pmatrix}
O((x-x_{0})^2+(y-y_{0})^2)\\
O((x-x_{0})^2+(y-y_{0})^2)\\
\end{pmatrix}||\\
&下面我们证明:\\
&||\begin{pmatrix}
f_{x}&f_{y}\\
g_{x}f_{x}&g_{x}f_{y}+g_{y}\\
\end{pmatrix}||<1\\
&\iff \\
&|f_{x}|+|f_{y}|<1且|g_xf_x|+|g_xf_y+g_y|<1\\
&又有已知雅可比矩阵的无穷范数在不动点处严格小于1\\
&故知\\
&|f_x|+|f_y|<1且|g_x|+|g_y|<1\\
&故知\\
&|g_xf_x|+|g_xf_y+g_y|<|g_xf_x|+|g_xf_y|+|g_y|\\
&=|g_x|(|f_x|+|f_y|)+|g_y|<|g_x|+|g_y|<1\\
&\\\\
&由f,g连续可微可知\\
&\forall \epsilon >0\\
&\exists \delta >0\\
&s.t. \\
&\forall (x,y)\in B_{min(\delta,\frac{1}{2}) }(x_{\infty},y_{\infty})\\
&O((x-x_{\infty})^2+(y-y_{\infty})^2)<\epsilon( (x-x_{\infty})^2+(y-y_{\infty})^2)\\
&设||\begin{pmatrix}
f_{x}&f_{y}\\
g_{x}f_{x}&g_{x}f_{y}+g_{y}\\
\end{pmatrix}||=A\\
&取\epsilon =\frac{1-A}{2}\\
&设||\begin{pmatrix}
x_{k}-x_{0}\\
y_{k}-y_{0}\\
\end{pmatrix}||=h_{k}\\
&则h_{k+1}\leq Ah_{k}+2\epsilon h_{k}^2\\
&\Rightarrow \\
&h_{k+1}\leq A_{k}h_{k}+\frac{1-A}{2}h_{k}\\
&\leq \frac{1+A}{2}h_{k}\\
&\Rightarrow h_{k}\leq (\frac{1+A}{2})^{k}h_{0}\\
&令k\to \infty\\
&则有h_{k}\to 0\\
&故知原迭代序列仍收敛到(x_{\infty},y_{\infty})\\
\end{aligned}
$

## P3

设 $A \in \mathbb{R}^{m \times m}$ 是一个矩阵，其元素 $a_{ij}$ 满足：$$a_{ii} \ge \sum_{j \neq i} |a_{ij}| + 2, \quad a_{ii} \le 7.$$(a) 证明 $A^{-1}$ 存在。
(b) 证明 $\|A\|_\infty$ 等于 $A$ 的最大行和（各元素绝对值之和）。
(c) 求出 $\|A\|_\infty$ 的一个下界和上界。
(d) 现在假设 $A = A^T$（对称矩阵）。求 $\|A\|_2$ 和 $\|A^{-1}\|_2$ 的界。


$
\begin{aligned}
&(a)\\
&本文即为对角占优矩阵的成型结论\\
&若A不可逆\\
&则\exists x\in R^{m}\\
&s.t. Ax=0\\
&则\sum a_{ij}x_{j}=0,\forall j\\
&设x_{k}为(x_1,x_2,...,x_m)中绝对值最大的元素的绝对值\\
&则有a_{kk}x_{k}=-\sum_{j\ne k}a_{kj}x_{j}\\
&\Rightarrow \\
&|a_{kk}x_{k}|=|\sum_{j\ne k}a_{kj}x_{j}|\\
&\leq \sum_{j\ne k} |a_{kj}|x_{j}|\\
&\leq \sum_{j\ne k}|a_{kj}||x_{k}|\\
&\Rightarrow |a_{kk}|\leq \sum_{j\ne k}|a_{kj}|\\
&与a_{kk}\geq \sum_{j\ne k}|a_{kj}|+2矛盾\\
&\\\\
&(b)\\
&本题是矩阵范数的成型结论\\
&|A|_{\infty}=max_{|x|=1}|Ax|\\
&Ax的第i行的元素为\\
&\sum_{j=1}^{m}a_{ij}x_{j}\\
&\Rightarrow |Ax|第i行元素的绝对值有\\
&|\sum_{j=1}^{m}a_{ij}x_{j}|\leq \sum_{j=1}^{m}|a_{ij}||x_{j}|\leq \sum_{j=1}^{m}|a_{ij}|\\
&故知|Ax|_{\infty}\leq \max_{1\leq i\leq m}\sum_{j=1}^{m}|a_{ij}|\\
&另一方面取设a_{kj}(1\leq j\leq m)为A行绝对值和最大的一行\\
&则\\
&令x=(x_1,x_2,...,x_m)\\
&其中x_{i}=sgn(a_{ki})\cdot 1即可知\\
&|Ax|_{\infty}=\max_{1\leq i\leq m}\sum_{j=1}^{m}|a_{ij}|\\
&故知(b)得证\\
&\\\\
&(c)\\
&\forall 1\leq i\leq m\\
&\sum_{j=1}^{m}|a_{ij}|=a_{ii}+\sum_{j\ne i}|a_{ij}|\\
&\leq 2a_{ii}-2\\
&\leq 2\times 7-2=12\\
&故知{|A|_{\infty}}_{\max}\leq 12\\
&另一方面\forall 1\leq i\leq m取\\
&a_{ii}=7,\\
&a_{ij}=\frac{5}{m},(\forall j\ne i)\\
&则知{|A|_{\infty}}_{\max}=12\\
&\\\\
&\forall 1\leq i\leq m\\
&\sum_{j=1}^{m}|a_{ij}|=a_{ii}+\sum_{j\ne i}|a_{ij}|\\
&\geq 2+0=2\\
&故知{|A|_{\infty}}_{\min}\geq 2\\
&另一方面\forall 1\leq i\leq m\\
&取a_{ii}=2\\
&a_{ij}=0,\forall j\ne i\\
&即知{|A|_{\infty}}_{\min}=2\\
&\\\\
&(d)\\
&|A|_{2}即为A的最大奇异值\\
&又由A=A^{T}\\
&故知|A|_{2}即为A的最大特征值\\
&下面考虑盖氏圆盘定理\\
&\forall \lambda 为A的特征值\\
&\exists i\in [1,m]\\
&s.t. \\
&|\lambda -a_{ii}|\leq \sum_{j\ne i}|a_{ij}|\\
&\Rightarrow \\
&\lambda \geq a_{ii}-\sum_{j\ne i}|a_{ij}|\geq 2\\
&\lambda \leq a_{ii}+\sum_{j\ne i}|a_{ij}|\leq 2a_{ii}-2\leq 12\\
&取A=\begin{pmatrix}
7&5\\
5&7\\
\end{pmatrix}\\
&A=\begin{pmatrix}
2&0\\
0&2\\
\end{pmatrix}\\
&即可分别区到上述上界和下界\\
&同理可知\\
&\frac{1}{12}\leq |A^{-1}|\leq \frac{1}{2}\\
&\\\\
\end{aligned}
$


**问题 4.** 考虑如下形式的常微分方程 (ODE) 初值问题系统：
$$
\frac{d}{dt}u = f(u), \quad u(0) = u_0.
$$
假设 $f(u)$ 具有这样的性质，使得前向欧拉 (FE) 方法：
$$
U^{n+1} = U^n + kf(U^n),
$$
在某种范数 $\|\cdot\|$ 下，对于所有时间步长 $k$（$0 < k \le k_{FE}$），均满足：
$$
\|U^{n+1}\| \le \|U^n\|
$$

现在考虑两步 Runge-Kutta 方法：
$$
U^{(1)} = U^n + k\beta_{10}f(U^n),
$$
$$
U^{n+1} = \{\alpha_{20}U^n + k\beta_{20}f(U^n)\} + \{\alpha_{21}U^{(1)} + k\beta_{21}f(U^{(1)})\}
$$
其中，
$$
\beta_{10} \ge 0, \quad \beta_{20} \ge 0, \quad \beta_{21} \ge 0, \quad \alpha_{20} \ge 0, \quad \alpha_{21} \ge 0, \quad \alpha_{20} + \alpha_{21} = 1.
$$

**(a)** 证明上述两步 Runge-Kutta 方法在适当的时间步长限制 $0 \le k \le k^*$ 下，也满足不等式：
$$
\|U^{n+1}\| \le \|U^n\|
$$
其中你需要用 $k_{FE}$ 显式地确定出 $k^*$ 的表达式。

**(b)** 显式地确定系数：
$$
\beta_{10}, \quad \beta_{20}, \quad \beta_{21}, \quad \alpha_{20}, \quad \alpha_{21},
$$
使得：
**(i)** 该方法具有二阶精度；并且
**(ii)** 允许的最大时间步长 $k^*$ 尽可能大。

$
\begin{aligned}
&设f(k,u)=u+kf(u)\\
&则\forall k\leq k_{FE}\\
&有|f(k,u)|\leq |u|\\
&故知\\
&在Runge-Kutta方法中\\
&|U^{n+1}|=|a_{20}f(\frac{b_{20}}{a_{20}}k,U^n)+a_{21}f(\frac{b_{21}}{a_{21}}k,U^{(1)})|\\
&\leq |a_{20}f(\frac{b_{20}}{a_{20}}k,U^n)|+|a_{21}f(\frac{b_{21}}{a_{21}}k,U^{(1)})|\\
&当\frac{b_{20}}{a_{20}}k\leq k_{FE}时\\
&|f(\frac{b_{20}}{a_{20}}k,U^n)|\leq |U^n|\\
&当\frac{b_{21}}{a_{21}}k\leq k_{FE}时\\
&|f(\frac{b_{21}}{a_{21}}k,U^{(1)})|\leq |U^{(1)}|\\
&U^{(1)}=U^n+kb_{10}f(U^n)=f(kb_{10},U^n)\\
&故当b_{10}k\leq k_{FE}时\\
&|f(kb_{10},U^n)|\leq |U^n|\\
&故知当k\leq min\{\frac{a_{20}}{b_{20}},\frac{a_{21}}{b_{21}},\frac{1}{b_{10}}\}k_{FE}\\
&有|U^{n+1}|\leq |a_{20}f(\frac{b_{20}}{a_{20}}k,U^n)|+|a_{21}f(\frac{b_{21}}{a_{21}}k,U^{(1)})|\\
&\leq a_{20}|U^{n}|+a_{21}|U^{(1)}|\\
&\leq a_{20}|U^n|+a_{21}|U^{n}|\\
&=|U^{n}|\\
&取f=1,即可知上述k\leq min\{\frac{a_{20}}{b_{20}},\frac{a_{21}}{b_{21}},\frac{1}{b_{10}}\}k_{FE}是最优上界\\
&\\
&
&\\\\
&考虑欲使上述Runge-Kutta法具有二阶精度\\
&我们只需让其对应系数与Taylor展开系数对其\\
&u(t+k)=u(t)+u'(t)k+\frac{1}{2}u''(t)k^2+...\\
&u'(t)=f(u),u''(t)=f'(u)u'=f'(u)f(u)\\
&\Rightarrow \\
&u(t+k)=u(t)+f(u)k+\frac{1}{2}f'(u)f(u) k^2+...\\
&U^{n+1}=a_{20}(U^{n}+b_{20}kf(U^n))+a_{21}(U^{(1)}+b_{21}kf(U^{(1)}))\\
&f(U^{(1)})=f(U^{n}+kb_{10}f(U^{n}))\\
&对f(U^{(1)})进行Taylor展开\\
&\\
&f(U)=f(U^{n}+kb_{10}f(U^{n}))=f(U^{n})+kb_{10}f'(U^{n})f(U^{n})+...\\
&故知U^{n+1}=U^{n}+(kb_{20}+ka_{21}b_{10}+kb_{21})f(U^{n})+k^2b_{10}b_{21}f'(U^{n})f(U^{n})\\
&\Rightarrow \\
&b_{10}b_{21}=\frac{1}{2}\\
&b_{21}+b_{20}+a_{21}b_{10}=1\\
&\\
&至此我们讲问题转化为了一个极值求解的问题\\
&即已知\\
&\begin{cases}
&b_{10}b_{21}=\frac{1}{2}\\
&b_{21}+b_{20}+a_{21}b_{10}=1\\
&b_{10} \ge 0, \quad b_{20} \ge 0, \quad b_{21} \ge 0, \quad a_{20} \ge 0, \quad a_{21} \ge 0, \quad a_{20} + a_{21} = 1.
\end{cases}\\
&\\
&求min\{\frac{a_{20}}{b_{20}},\frac{a_{21}}{b_{21}},\frac{1}{b_{10}}\}\\
&\\
&我们先从简单情况入手,猜测取等\\
&当\frac{a_{20}}{b_{20}}=\frac{a_{21}}{b_{21}}时\\
&设a_{20}=kb_{20},a_{21}=kb_{21}\\
&则\begin{cases}
&k(b_{20}+b_{21})=1\\
&b_{10}b_{21}=\frac{1}{2}\\
&b_{21}+b_{20}+b_{21}b_{10}k=1\\
\end{cases}\\
&\Rightarrow \frac{1}{2}k+\frac{1}{k}=1,无解\\
&\\
&\\
&当\frac{a_{21}}{b_{21}}=\frac{1}{b_{10}}=k时\\
&有\begin{cases}
&k+b_{20}=1\\
&a_{20}+\frac{k^2}{2}=1\\
\end{cases}\\
&故知\frac{a_{20}}{b_{20}}=\frac{2-k^2}{2-2k}\\
&\\
&画图观察,易知min(k,\frac{2-k^2}{2-2k})的最大值为=1\\
&(当k=1时取到)\\
&此时对应
\end{aligned}
$



## P5


## P6


