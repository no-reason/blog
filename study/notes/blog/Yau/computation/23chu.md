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
&
\end{aligned}
$