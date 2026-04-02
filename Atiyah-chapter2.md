# Atiyah-chapter2
## 模和模同态
$
\begin{aligned}
&模的定义:\\
&一个环A上的模是指一个加法交换群(M,+)配上一个线性的A-作用\\
&:\\
&\mu :A\times M\to M\\
&(a,m)\mapsto am=\mu (a,m)\\
&\\
&s.t. a(x+y)=ax+ay\\
&(a+b)x=ax+bx\\
&a(bx)=(ab)x\\
&1\cdot x=x\\
&\\\\
&对于固定的A-模M,A中的每个元素a都会引起加法群M到自身的一个同态\\
&\\
&因此A-模结构本质上是一个环A到End(M)的环同态\\
&\\
&例子:\\
&(i)环A的任意理想\mathfrak{a}是一个A-模\\
&(ii)如果A是域\mathfrak{k},那么A-模=k-向量空间\\
&(iii)A=Z,Z-模=交换群\\
&(iv)A=\mathfrak{k}[x],\mathfrak{k}是域;\\
&~~~~~~一个A-模就是一个带有一个线性变换的\mathfrak{k}-向量空间\\
&(v)G=有限群,A=\mathfrak{k}[G]=G在域\mathfrak{k}上的群代数\\
\\\\
&设M和N是两个A-模,映射f:M\to N叫作A-模同态(或A-线性映射),\\
&若\forall a\in A和x,y\in M有\\
&f(x+y)=f(x)+f(y),f(ax)=af(x)\\
&\\\\
&从M到N中的所有A-模同态所称的集合可以成为一个A-模\\
&(按如下方式定义f+g和af):\\
&(f+g)(x)=f(x)+g(x),(af)(x)=af(x)\\
&\\
&这个A-模记作Hom_{A}(M,N)\\
&\\
&对于任意A-模,有自然同构Hom(A,M)\cong M\\
&(每个A-模同态f:A\to M由元素f(1)惟一确定,且该元素可任意选取)\\
&\\\\
\end{aligned}
$
## 子模和商模
$
\begin{aligned}
&子模:\\
&M'是A-模M的子群,并且对于A中元素的数乘乘法封闭\\
&\\
&商模:\\
&对于交换群M/M'\\
&定义数乘a(x+M')=ax+M'\\
&\\
&核像余核:\\
&设f:M\to N是A-模同态\\
&则ker f=\{x|f(x)=0\}\\\\
&Im f=f(M)\\\\
&coker f=N/Im f\\\\
&\\
\end{aligned}
$
## 子模的运算
$
\begin{aligned}
&Proposition2.1(模上的同构基本定理):\\
&(这里对于模之间加法的定义)\\
&(与chapter1中对于环加法的定义基本相同)\\
&(i)设N\subseteq M\subseteq L,它们都是A-模.\\
&则(L/N)/(M/N)\cong L/M\\
&\\
&(ii)设M_1,M_2是M的子模,则:\\
&(M_1+M_2)/M_1\cong M_2/(M_1\cap M_2)\\
&\\
&\\
&证明：\\
&对于(i),考虑f:L/N\to L/M,x+N\mapsto x+M\\
&则f是从L/N到L/M的同态，且kerf =M/N\\
&故由同态基本定理可知(i)成立\\
&\\\\
&对于(ii),考虑f:M_2\to (M_1+M_2)/M_1,m\mapsto m+M_1\\
&则f是M_2\to (M_1+M_2)/M_1的同态，且ker f=(M_1\cap M_2)\\
&\\\\
&忠实的模:若Ann(M)=0,则称A-模M是忠实的\\
\end{aligned}
$
## 有限生成的模
$
\begin{aligned}
&自由A-模:\\
&自由A-模是同构于形如\oplus _{i\in I}M_i的A-模的一个A-模\\
&这里所有M_i(作为A模)都同构于A.\\
&\\
&\\
&Proposition2.3:\\
&A-模M是有限生成的\iff M同构于模A^n的一个商模\\
&证明：\\
&\\
&(\Rightarrow ),设M由a_1,a_2,\cdots ,a_n生成\\
&则\forall a\in M,a=x_1a_1+\cdots x_na_n\\
&定义映射f:A^n\to M\\
&~~~~~~~~~~~~~(x_1,x_2,\cdots ,x_n)\mapsto x_1a_1+x_2a_2+\cdots x_na_n\\
&\\
&此为A^n到M的满同态,故知A^n/ker f\cong M\\
&\\
&(\Leftarrow ),这时存在A-模的满同态\phi :A^n\to M\\
&令e_i=(0,\cdots ,0,1,0,\cdots ,0)(这时第i个位置是1)\\
&那么e_i生成A^n,故\phi (e_i)生成M\\
& \\\\
&Proposition2.4:\\
&设M是有限生成的A-模,\mathfrak{a}是A的一个理想\\
&\phi \in End(M),s.t.\phi (M)\subseteq \mathfrak{a}M\\
&那么\phi 适合下面一个方程:\\
&\phi ^n+a_1\phi ^{n-1}+\cdots +a_n=0\\
&其中\forall 1\leq i\leq n,a_i\in \mathfrak{a}\\
&\\
&(本定理事实上是Hamilton-Cayley定理的推广)\\
&\\\\
&证明:\\
&由M是有限生成模,不妨设M可由x_1,x_2,\cdots x_n有限生成\\
&\\
&则\phi (x_i)=\sum _{j=1}^{n}a_{ij}x_j\\
&则有\forall 1\leq i\leq n,\sum_{j=1}^{n}(\delta _{ij}\phi-a_{ij})x_j=0\\
&\\
&即(\delta _{ij}\phi -a_{ij})_{n\times n}(x_1,\cdots ,x_n)^{T}=0\\
&两边同乘((\delta _{ij}\phi -a_{ij})_{n\times n})^{*}\\
&即有|\delta_{ij}\phi -a_{ij}|=0\\
&将此展开后即为关于\phi 的零化多项式\\
&\\\\
&Corollary2.5:\\
&设M是一个有限生成的A-模,\mathfrak{a}是A的一个理想\\
&s.t. \mathfrak{a}M=M,则\exists x\in M\\
&s.t. x\equiv 1\pmod \mathfrak{a},且xM=0\\
&\\
&在Proposition2.4中取\phi 为恒等映射\\
&则\exists a_1,\cdots a_n,s.t. \phi+a_1\phi+\cdots +a_n\phi=0\\
&取x=1+a_1+\cdots +a_n即可满足题意\\
&\\\\
&Proposition2.6:(Nakayama引理(中山引理))\\
&设M是一个有限生成A-模,\mathfrak{a}是A的一个理想\\
&\mathfrak{a}\subseteq \mathfrak{R}\\
&若\mathfrak{a}M=M,则M=0\\
&\\\\
&证明:由Corollary2.5可知：\\
&\exists x\in A,s.t. x\quiv 1\pmod \mathfrak{R},xM=0\\
&又由\mathfrak{R}为大根,故知\forall x为可逆元\\
&故知M=x^{-1}xM=0\\
&故知Proposition2.6成立\\
&\\\\
&Corollary2.7:\\
&设M是有限生成的A-模,N是M的一个子模\\
&\mathfrak{a}是一个A大根中的理想\\
&若M=\mathfrak{a}M+N\\
&则M=N\\
&证明:a(M/N)=(aM+N)/N=M/N\\
&故对M/N应用Nakayama引理\\
&则知M/N=0,即有M=N\\
&\\\\
&设A是一个局部环,\mathfrak{m}是它的极大理想\\
&\mathfrak{k}=A/\mathfrak{m}是A的同余类域\\
&M是一个A-模\\
&由于\mathfrak{m}零化M/\mathfrak{m}M\\
&可以证明M/\mathfrak{m}M可以看成\mathfrak{k}-向量空间，且是有限维的\\
&\\\\
&Proposition2.8:\\
&设x_i(1\leq i\leq n)是M的一组元素\\
&,它们在M/\mathfrak{m}M中的像组成这个向量空间的一组基\\
&那么x_i生成M\\
\end{aligned}
$
## 正合序列
$
\begin{aligned}
&Proposition2.9:\\
&i)设M'\Rightarrow {u}M\Rightarrow {v}M''\Rightarrow 0\\
&是一个A-模和A-同态的序列.则上述序列正合\iff \\
&\forall A-模N,序列0\Rightarrow Hom(M'',N)\Rightarrow {\overline{v}}Hom(M,N)\Rightarrow {\overline{u}}Hom(M',N)正合\\
&ii)设0\Rightarrow N'\Rightarrow {u}\Rightarrow N\Rightarrow {v}N''是一个A-模和A-同态的序列\\
&则上述序列正合\iff \\
&0\Rightarrow Hom(M,N')\Rightarrow {\overline{u}}Hom(M,N)\Rightarrow {\overline{v}}Hom(M,N'')\forall A-模M都正合\\
\\\\
&Proposition2.10:\\
&
\end{aligned}
$
## 模的张量积
$
\begin{aligned}
&Definition:\\
&张量积是描述双线性映射的一个桥梁:\\
&对于两个A-模M,N,M和N的张量积是一个A-模T,\\
&满足对于任意的A-模P,从M\times N\to P的双线性映射和T到P的线性映射具有一一对应\\
&
\end{aligned}
$
## 纯量的局限和扩充
$
\begin{aligned}
&纯量局限:\\
&设f:A\to B是个环同态,N是一个B-模.\\
&则N中包含一个A-模结构,\\
&\forall a\in A,x\in N,ax=f(a)x\\
&那么我们称这个模式从N经纯量局限得到的\\
&Especially,用这种方法,f还在B上定义了一个A-模结构\\
&\\\\
&Proposition2.16:\\
&假定N作为B-模是有限生成的,\\
&而环B作为A-模也是有限生成的\\
&那么N作为A-模也是有限生成的\\
&\\\\
&Proposition2.17:\\
&如果M作为A-模是有限生成的,\\
&那么经M做纯量扩充得到的B-模M_B也是有限生成的\\
\end{aligned}
$
## 张量积的正合性
$
\begin{aligned}
&张量积的典范同构:\\
&Hom(M\otimes N,P)\cong Hom(M,Hom(N,P))\\
&\\\\
&Proposition2.18:\\
&设M'\Rightarrow {f}M\Rightarrow {g}M''\Rightarrow 0正合\\
&则下列序列也正合(N是任意A-模)\\
&M'\otimes N\Rightarrow {f\otimes 1}M\otimes N\Rightarrow {g\otimes 1}M''\otimes N\Rightarrow 0\\
&[必须是上文所述的四个模且最后一个是零的形式才成立该性质]\\
&如果没有该条件做保障就不成立\\
&\\\\
&也就是说,在A-模和A-同态的范畴上,\\
&函子T_N:M\mapsto M\otimes _AN一般来说不正合\\
&如果T_N正合,则N叫作平坦A-模\\
&\\
&Proposition2.19:\\
&A-模N具有下述等价条件:\\
&\begin{cases}
&1.N是平坦模\\
&2.\forall A-模正合列:0\to M'\to M\to M''\to 0\\
&0\to M'\otimes N\to M\otimes N\to M''\otimes N\to 0也是正合列\\
&3.如果同态f:M'\to M是单的,那么f\otimes 1:M'\otimes N\to M\otimes N也是单的\\
&4.如果同态f:M'\to M是单的,而M和M'都是有限生成的,那么f\otimes 1:M'\otimes N\to M\otimes N也是单的\\
\end{cases}\\
&\\\\
&2.20:\\
&设f:A\to B是环同态,M是一个平坦A-模\\
&那么M_B=B\otimes _AM是个平坦B-模\\
\end{aligned}
$
## 代数及其张量积
$
\begin{aligned}
&
\end{aligned}
$