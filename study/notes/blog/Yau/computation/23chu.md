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
&
\end{aligned}
$