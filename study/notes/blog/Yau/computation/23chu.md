# Yau23

## P1
1. Consider the forward and the centered finite difference formulas

$$D_h^+f(x_0) = \frac{f(x_0 + h) - f(x_0)}{h}, \quad (1)$$

$$D_h^0f(x_0) = \frac{f(x_0 + h) - f(x_0 - h)}{2h}, \quad (2)$$

to approximate the derivative of $f$ at a point $x_0$. Assume $f$ is a smooth function in a neighborhood of $x_0$ containing the points $x_0 + h$ and $x_0 - h$.

(a) Prove that $D_h^+f(x_0)$ and $D_h^0f(x_0)$ approximate $f'(x_0)$ to $O(h)$ and $O(h^2)$, respectively.

(b) Derive an $O(h^2)$ approximation to $f'(x_0)$ from $D_h^+f(x_0)$ by doing Richardson extrapolation.

(c) Take $f(x) = \sin x$ and $x_0 = 0$. Prove that both $D_h^+f(x_0)$ and $D_h^0f(x_0)$ converge quadratically to $f'(x_0)$ as $h \to 0$ and that in fact they produce the same approximation to $f'(x_0)$ in this particular case.


$
\begin{aligned}
&(a)\\
&对f(x_{0}+h)做Taylor展开\\
&f(x_0+h)=f(x_0)+f'(x_0)h+O(h^2)\\
&\Rightarrow  D_h^+f(x_0)-f'(x_0)=\frac{O(h^2)}{h}=O(h)\\
&\\
&对f(x_0+h)和f(x_0-h)做Taylor展开，展开到h^3项\\
&\\
&f(x_0+h)=f(x_0)+f'(x_0)h+f''(x_0)\frac{h^2}{2}+O(h^3)\\
&f(x_0-h)=f(x_0)-f'(x_0)h+f''(x_0)\frac{h^2}{2}+O(h^3)\\
&\Rightarrow D_h^0f(x_0)-f'(x_0)=O(h^2)\\
&故知(a)得证\\
&\\\\
&(b)\\
&g(h)=\frac{f(x_0+h)-f(x_0)}{h}=f'(x_0)+\frac{1}{2}f''(x_0)h+O(h^2)\\
&g(\frac{h}{2})=f'(x_0)+\frac{1}{2}f''(x_0)\frac{h}{2}+O(h^2)\\
&2g(\frac{h}{2})-g(h)=f'(x_0)+O(h^2)\\
&故知上述估计即可满足题意\\
&\\\\
&(c)\\
&由(a)可知D_{h}^{0}f(x_0)显然具有2阶精度\\
&故只需考虑D_{h}^{+}f(x_0)\\
&\frac{sin(h)}{h}=\frac{h+O(h^3)}{h}=1+O(h^2)\\
&而\frac{sin(x)}{dx}=cosx\\
&cos0=1\\
&故知上述估计也具有2阶精度\\
&\\
&D_h^0f(x_0)=\frac{sinh-sin(-h)}{2h}=\frac{sin(h)}{h}\\
&=D_h^+f(x_0)\\
&故知上述两种估计方法在该情况下相同\\
&故(c)得证\\
\end{aligned}
$


**2.** For functions defined on a closed interval $[0, 1]$, we want to compute the following definite integral,
$$I[f] = \int_0^1 f(x) \log(1/x)dx.$$

Here we consider the weight function $\log(1/x)$, and denote $P_n(x)$ as the monic orthogonal polynomials for the corresponding weighted inner product.

**(a)** Let $P_0 = 1$. Find $P_1(x)$, and the corresponding node $x_1^1$ and weight $\omega_1^1$ for the 1-point Gaussian quadrature rule.

**(b)** Derive a recursive formula for $P_{n+1}(x)$ using $P_n(x)$ and $P_{n-1}(x)$.

**(c)** Consider the normalized orthogonal polynomials $Q_n(x) = P_n(x)/\|P_n\|$, where
$$ \|P_n\| = \sqrt{ P_n(x)^2 \log(1/x) dx }. $$

