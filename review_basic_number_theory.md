# 初等数论复习
## 自然数的基本性质
$
\begin{aligned}
&用数学归纳法证明：\\
&当k,n\in N且k\leq n时,\begin{pmatrix}
n\\
k\\
\end{pmatrix}总为整数\\
&证明:\\
&我们对k进行归纳\\
&当k=0时,\forall n\geq 0\in N,\begin{pmatrix}
n\\
k\\
\end{pmatrix}=\begin{pmatrix}
n\\
0\\
\end{pmatrix}=1为整数\\
&设对k时命题成立\\
&考虑k+1时的情况\\
&即证\forall n\geq k+1,\begin{pmatrix}
n\\
k+1\\
\end{pmatrix}都是整数\\
&考虑对n进行归纳\\
&当n=k+1时,命题显然成立\\
&设对n时命题成立\\
&考虑n+1时\\
&\begin{pmatrix}
n+1\\
k+1\\
\end{pmatrix}=\begin{pmatrix}
n\\
k\\
\end{pmatrix}+\begin{pmatrix}
n\\
k+1\\
\end{pmatrix}\\
&而由归纳假设可知\\
&\begin{pmatrix}
n\\
k\\
\end{pmatrix}和\begin{pmatrix}
n\\
k+1\\
\end{pmatrix}均为整数\\
&固有归纳法知原命题成立\\
\end{aligned}
$
## 整除性、素数及算术基本定理
$
\begin{aligned}
&(1)由小到大排列的第n个素数p_n不超过2^{2^{n-1}}\\
&证明:\\
&考虑Fermat数F_n=2^{2^n}+1\\
&F_n-2=2^{2^n}-1=(2^{2^{n-1}}+1)(2^{2^{n-2}}+1)\cdots (2+1)\\
&=F_0F_1\cdots F_{n-1}\\
&由Fermat数为奇数可知Fermat数只含有奇素因子\\
&故知F_n与F_1,F_2,\cdots F_{n-1}没有公共素因子\\
&故知p_n\leq F_{n-2}=2^{2^{n-2}}+1\leq 2^{2^{n-1}}\\
&故知原命题得证\\
&\\\\
&(2)设p为素数,证明:\\
&i)\forall k=1,2,\cdots p-1,都有p|\begin{pmatrix}
p\\
k\\
\end{pmatrix}\\
&k!\begin{pmatrix}
p\\
k\\
\end{pmatrix}=p(p-1)\cdots (p-k+1)\\
&p|k!\begin{pmatrix}
p\\
k\\
\end{pmatrix}且(p,k!)=1\\
&故知p|\begin{pmatrix}
p\\
k\\
\end{pmatrix}\\\\
&(ii)p|(2^p-2)\\
&若p=2,则命题显然成立\\
&若p\ne 2,\\
&则由Fermat小定理2^{p-1}\equiv 1\pmod p\\
&故知原命题成立\\
&\\\\
&证明：不超过2n的n+1个正整数中必有一个整除另一个:\\
&假定a_1,a_2,\cdots ,a_{n+1}都是不超过2n的正整数\\
&不妨设a_1\leq \cdots \leq a_{n+1}.\\
&\forall 1\leq i \leq n+1,i\in n_{+}\\
&设a_i=2^{\alpha _i}q_i\\
&其中q_i是正奇数.\\
&由于q_1,\cdots ,q_{n+1}属于n元集\{1,3,\cdots,2n-1\}\\
&\exists 1\leq i<j\leq n+1,s.t. q_i=q_j\\
&故知\alpha _i\leq \alpha _j且a _i|a_j\\
&\\\\
&(3)对于n=2,3\cdots,不超过n的素数之积\Pi _{p\leq n}p<4^n\\
&考虑使用归纳法\\
&当n=2时命题显然成立\\
&设命题对<n时都成立\\
&考虑n时的情况\\
&若n=2m,则n不为素数\Pi _{p\leq n}p=\Pi _{p\leq n-1}p\leq 4^{n-1}\\
&若n=2m-1,则由归纳假设可知\Pi _{p\leq m}p\leq 4^m\\
&考虑m<p\leq n\\
&其中p一定整除(m+1)(m+2)\cdots n\\
&=m!\begin{pmatrix}
n\\
m\\
\end{pmatrix}\\
&由p不是m!的因子可知\\
&p|\begin{pmatrix}
n\\
m\\
\end{pmatrix}\\
&故知满足m<p\leq n的所有素因子p的乘积\leq \begin{pmatrix}
n\\
m\\
\end{pmatrix}\\
&易知\begin{pmatrix}
n\\
m\\
\end{pmatrix}\leq 2^{n-1}\\
&故知原命题得证\\
&\\\\
&(4)证明第n个素数p_n不超过4^n\\
&我们只需证明:n\leq 4^{\pi(n)}\\
&设不超过n的正整数位p_1,\cdots ,p_r,\\
&其中r=\pi (n)\\
&由于不超过n的任何正整数k的素因子都\in \{p_1,p_2\cdots ,p_r\}\\
&由(1)及算术基本定理可把k表示成m_k^2\Pi _{i=1}^{r}p_i^{\delta(k)}的形式\\
&其中\delta_i(k)\in\{0,1\}\\
&且m_k\leq \sqrt{k}\leq \sqrt{n}\\
&故知这样正整数的个数不超过\sqrt{n}\cdot 2^r\\
&\Rightarrow n\leq \sqrt{n}\cdot 2^r\\
&即有n\leq 4^r\\
&\\\\
\end{aligned}
$
## 辗转相除法和线性丢番图方程
$
\begin{aligned}
&二阶线性递推数列的结论:\\
&
&(1)设p是素数,且M_p=2^p-1也是素数,则2^{p-1}M_p为完全数\\
&n是完全数\iff \sigma (n)=2n\\
&枚举即可\\
&\\\\
&(2)Fibnacci数列满足如下递推公式:\\
&F_{n+m}=F_nF_{m+1}+F_{n-1}F_m\\
&利用该公式可证明(F_n,F_m)=F_{(n,m)}\\
&\\\\
\end{aligned}
$
## 同余式、剩余类及中国剩余定理
$
\begin{aligned}
&
\end{aligned}
$
## 欧拉定理、费马小定理及威尔逊定理
$
\begin{aligned}
&奇素数p可以表示成两个正整数的平方和\iff p \equiv 1 \pmod 4\\
&(\Rightarrow )显然\\
&下面考虑证明(\Leftarrow )\\
&(一)：\\
&令q=\frac{p-1}{2}!,则q^2\equiv (-1)^{\frac{p+1}{2}}\equiv -1 \pmod p\\
&下面考虑x+qy,其中x,y\in \{0,1,\cdots ,[\sqrt{p}]\},\\
&因此数集的个数=([\sqrt{p}]+1)^2>p\\
&故知数集中必有两个元素(x_1,y_1),(x_2,y_2),s.t.\\
&x_1+qy_1=x_2+qy_2\\
&也即(x_1-x_2)=-q(y_1-y_2)\\
&i.e. (x_1-x_2)^2+(y_1-y_2)^2\equiv 0 \pmod p\\
&又有(x_1-x_2)^2+(y_1-y_2)^2<p+p=2p\\
&故知只能(x_1-x_2)^2+(y_1-y_2)^2=p\\
&故知原命题成立\\
&\\\\
\end{aligned}
$
## 二次剩余理论及其应用
$
\begin{aligned}
&(1)证明:奇下标的Fibnacci数没有4n+3型素因子\\
&首先由F_n^2-F_{n-1}F_{n+1}=(-1)^{n-1}\\
&故知F_{2k}^2-F_{2k-1}F_{2k+1}=(-1)^{2k-1}=-1\\
&故知F_{2k}^2\equiv -1\pmod p\\
&故知p\equiv 1\pmod 4\\
&二次剩余推论:\\
&\begin{pmatrix}
2\\
p\\
\end{pmatrix}=(-1)^{\frac{p^2-1}{8}}=\begin{cases}
1,p\equiv \pm 1 \pmod 8\\
-1,p\equiv \pm 3 \pmod 8\\
\end{cases}\\\\
&\forall p\ne 3\\
&\begin{pmatrix}
3\\
p\\
\end{pmatrix}=\begin{cases}
1,p\equiv \pm 1\pmod {12}\\
-1,p\equiv \pm 5 \pmod {12}\\
\end{cases}\\
&\forall p\ne 5\\
&\begin{pmatrix}
5\\
p\\
\end{pmatrix}=\begin{cases}
1,p\equiv \pm 1\pmod 5\\
-1,p\equiv \pm 2\pmod 5\\
\end{cases}\\\\
&\\
&(2)当n>1时,费马数的素因子模2^{n+2}余1\\
&证明:设p为素数s.t. p|2^{2^n}+1\\
&考虑F_{n-1}^{2^{n-1}}\equiv -1\pmod {F_n}即可\\
&\\\\
&(3)证明:F_n为素数\iff 3^{\frac{F_n-1}{2}}\equiv -1\pmod {F_n}\\
&这只需验证\begin{pmatrix}
3\\
F_n\\
\end{pmatrix}=-1\\
&而F_n=2^{2^n}+1\equiv 1\pmod 4\\
&F_n\equiv 2\pmod 3\\
&故根据二次互反律可知原命题成立\\
&\\\\
\end{aligned}
$