# $L^{p}$ 空间

$
\begin{aligned}
&L^p=\{f,\int_{E}|f(x)|^{p}<+\infty\}\\
&L^{p}是线性空间\\
&\int_{E}|f+g|^{p}dx\leq \int_{E}(|f|^{p}+|g|^{p})\cdot 2^{p-1}dx\\
&def:\rho(f,g)=(\int_{E}|f-g|^{p}dx)^{\frac{1}{p}}\\
&\\\\
&下面验证\rho 是一个内积\\
&(1)\rho(f,g)=0 \iff f=g\\
&(2)\rho(f,g)=\rho(g,f)\\
&(3)\rho(f,g)\leq \rho(f,z)+\rho(z,g)\\
&\\\\
&Prove:\\
&(1)f=g,a.e.\\
&故知\rho ,不是一个内积\\
&\\\\
&若f=g,,a.e.于E,则在\mathcal{L}^{p}中看作相等\\
&定义L^{p}=\mathcal {L}^{p}/\sim\\
&这样\rho 就满足内积的第一条了\\
&\\
&"Holder不等式":\\
&p,q\geq 1,若\frac{1}{p}+\frac{1}{q}=1,则称p,q互为共轭指数\\
&\\
&特别的,1,\infty互为共轭指数\\
&\\
&\int_{E}|f(x)g(x)|dx\leq [\int_{E}|f(x)^{p}dx|]^{\frac{1}{p}}[\int_{E}|g(x)|^{q}dx]^{\frac{1}{q}}\\
&利用e^{x}的凸性\\
&易有:a^{\frac{1}{p}}b^{\frac{1}{q}}\leq \frac{1}{p}a+\frac{1}{q}b\\
&取a,b,为\frac{|f(x)|^{p}}{\int_{E}|f(x)|^{p}dx},\frac{|g(x)|^{q}}{\int_{E}|g(x)|^{q}dx}\\
&两边同时取积分得证\\
&\\\\
&Proposition:\\
&\int_{E}|f(x)|^{p}dx\\
&\\
&Minkowski不等式:\\
&f,g\in L^{p}\\
&(1\leq p<+\infty),则\\
&[\int_{E}|f+g|^{p}dx]^{\frac{1}{p}}\leq [\int_{E}(|f|^{p}dx)]^{\frac{1}{p}}[\int_{E}(|g|^{p}dx)]^{\frac{1}{p}}\\\\
&赋范空间(X,||\cdot ||),||\cdot ||: X\to R\\
&(1)||x||\geq 0,||x||=0\iff x=0\\
&(2)||\alpha x||=|\alpha |||x||\\
&(3)||x+y||\leq ||x||+||y||\\
&\\\\
&定义:设f_{k}\in L^{p},若\exists f\in L^{p},s.t.: \\
&\lim_{k\to +\infty} ||f_{k}-f||_{p}=0,称\{f_{k}\}收敛于f\\
&称f_{k}依L^{p}收敛或p方平均收敛\\
&\\
&定义:(基本列)\\
&若家f_{k}\in L^{p},满足\lim_{k,j\to \infty}||f_{k}-f_{j}||_{p}=0\\
&称\{f_{k}\}是L^{p}中的Cauchy列\\
&\\
&Tip:\\
&若:\{f_{k}\}收敛,则极限唯一.\\
&f_{k}\to f\\
&||f||_{p}\leq ||f_{k}-f||_{p}+||f_{k}||_{p}\\
&||f_{k}||_{p}\leq ||f-f_{k}||+||f||_{p}\\
&||f_{k}||_{p}-||f||_{p}\leq ||f-f_{k}||_{p}\to 0\\
&则||f_{k}||_{p}\to ||f||(k\to +\infty)\\\\
&\\
&p方平均收敛可以推出依测度收敛\\
&(Chebyshev不等式)\\
&\\\\
&L^{p}是完备的\\
&(i.e.任意Cauchy列都收敛)\\
&\\\\
&证明:\\
&\{f_{k}\}是Cauchy列，\exists f=\lim_{k\to +\infty} f_{k}\\
&且f\in L^{p}\\
&\forall \sigma >0,\\
&令E_{k,j}(\sigma )=\{x,|f_{j}(x)-f_{k}(x)|\geq \sigma \}\\
&||f_{i}-f_{k}||_{p}=[\int_{E}|f_{i}(x)-f_{k}(x)|^{p}]^{\frac{1}{p}}\geq [\int_{E_{k,j}}|f_{i}(x)-f_{k}(x)|^{p}]^{\frac{1}{p}}\geq \sigma \cdot m[E_{k,j}(\sigma )]^{\frac{1}{p}}\\
&\\
&\{f_{k}\}为依测度收敛基本列\\
&\int_{E}|f_{k}(x)-f(x)|^{p}dx=\int_{E}\lim_{i\to +\infty} |f_{k}(x)-f_{k_i}(x)|^{p}dx\leq \underline{\lim} \\
&先省略\\\\
\end{aligned}
$