Derive a recursive formula for $Q_{n+1}(x)$ using $Q_n(x)$ and $Q_{n-1}(x)$.

(d) Use the above recursive formula to show that $x = \lambda$ is a node of the 4-point Gaussian quadrature if and only if it is an eigenvalue of a symmetric, tridiagonal matrix. Write out the form of the symmetric and tridiagonal matrix explicitly.


$
\begin{aligned}
&本题考查内容就是Guass积分\\
&(a)\\
&\int _{0}^{1}P_1(x)ln\frac{1}{x}dx=0\\
&设P_1(x)=x+c\\
&\int _{0}^{1}(x+c)ln\frac{1}{x}dx=0\\
&\Rightarrow \\
&\frac{1}{2}[lnx(x+c)^2-(\frac{1}{2}x^2+2cx+c^2lnx)]_{0}^{1}=0\\
&\Rightarrow c=-\frac{1}{4}\\
&\\
&x_1^1为P_1(x)的根=\frac{1}{4}\\
&\int _{0}^{1}f(x)ln(\frac{1}{x})dx=w_{1}^{1}f(x_1)\\
&上述数值积分的代数精度为2\times 1-1=1\\
&故知令f(x)=x\\
&则易知w_{1}^{1}=1\\
&\\\\
&(b)\\
&本问就是Guass积分的经典理论\\
&由Guass积分的性质可知\\
&P_{n+1},P_{n},P_{n-1}必然存在三项递推关系\\
&设P_{n+1}(x)=(x-\alpha _{n})P_{n}-\beta_{n}P_{n-1}(x)\\
&其中a_{n}=\frac{<xP_{n},P_{n}>}{<P_{n},P_{n}>},b_{n}=\frac{<P_{n},P_{n}>}{<P_{n-1},P_{n-1}>}\\
&令Q_{n}(x)=P_{n}(x)/\|P_{n}\|\\
&\\\\
&(c)\\
&Q_{n}(x)=(x-a_{n})\frac{P_{n}(x)}{||P_{n+1}(x)||}-b_{n}\frac{P_{n-1}(x)}{||P_{n+1}(x)||}\\
&\Rightarrow \\
&Q_{n+1}(x)=\frac{x-a_{n}}{\sqrt{b_{n+1}}}Q_{n}(x)-\sqrt{\frac{b_{n}}{b_{n+1}}}Q_{n-1}(x)(*)\\
&其中\sqrt{b_{n}}=\frac{||P_{n}||}{||P_{n-1}||}\\
&(d)\\
&\\
&为解决(d)\\
&我们需要对(c)中的递推式进行一些代数变形\\
&(*)\iff \\
&xQ_{n}(x)=\sqrt{b_{n+1}}Q_{n+1}(x)+a_{n}Q_{n}(x)+\sqrt{b_{n}}Q_{n-1}(x)\\
&故知\\
&xQ_0(x)=b_1Q_1(x)+a_0Q_0(x)\\
&xQ_1(x)=b_2Q_2(x)+a_1Q_1(x)+b_0Q_0(x)\\
&xQ_2(x)=b_3Q_3(x)+a_2Q_2(x)+b_1Q_1(x)\\
&xQ_3(x)=b_4Q_4(x)+a_3Q_3(x)+b_2Q_2(x)\\
&\Rightarrow \\
&x\begin{pmatrix}
Q_0(x)\\
Q_1(x)\\
Q_2(x)\\
Q_3(x)\\
\end{pmatrix}=\begin{pmatrix}
a_{0}&b_{0}\\
b_{0}&a_{1}&b_{1}\\
&b_{1}&a_{2}&b_{2}\\
&&b_{2}&a_{3}
\end{pmatrix}\begin{pmatrix}
Q_0(x)\\
Q_1(x)\\
Q_2(x)\\
Q_3(x)\\
\end{pmatrix}+\begin{pmatrix}
0\\
0\\
0\\
b_{4}Q_{4}(x)
\end{pmatrix}\\
&\forall x,s.t.Q_{4}(x)=0\\
&有 x\begin{pmatrix}
Q_0(x)\\
Q_1(x)\\
Q_2(x)\\
Q_3(x)\\
\end{pmatrix}=\begin{pmatrix}
a_{0}&b_{0}\\
b_{0}&a_{1}&b_{1}\\
&b_{1}&a_{2}&b_{2}\\
&&b_{2}&a_{3}
\end{pmatrix}\begin{pmatrix}
Q_0(x)\\
Q_1(x)\\
Q_2(x)\\
Q_3(x)\\
\end{pmatrix}\\
&\Rightarrow (\begin{pmatrix}
a_{0}&b_{0}\\
b_{0}&a_{1}&b_{1}\\
&b_{1}&a_{2}&b_{2}\\
&&b_{2}&a_{3}
\end{pmatrix}-xE)\begin{pmatrix}
Q_0(x)\\
Q_1(x)\\
Q_2(x)\\
Q_3(x)\\
\end{pmatrix}=0\\
&\Rightarrow \\
&det(\begin{pmatrix}
a_{0}&b_{0}\\
b_{0}&a_{1}&b_{1}\\
&b_{1}&a_{2}&b_{2}\\
&&b_{2}&a_{3}
\end{pmatrix}-xE)=0\\
&\\
&故知x是矩阵\begin{pmatrix}
a_{0}&b_{0}\\
b_{0}&a_{1}&b_{1}\\
&b_{1}&a_{2}&b_{2}\\
&&b_{2}&a_{3}
\end{pmatrix}的特征值\\
&\\
&故知原命题成立\\
\end{aligned}
$


