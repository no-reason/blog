# Bell 数
## 组合定义
$
\begin{aligned}
Bell数是阶为n的集合的划分方法的数目.
\end{aligned}
$
## 递推公式
$
\begin{aligned}
&B_{n+1}=\sum_{i=0}^{n}C_{n}^{i}B_i\\
&证明:\\
&我们考虑对于第n+1个元素\\
&其可以和任意n-i个元素组成一个新集合\\
&而剩余的i个元素进行划分的方法数为B_i\\
&故可得递推公式B_{n+1}=\sum_{i=1}^{n}C_{n}^{n-i}B_i\\
&=\sum_{i=0}^{n}C_{n}^{i}B_i\\
&得证\\
\end{aligned}
$
## 生成函数
$
\begin{aligned}
&考虑Dirichlet生成函数\\
&B(x)=\sum_{i=0}^{\infty}\frac{B_i}{i!}x^i\\
&B'(x)=\sum_{i=0}^{\infty}\frac{B_{i+1}}{i!}x^i\\
&而B_{i+1}=\sum_{j=0}^{i}C_i^{j}B_j\\
&\Rightarrow B_{i+1}=\sum_{j=0}^{i}\frac{i!}{j!(j-i!)}B_j\\
&\Rightarrow B'(x)=\sum_{i=0}^{\infty}(\sum_{j=0}^{i}\frac{1}{j!(i-j)!}B_j)x^i\\
&=e^xB(x)\\
&解微分方程可知B(x)=e^{e^x-1}\\
\end{aligned}
$

目前为止,我们已经成功求出了Bell数的Dirichlet生成函数表达式,但如果想求解出Bell数的确切表达式,我们需要引入下面的第二类Stirling数
## 第二类Stirling数
### 组合定义
$
\begin{aligned}
&第二类Stirling数,记作S(n,k),表示将n个两两不同的元素,\\
&划分为k个互不区分的非空子集的方案数\\
&\\\\
\end{aligned}
$
### 递推公式
$
\begin{aligned}
&S(n,k)=S(n-1,k-1)+kS(n-1,k)\\
&证明:\\
&考虑现在放入一个新元素\\
&如果将其单独放入一个元素,共有S(n-1,k-1)种方案\\
&如果将其放入某一个子集中,则共有k个子集可供选择,共kS(n-1,k)中方案\\
&\\\\
\end{aligned}
$
### 通项公式
$
\begin{aligned}
&我们利用二项式反演进行推导\\
&设将n个两两不同的元素,\\
&划分到i个两两不同的集合(允许空集)的方案数为G_i\\
&将n个两两不同的元素,划分到i个两两不同的集合(不允许空集)的方案数为F_i\\
&则显然有G_i=i^n\\
&G_i=\sum _{j=0}^{i}C_{i}^{j}F_j\\
&G_i=\sum_{j=0}^{i}C_i^{j}(-1)^{j}(-1)^{j}F_j\\
&由二项式反演:(-1)^{i}F_i=\sum_{j=0}^{i}C_i^{j}(-1)^{j}G_j\\
&\Rightarrow F_i=\sum_{j=0}^{i}C_i^{j}(-1)^{i-j}G_j\\
&=\sum_{j=0}^{i}C_i^{j}(-1)^{i-j}j^n\\
&=\sum_{j=0}^{i}\frac{i!}{j!(i-j)!}(-1)^{i-j}j^n\\
&\\\\
&下面考虑F_i与S(n,i)的关系\\
&由于S(n,i)中,我们对于不同的集合之间不予区分\\
&故知S(n,i)=\frac{F_i}{i!}\\
&故知S(n,i)=\sum_{j=0}^{i}\frac{1}{j!(i-j)!}(-1)^{i-j}j^n\\\\
\end{aligned}
$
### 生成函数
## 一些其它利用算两次方法解决的问题
### 集合的覆盖问题
$
\begin{aligned}
&设\Omega _n是含有n个元素的集合,\\
&\{A_i\}称为\Omega _n的一个覆盖\\
&如果\cup _i A_i =\Omega _n,A_i\subset \Omega _n非空\\
&记C_n为\Omega _n的不同覆盖的个数,\\
&证明:2^{2^n-1}=\sum_{k=0}^{n}C_n^kC_k\\
&考虑由\Omega _n的所有非空子集构成的子集M\\
&则M的非空子集的个数为2^{2^n-1}-1\\
&设M的非空子集构成的集合为N\\
&则N中的每个元素都是\Omega _n的若干子集组成的集合\\
&(可以看成\Omega _n的某子集的覆盖)\\
&这些子集可按他们的并含有的元素个数来分类\\
&故知2^{2^n-1}-1=\sum_{k=1}^{n}C_n^kC_k\\
&即2^{2^n-1}=\sum_{k=0}^{n}C_n^kC_k\\
&对上式应用二项式反演即可得C_k的表达式\\
&\\\\
\end{aligned}
$
### 组合恒等式
$
\begin{aligned}
&(1)利用算两次证明:\\
&\sum_{i=0}^{n}C_{x+i}^{i}=C_{x+n+1}^{n}\\
&考虑从集合\{0,1,\cdots x+n+1\}中选出x+1个数\\
&一方面其选法有C_{x+n+1}^{x+1}=C_{x+n+1}^{x+1}种\\
&另一方面考虑按选出的数的最大值做分划\\
&故\sum_{i=0}^{n}C_{x+i}^{x}=C_{x+n+1}^{n}\\
&LHS=\sum_{i=0}^{n}C_{x+i}^{i}\\
&故知原命题成立\\
&\\\\
&(2)\sum_{i=max(0,n-y)}^{min(n,x)}C_x^{i}C_y^{n-i}=C_{x+y}^{n}\\
&证明:考虑从A班(x个人)和B班(y个人)共计选出n人\\
&则按照从A班选和从B班选分划，即可知原命题成立\\
&\\\\
&
\end{aligned}
$