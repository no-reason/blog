# Hilbert空间中射影定理最小点一定能取到的证明

$
\begin{aligned}
&设H是一个Hilbert空间\\
&M是H的闭子空间\\
&则\forall x\in H,\exists !y\in M\\
&s.t. \|x-y\|=\min_{z\in M}\|x-z\|\\
&\\
&证明:\\
&\exists y_{n},s.t. \lim_{n\to \infty}\|x-y_{n}\|=d\\
&\\
&利用平行四边形法则可知\\
&\|x-y_{n}+x-y_{m}\|^{2}+\|x-y_{n}-(x-y_{m})\|^{2}=2\|x-y_{n}\|^{2}+2\|x-y_{m}\|^{2}\\
&\Rightarrow \|y_{n}-y_{m}\|^{2}=2\|x-y_{n}\|^{2}+2\|x-y_{m}\|^{2}-\|2x-y_{n}-y_{m}\|^{2}\\
&\leq 2\|x-y-{n}\|^{2}+2\|x-y_{m}\|^{2}-4d^{2}\\
&\Rightarrow \lim_{n,m\to \infty}\|y_{n}-y_{m}\|^{2}=0\\
&故知道y_{n}是Cauchy列\\ 
&又由H完备\\
&M是H的闭自空间\\
&故知M完备\\
&故知\lim_{n\to \infty}y_{n}=y\in M\\
&故知最小值可取到\\
&\\\\
&这个选取出来的y应该x-y_0是和M正交(证明可以考虑扰动法)\\
&如果是实Hilbert空间，直接一次扰动就可以做完\\
&如果是复Hilbert空间，就对z和iz分别做一次扰动\\
&然后利用正交性还可以直接证明y_{0}是唯一的\\
\end{aligned}
$