## P3

3. Let $A$ be a real $n \times n$ matrix with distinct eigenvalues such that
$$|\lambda_1| > |\lambda_2| \ge |\lambda_3| \ge \cdots \ge |\lambda_n| \ge 0,$$
with corresponding eigenvectors $\{v_j\}_{j=1}^n$.

(a) Show that the power iteration
$$z_m = \frac{A^m z_0}{\|A^m z_0\|_\infty} \to \pm \frac{v_1}{\|v_1\|_\infty}, \quad \forall z_0 \in \mathbb{R}^n.$$

(b) Consider the following iteration with initial guess $x_0 = y_0 = 1$,
$$x_{n+1} = x_n + y_n, \quad y_{n+1} = x_{n+1} + x_n.$$
Show that $y_n/x_n \to \sqrt{2}$ as $n \to \infty$.


$
\begin{aligned}
&本题考察的是幂法\\
&由A由n个互不相同的特征值可知\\
&v_1,\cdots ,v_{n}线性无关\\
&故知z_{0}=a_1v_1+\cdots +a_{n}v_{n}\\
&故知A^{m}z_{0}=a_1A^{m}v_1+\cdots +a_{n}A^{m}v_{n}\\
&=a_1\lambda_1^mv_1\cdots +a_{n}\lambda_n^mv_n\\
&=\lambda _1^{m}(a_1v_1+\cdots +a_{n}(\frac{\lambda _{n}}{\lambda _1})^{m}v_{n})\\
&由\lambda _1 >\lambda _{i},\forall i\ne 1\\
&故知\\
&\lim_{m\to \infty}\frac{A^{m}z_0}{||A^{m}z_{0}||}=\pm \frac{v_1}{\|v_1\|}\\
&\\\\
&\begin{pmatrix}
x_{n+1}\\
y_{n+1}\\
\end{pmatrix}=\begin{pmatrix}
1&1\\
2&1\\
\end{pmatrix}\begin{pmatrix}
x_{n}\\
y_{n}\\
\end{pmatrix}\\
&det(\begin{pmatrix}
1&1\\
2&1\\
\end{pmatrix}-\lambda E)=0\\
&\Rightarrow \lambda =1\pm \sqrt{2}\\
&故知\lim_{n\to \infty}\frac{(\begin{pmatrix}
1&1\\
2&1\\
\end{pmatrix})^{n}\begin{pmatrix}
x_0\\
y_0\\
\end{pmatrix}}{\|(\begin{pmatrix}
1&1\\
2&1\\
\end{pmatrix})^{n}\begin{pmatrix}
x_0\\
y_0\\
\end{pmatrix}\|}=1+\sqrt{2}对应的特征向量v_1\\
&易知v_1=(1,\sqrt{2})^{T}\\
&故知\lim_{n\to \infty}\frac{y_n}{x_n}=\sqrt{2}\\
&\\\\
&
\end{aligned}
$


