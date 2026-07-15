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
&由Guass积分的性质可知\\
&P_{n+1},P_{n},P_{n-1}必然存在三项递推关系\\
&\\
\end{aligned}
$