## P4
Consider the initial value problem$$y' = f(t,y), \quad 0 < t \le T. \qquad (3)$$$$y(0) = y_0. \qquad (4)$$Assume $f$ is continuous and Lipschitz in $y$ in $[0,T] \times (-\infty, \infty)$. Denote $y_n \approx y(t_n)$, $t_n = nh$, and $h = T/N$, with $N$ a positive integer, and consider the one-step method$$y_{n+1} = y_n + \alpha h f(t_n, y_n) + \beta h f(t_n + \gamma h, y_n + \gamma h f(t_n, y_n)),$$where $\alpha$, $\beta$ and $\gamma$ are real parameters.(a) Prove that the method is consistent if and only if $\alpha + \beta = 1$, and the order of the method can not exceed 2.
(b) Suppose that a second-order method of the above form is applied to $f(t,y) = -\lambda y$ with $\lambda > 0$, and the initial condition $y_0 = 1$. Show that the sequence $(y_n)_{n \ge 0}$ is bounded if and only if $h \le \frac{2}{\lambda}$. Show further that for such $h$,$$\vert{}y(t_n) - y_n\vert{} \le \frac{1}{6}\lambda^3 h^2 t_n, \quad n \ge 0.$$


$
\begin{aligned}
&(a)\\
&我们只需计算\\
&\lim_{h\to 0}\frac{y(t_{n+1})-y_{n+1}}{h}\\
&=\lim_{h\to 0}\frac{y(t_{n+1})-y(t_{n})-(ahf(t_n,h_n)+bhf(t_n+rh,y_n+rhf(t_n,y_n)))}{h}\\
&=y'(t_{n})-(\lim_{h\to 0}af(t_n,y_n)+bf(t_n+rh,y_n+rhf(t_n,y_n)))\\
&=f(t_n,y_n)-af(t_n,y_n)-\lim_{h\to 0}bf(t_n+rh,y_n+rhf(t_n,y_n))\\
&\\
&现在考虑\\
&\lim_{h\to 0}|f(t_n+rh,y_n+rhf(t_n,y_n))-f(t_n+rh,y_n)+f(t_n+rh,y_n)-f(t_n,y_n)|\\
&\leq \lim_{h\to 0}|f(t_n+rh,y_n+rhf(t_n,y_n))-f(t_n+rh,y_n)|+|f(t_n+rh,y_n)-f(t_n,y_n)|\\
&由f(t,y)连续\\
&故知\lim_{h\to 0}|f(t_n+rh,y_n)-f(t_n,y_n)|=0\\
&由f(t,y)关于yLipschitz连续\\
&故\lim_{h\to 0}|f(t_n+rh,y_n+rhf(t_n,y_n))-f(t_n+rh,y_n)|\leq \\
&\lim_{h\to 0}rhf(t_n,y_n)=0\\
&故知\lim_{h\to 0}\frac{y(t_{n+1})-y_{n+1}}{h}=(1-a-b)f(t_n,y_n)\\
&故知上述单步方法一致\iff \\
&a+b=1\\
&下面考虑证明上述单步法的阶数至多是2\\
&我们只需证明\\
&对于一个光滑的f,其阶数为2即可\\
&\\
&我们对y(t_{n+1})进行Taylor展开\\
&y(t_{n+1})=y(t_{n}+h)=y(t_{n})+y'(t_{n})h+\frac{1}{2}y''(t_{n})h^2+O(h^3)\\
&=y(t_{n})+f(t_{n},y_{n})h+\frac{1}{2}[f_{x}(t_{n},y_{n})+f_{y}(t_{n},y_{n})f(t_{n},y_{n})]h^2+O(h^3)\\
&\\
&y_{n+1}=y(t_{n})+ahf(t_n,y_n)+bhf(t_n+rh,y_n+rhf(t_n,y_n))\\
&=y(t_{n})+ahf(t_{n},y_{n})+bh(f(t_{n},y_{n})+rhf_{x}(t_{n},y_{n})+rhf(t_{n},y_{n})f_{y}(t_{n},y_{n})+O(h^2))\\
&\Rightarrow \\
&其阶数最大\iff \\
&\begin{cases}
a+b=1\\
br=\frac{1}{2}\\
\end{cases}\\
&故知(a)成立\\
&\\\\
&(b)\\
&若题述单步方法阶数为2\\
&则a+b=1,rh=\frac{1}{2}\\
&\Rightarrow \\
&y_{n+1}=y_{n}+ahf(t_n,y_n)+bhf(t_n+rh,y_n+rhf(t_n,y_n))\\
&=y_{n}-ah\lambda y_{n}-bh\lambda (y_{n}+rhf(t_{n},y_{n}))\\
&=y_{n}-ah\lambda y_{n}-bh\lambda (y_{n}-rh\lambda y_{n})\\
&=y_{n}-\lambda hy_{n}+\frac{1}{2}\lambda ^2h^2y_{n}\\
&=y_{n}(1-\lambda h+\frac{1}{2}\lambda ^2h^2)\\
&=(1-\lambda h+\frac{1}{2}\lambda ^2h^2)^{n}\\
&\\\\
&易知y_{n}有界\iff h\leq  \frac{2}{\lambda}\\
&\\
&考虑\frac{dy}{dt}=-\lambda y\\
&\Rightarrow y=e^{-\lambda t}\\
&\\\\
&|y(t_{n})-y_{n}|=|e^{-\lambda nh}-(1-\lambda h+\frac{1}{2}\lambda ^2h^2)^{n}|\\
&记e^{-\lambda h}=a,(1-\lambda h+\frac{1}{2}\lambda ^2h^2)=b\\
&则a-b\leq \frac{1}{6}(\lambda h)^3\\
&a\leq 1,b\leq 1\\
&故知\\
&|a^{n}-b^{n}|\leq |a-b||\sum _{i=0}^{n-1}a^{i}b^{n-1-i}|\leq \frac{1}{6}(\lambda h)^3n=\frac{1}{6}\lambda^3 h^2t_n\\
&故知原命题成立\\
&\\\\
&
\end{aligned}
$


## P5

Let $u(t,x)$ be the solution of the initial-boundary value problem$$u_t = D u_{xx}, \quad 0 < x < L, \quad 0 < t \le T, \qquad (5)$$$$u(0,x) = f(x) \qquad (6)$$$$u(t,0) = u(t,L) = 0, \qquad (7)$$where $L > 0$ and $D > 0$. Consider the finite difference scheme$$\frac{u_j^{n+1} - u_j^n}{\Delta t} = D \frac{u_{j+1}^n - 2u_j^n + u_{j-1}^n}{(\Delta x)^2}, \quad j = 1, \dots, M-1, \quad n = 0, 1, \dots, N-1 \qquad (8)$$with $u_0^n = u_M^n = 0$ for all $n$ and $u_j^0 = f(j\Delta x)$, $j = 0, \dots, M$. Here $\Delta t = T/N$ and $\Delta x = L/M$ and $u_j^n \approx u(n\Delta t, j\Delta x)$.
(a) Prove that (8) is consistent with (5).
(b) Prove that if $\Delta t \le \frac{1}{2D}(\Delta x)^2$ the finite difference scheme (8) is stable under the $l^\infty$ norm.
(c) Prove that if $\Delta t \le \frac{1}{2D}(\Delta x)^2$ the finite difference scheme (8) converges in the $l^\infty$ norm to the exact solution of (5)-(7).


$
\begin{aligned}
&本题实际上是Lax等价定理:\\
&对于一个适定的线性初值问题，如果给定的有限差分格式是相容的，\\&那么该格式收敛的充分必要条件是它是稳定的\\
&(a)\\
&LHS=u_{t}+O(\Delta t)\\
&RHS=D(u_{xx}+O(\Delta x))\\
&当\Delta t,\Delta x \to 0时\\
&由u_{t}=Du_{xx}\\
&可知上述有限差分格式相容\\
&\\\\
&(b)\\
&u_{j}^{n+1}=u_{j}^{n}+\frac{D\Delta t}{(\Delta x)^2}(u_{j+1}^{n}-2u_{j}^{n}+u_{j-1}^{n})\\
&令\frac{D\Delta t}{(\Delta x)^2}=r\\
&则u_{j}^{n+1}=ru_{j-1}^{n}+(1-2r)u_{j}^{n}+ru_{j+1}^{n}\\
&当r\leq \frac{1}{2}时\\
&(1-2r)\geq 0\\
&故知|u_{j}^{n+1}|\leq max_{j}|u_{j}^{n}|\\
&即|u_{j}^{n+1}|\leq |u^{n}|_{\infty}\\
&其中|u^{n}|_{\infty}表示\forall j,max|u_{j}^{n}|\\
&故知|u^{n+1}|_{\infty}\leq |u^{n}|_{\infty}\leq |u^{0}|_{\infty}\\
&故知(b)成立\\
&\\\\
&(c)\\
&第三问即为Lax等价定理\\
&我们设u(n\Delta t,j\Delta x)为原PDE的真实解\\
&则由(a)可知\\
&u((n+1)\Delta t,j\Delta x)=ru(n\Delta t,(j-1)\Delta x)+(1-2r)u(n\Delta t,j\Delta x)+ru(n\Delta t,(j+1)\Delta x)+\Delta t \tau _{j}^{n}\\
&其中\tau _{j}^{n}为截断误差\sim (O(\Delta t)+O(\Delta x))\\
&考虑到u_{j}^{n+1}=ru_{j-1}^{n}+(1-2r)u_{j}^{n}+ru_{j+1}^{n}\\
&将上述两式做差即有\\
&e_{j}^{n+1}=re_{j-1}^{n}+(1-2r)e_{j}^{n}+re_{j+1}^{n}+\Delta t\tau _{j}^{n}\\
&其中e_{j}^{n}=u(n\Delta t,j\Delta x)-u_{j}^{n}\\
&其中e_{j}^{0}=f(x)-u_{j}^{0}=0\\
&\Rightarrow |e^{n+1}|_{\infty}\leq |e^{n}|_{\infty}+\Delta t|\tau ^{n}|_{\infty}\\
&\Rightarrow \\
&|e^{n}|_{\infty}\leq |e^{0}|_{\infty}+n\Delta t|\tau ^{n}|_{\infty}\\
&=n\Delta t|\tau ^{n}|_{\infty}\\
&=T|\tau ^{n}|_{\infty}\\
&令\Delta x,\Delta t\to 0,可知\tau ^{n}\to 0\\
&故知此时|e^{n}|_{\infty}\to 0\\
&故知原命题成立\\
&\\\\
&
\end{aligned}
$

## P6

Let $\psi^\varepsilon(t,x)$ be the solution to the following Schrödinger equation:

$$
\mathrm{i}\varepsilon \frac{\partial \psi^\varepsilon}{\partial t}
=
-\frac{\varepsilon^2}{2}\nabla_x^2\psi^\varepsilon
+
V(x)\psi^\varepsilon,
\qquad
x=(x_1,\ldots,x_n)^{\mathrm T}\in\mathbb{R}^n.
$$

where

$$
\mathrm{i}=\sqrt{-1},
$$ 

$\varepsilon\ll 1$ is a small positive real number (rescaled Planck constant),

$$
\nabla_x^2=\sum_{j=1}^n \partial_{x_j}^2,
$$

and

$$
V(x)\in C^\infty(\mathbb{R}^n)
$$

is the potential function.

Consider the WKB expansion

$$
\psi^\varepsilon(t,x)
=
A(t,x)\mathrm{e}^{\frac{\mathrm{i}S(t,x)}{\varepsilon}}.
$$

#### (a)

Derive equations for $A(t,x)$ and $S(t,x)$ by asymptotic expansion.

Here, both $A(t,x)$ and $S(t,x)$ are real-valued functions and do not depend on $\varepsilon$.

#### (b)

Define

$$
u(t,x):=\nabla_x S(t,x)\in\mathbb{R}^n.
$$

Derive an equation for $u(t,x)$.

Suppose

$$
u(0,x)\in C^\infty(\mathbb{R}^n).
$$

Will $u(t,x)$ always belong to $C^\infty(\mathbb{R}^n)$ for all $t>0$? Explain why.

---


$
\begin{aligned}
&(a)\\
&所谓的WKB展开是指:\\
&对于Schrodinger方程而言\\
&当\epsilon 非常小时,其解通常回快速震荡\\
&此时将\psi^\varepsilon(t,x)当作一个平滑函数来分析会比较复杂\\
&WKB的想法是将解拆成如下两部分:\\
&\psi^\varepsilon(t,x)=A(t,x)e^{\frac{iS(t,x)}{\varepsilon}}\\
&将其带回原Schorodinger方程后\\
&考虑\epsilon \to 0的渐进估计\\
&(比较\epsilon 不同次数的系数)\\
&(让其系数全部为零)\\
&在本题中\\
&我们直接将\psi^\varepsilon(t,x)=A(t,x)e^{\frac{iS(t,x)}{\varepsilon}}代入到题述PDE中\\
&\\
&\frac{\partial \psi^\varepsilon(t,x)}{\partial t}=A_{t}e^{\frac{iS}{\epsilon }}+\frac{i}{\epsilon }Ae^{\frac{iS}{\epsilon }}S_{t}\\
&\nabla_x^2\psi^\varepsilon=2\frac{i}{\epsilon }e^{\frac{iS}{\epsilon }}(\nabla S\cdot \nabla A)+e^{\frac{iS}{\epsilon }}\Delta A+(\frac{i}{\epsilon })^{2}Ae^{\frac{iS}{\epsilon }}|\nabla S|^{2}+A\frac{i}{\epsilon }e^{\frac{iS}{\epsilon }}\Delta S\\
&\Rightarrow \\
&i\epsilon A_{t}-AS_{t}=-\epsilon i(\nabla S\cdot \nabla A)-\frac{\epsilon ^2}{2}\Delta A+\frac{1}{2}A|\nabla S|^{2}-\frac{\epsilon i}{2}A\Delta S+VA\\
&\Rightarrow \\
&\begin{cases}
&A_{t}+(\nabla S\cdot \nabla A)+\frac{1}{2}A\Delta S=0(1)\\
&AS_{t}+\frac{1}{2}A|\nabla S|^{2}+VA=0(2)\\
\end{cases}\\
&\Rightarrow \\
&\begin{cases}
&A_{t}+(\nabla S\cdot \nabla A)+\frac{1}{2}A\Delta S=0(1)\\
&S_{t}+\frac{1}{2}|\nabla S|^{2}+V=0(2)\\
\end{cases}
&\\\\
&(b)\\
&考虑到(1)是关于A和S的混合方程\\
&而题述要求只要求关于S梯度的方程\\
&故我们考虑对(2)关于x求梯度\\
&\nabla S_{t}+\frac{1}{2}\nabla |\nabla S|^{2}+\nabla V=0\\
&\Rightarrow \\
&u_{t}+(u\cdot \nabla )u+\nabla V=0\\
&\\\\
&对于关于u是否一定光滑的问题\\
&我们考虑直接构造反例\\
&令V(x)=0\\
&令u(x,t)中x维数为1\\
&则u_{t}+uu_{x}=0\\
&取u(0,x)=-x\\
&则当t<1时\\
&原方程的解为\\
&u(t,x)=\frac{-x}{1-t}\\
&\Rightarrow u_{x}(t,x)=\frac{-1}{1-t}\\
&当t\to 1时有\\
&u_{x}(t,x)\to \infty\\
&故u未必在整个域上光滑\\
\end{aligned}
$