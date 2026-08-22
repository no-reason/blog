# 从CRT到Jordan-Chevalley定理谈线性空间直和分解的若干应用


## 前言

笔者在最近的学习中发现,CRT可以作为一个很好的工具在很多高等代数题目中使用.

而其一个非常经典的应用便是证明线性空间的互素核空间分解定理

由此我们可以直接得出在很多题目中更为常见的根子空间直和分解

根子空间的直和分解从算子角度理解其实就是做幂等投影，从矩阵角度理解其实就是构造分块对角阵

利用幂等投影的观点，其实我们就可以对问题做分治，将大问题转化为每个投影得到的子空间中的小问题，而这恰好就是证明向量最小多项式=矩阵最小多项式的经典入手想法

同时，在根子空间直和分解的基础上，我们进一步利用CRT定理，即可得到大名鼎鼎的Jordan-chevalley分解定理(半单分解定理)

本文将按照以下顺序，对上述问题进行讨论

- 线性空间的互素核空间分解定理
- 根子空间的直和分解
- **直和分解**、**幂等投影**、**分块矩阵**
- 向量的最小多项式与矩阵的最小多项式
- **Jordan-Chevalley定理**


## 线性空间的互素核空间分解定理

$
\begin{aligned}
&设V是一线性空间\\
&设p_1,p_2,\cdots ,p_{t}为两两互素多项式\\
&A为一V-线性变换\\
&p_1p_2\cdots p_{t}(A)=0\\
&则:\\
&V=kerp_1(A)\oplus ker p_2(A)\oplus \cdots \oplus ker p_{t}(A) \\
&\\
&证明:\\
&\\
&本命题最经典的证明是借助Bezout定理逐步归纳完成\\
&下面我们给出直接使用CRT不依赖归纳的证明\\
&\\
&由p_1,p_2,\cdots p_{t}为两两互素的多项式\\
&故由CRT可知\\
&\exists f_{i}s.t. \\
&\begin{cases}
&f_{i}\equiv 1\pmod p_{i}\\
&f_{i}\equiv 0\pmod p_{j},\forall j\ne i
&\end{cases}\\
&设W_{i}=Im f_{i}(A)\\
&下面证明W_{i}=Ker p_{i}(A)\\\\
&一方面\forall x\in Ker p_{i}(A)\\
&p_{i}(A)x=0\\
&又由f_{i}\equiv 1\pmod p_{i}\\
&\Rightarrow f_{i}=qp_{i}+1\\
&\Rightarrow f_{i}(A)=q(A)p_{i}(A)+E\\
&\Rightarrow f_{i}(A)x=q(A)p_{i}(A)x+Ex\\
&\Rightarrow x=f_{i}(A)x\\
&\Rightarrow x\in Im f_{i}(A)\\
&\\
&另一方面\forall x\in Im f_{i}(A)\\
&\exists y,s.t. x=f_{i}(A)y\\
&p_{i}(A)x=p_{i}(A)f_{i}(A)y\\
&又由f_{i}\equiv 0\pmod p_{j}\forall j\ne i\\
&\Rightarrow\prod _{j\ne i}p_{j}\mid f_{i}\\
&\Rightarrow \prod _{i=1}^{t}p_{i}\mid p_{i}f_{i}\\
&\Rightarrow p_{i}(A)f_{i}(A)=0\\
&\Rightarrow p_{i}(A)x=0,即\\
&x\in ker p_{i}(A)\\
&故知W_{i}=Im f_{i}(A)=Ker p_{i}(A)\\
&\\\\
&下面我们证明V=\oplus W_{i}\\
&我们首先证明\\
&\forall x\in V,x=\sum f_{i}(A)x\\
&考虑f_1+f_2+\cdots +f_{t}\equiv 1\pmod {p_{i}},\forall 1\leq i\leq n\\
&故知f_1+\cdots +f_{t}=q(\prod _{i=1}^{t}p_{i})+1\\
&\Rightarrow \\
&f_1(A)+\cdots +f_{t}(A)=q(A)(\prod _{i=1}^{t}p_{i})(A)+E\\
&\Rightarrow \\
&f_1(A)+\cdots +f_{t}(A)=E\\
&\Rightarrow \\
&\forall x\in V\\
&x=f_1(A)x+\cdots +f_{t}(A)x\\
&故知x=\sum f_{i}(x)\\
&\\\\
&我们下面证明若w_1+\cdots +w_{t}=0\\
&则w_1=\cdots =w_{t}=0\\
&此处的证明其实涉及到后文会提及的CRT与幂等投影的概念\\
&事实上\\
&f_{i}^{2}\equiv f_{i}\forall p_{j},1\leq j\leq t\\
&这说明\prod _{i=1}^{t}p_{i}\mid f_{i}^{2}-f_{i}\\
&\Rightarrow f_{i}^{2}-f_{i}=q(\prod _{i=1}^{t}p_{i})\\
&\Rightarrow \\
&f_{i}^{2}(A)-f_{i}(A)=q(A)(\prod _{i=1}^{t}p_{i}(A))=0\\
&\Rightarrow (f_{i}(A))^{2}=f_{i}(A)\\
&(事实上我们就证明了按照上述CRT方法构造出来的f_{i}(A)事实上是一个幂等投影)\\
&那么对于f_1(A)x_1+\cdots +f_{t}(A)x_{t}=0\\
&我们对左右两边同时作用f_{i}(A)\\
&即有f_{i}(A)^{2}x_{i}=0\\
&\Rightarrow f_{i}(A)x_{i}=0\\
&故知w_1=\cdots =w_{t}=0\\
&\\\\
&综上可知V=\oplus Im f_{i}(A)=\oplus ker p_{i}(A)\\
&\\
&故知上述核空间分解定理成立\\
&
\end{aligned}
$


## 根子空间的直和分解

$
\begin{aligned}
&上文所提及的互素核空间分解定理最常见的应用\\
&便是直接对于某一线性变换的零花多项式做因式分解\\
&从而得到根子空间直和分解\\
&i.e. \\
\\\\
&设m(x)=\prod _{i=1}^{t}(x-\lambda _{i})^{n_{i}}\\
&满足m(A)=0\\
&则\\
&V=\oplus ker (A-\lambda _{i}E)^{n_{i}}\\
&\\
&证明由上文互素核空间分解定理即可得到\\
&本文暂略\\
\end{aligned}
$


## **直和分解**、**幂等投影**、**分块矩阵**

$
\begin{aligned}
&在互素核空间分解定理的证明中\\
&我们其实就谈到直接使用CRT构造f_{i}的方法\\
&其实所构造出来的f_{i}(A)就是一个幂等投影\\
&而且\forall i\ne j,Im f_{i}(A)\cap Im f_{j}(A)=\{0\}\\
&下面我们来更详细的讨论直和分解、幂等投影和分块矩阵这三个概念之间的联系\\
&\\\\
\end{aligned}
$
### 直和分解$\iff $ 幂等投影


$
\begin{aligned}
&直和分解\Rightarrow 幂等投影:\\
&\\
&设V是一个线性空间\\
&其满足直和分解V=W_1\oplus W_2\oplus \cdots \oplus W_{t}\\
&\\
&则\forall x\in V\\
&\exists x_{i}\in W_{i},s.t. \\
&x=x_1+x_2+\cdots +x_{t}\\
&定义映射:\\
&P_{i}:V\to V=W_{i}\\
&x\mapsto x_{i}\\
&则显然有\\
&P_{i}^{2}=P_{i}\\
&P_{i}P_{j} =0,\forall i\ne j\\
&\sum _{i=1}^{t}P_{i}=E\\
&\\
&因此我们就将直和分解转化为了一族两两正交的幂等投影\\
&\\\\
&幂等投影\Rightarrow 直和分解:\\
&设P_{i}: V\to V为线性算子\\
&满足P_{i}^{2}=P_{i}\\
&P_{i}P_{j}=0,\forall i\ne j\\
&\sum _{i=1}^{t}P_{i}=E\\
&\\
&令W_{i}=Im P_{i}\\
&下面我们证明V=\oplus W_{i}\\
&\forall x\in V\\
&由\sum _{i=1}^{t}P_{i}=E\\
&可知\\
&x=\sum _{i=1}^{t}P_{i}x\\
&设\sum _{i=1}^{t}P_{i}x_{i}=0\\
&等号两边同时作用P_{j}\\
&\Rightarrow P_{j}^{2}x_{j}=0\\
&\Rightarrow P_{j}x_{j}=0\\
&故知\forall j, P_{j}x_{j}=0\\
&故知V=\oplus W_{i}\\
&因此我们也将上述一族幂等投影转化成了直和分解\\
\end{aligned}
$


### 直和分解、幂等投影和分块表示

$
\begin{aligned}
&设V=W_1\oplus W_2\oplus \cdots \oplus W_{t}\\
&分别选择\mathcal B_{i}=\{e_{i1},\cdots ,e_{in_{i}}\}为W_{i}的基\\
&则在该基下\\
&P_{i}=\begin{bmatrix}
0\\
&\ddots\\
&&I_{n_{i}}\\
&&&\ddots\\    
&&&&0\\
\end{bmatrix}\\
&\\
&同样的,有了上述矩阵,我们自然也就得到了上述一族幂等变换\\
&\\
\end{aligned}
$

### 对于某线性变换的分块与投影

$
\begin{aligned}
&下面我们更进一步讨论\\
&对于一个给定的V的直和分解\\
&V=W_1\oplus W_2\oplus \cdots \oplus W_{t}\\
&和一个给定的线性变换A\\
&何时上述直和分解为A给出了一个分块对角表示\\
&\\
&那么所需要附加的条件通常是W_{i}是A-不变子空间\\
&若W_{i}是不变子空间那么我们可以很自然的在上述基下\\
&考虑A的像自然可得A在该组基下为分块对角阵\\
&\\\\
&更进一步的\\
&事实上我们有下述结论\\
&W_{i}是A-不变子空间\Leftarrow P_{i}A=AP_{i}\\
&一方面\\
&由于W_{i}事实上是P_{i}的1-特征子空间\\
&故由往期blog中的交换子相关理论\\
&若P_{i}A=AP_{i},则W_{i}一定是A -不变子空间\\
&
\end{aligned}
$


## 向量的最小多项式与矩阵的最小多项式定理


$
\begin{aligned}
&下面我们来利用直和分解解决一个经典问题\\
&设V是一个线性空间\\
&A是V上的线性变换\\
&m_{A}(x)为A的最小多项式\\
&证明:\\
&\exists v\in V\\
&s.t. m_{A}(x)为v的最小多项式\\
&\\\\
&本题是根子空间直和分解的一个经典应用\\
&其基本的想法便是使用分治思想进行以简驭繁\\
&\\
&设m_{A}(x)=\prod _{i=1}^{t}(x-\lambda _{i})^{n_{i}}\\
&则由根子空间直和分解定理可知\\
&V=\oplus ker (A-\lambda _{i}E)^{n_{i}}\\
&\\
&下面我们证明\\
&\forall 1\leq i\leq t\\
&\exists v_{i}\in ker (A-\lambda _{i}E) ^{n_{i}}\\
&s.t. v_{i}的最小多项式为(x-\lambda _{i})^{n_{i}}\\
&将A局限在ker (A-\lambda _{i}E)^{n_{i}}上考虑\\
&设为A_{i}\\
&则A_{i}的最小多项式为(x-\lambda _{i})^{n_{i}}\\
&下面证明\forall v\in ker (A-\lambda _{i}E)^{n_{i}}\\
&v的最小多项式一定形如(x-\lambda _{i})^{k},1\leq k\leq n_{i}\\
&\\
&上述结论显然成立\\
&否则我们可以利用(x-\lambda _{i})^{n_{i}}一定是v的零化多项式\\
&进行带余除法得到矛盾\\
&\\
&因此我们考虑ker(A-\lambda _{i}E)^{n_{i}}上的一组基v_{ij}\\
&设m_{i}为v_{ij}中k最大的最小多项式\\
&若m_{i}=(x-\lambda _{i})^{k}\\
&其中k<n_{i}\\
&则\forall j,由m_{i}v_{ij}零化v_{ij}可知\\
&(x-\lambda _{i})^{k}为A_{i}的零化多项式\\
&这与(x-\lambda _{i})^{n_{i}}为A_{i}的最小多项式矛盾\\
&故知\forall i\\
&\exists v_{i}\in ker (A-\lambda _{i}E)^{n_{i}}\\
&s.t. v_{i}的最小多项式为(x-\lambda _{i})^{n_{i}}\\
&\\
&下面我们证明v=v_1+\cdots +v_{t}的最小多项式为m_{A}(x)\\
&由于ker(A-\lambda _{i}E)^{n_{i}}是A-不变子空间\\
&故知\forall 多项式f\\
&f(A)v_{i}\in ker(A-\lambda _{i}E)^{n_{i}}\\
&故知f(A)(v_1+\cdots +v_{t})=0\iff f(A)v_{i}=0,\forall i\\
&故知(x-\lambda _{i})^{n_{i}}|f(x)\\
&\Rightarrow \\
&m_{A}(x)|f(x)\\
&故知v_1+\cdots +v_{t}的最小多项式为m_{A}(x)\\
&\\\\
\end{aligned}
$

## Jordan-Chevalley定理(半单分解定理)

$
\begin{aligned}
&下面我们将利用根子空间直和分解和CRT作为工具\\
&来证明Jordan-Chevalley定理\\
&\\\\
&Jordan-Chevalley定理:\\
&设V是一个C上的线性空间\\
&A是V上的线性变换\\
&那么存在唯一的两个线性变换S和N\\
&s.t .\\
&A=S+N\\
&其中S是半单变换\\
&N是幂零变换 \\
&且SN=NS\\
&并且S和N均可以表示为A的多项式\\
&\\
&\\\\
&证明:\\
&我们直接利用CRT对S的A-多项式表示给出直接构造\\
&设A的最小多项式m_{A}(x)=\prod _{i=1}^{t}(x-\lambda _{i})^{n_{i}}\\
&设p_{i}=(x-\lambda _{i})^{n_{i}}\\
&则由CRT可知\\
&\exists p\in C[x],s.t. \\
&p\equiv \lambda _{i}\pmod {p_{i}},\forall 1\leq i\leq n\\
&我们下面证明p(A)为半单变换\\
&\\
&由于p(A)是A的多项式\\
&故知ker(p_{i}(A))均为p(A)-不变子空间\\
&故知我们可以直接进行分治\\
&只需考虑p(A)在每个kerp_{i}(A)上的限制\\
&\forall x\in kerp_i(A)\\
&p(x)=q(x)p_{i}(x)+\lambda _{i}\\
&\Rightarrow \\
&p(A)=q(A)p_{i}(A)+\lambda _{i}E\\
&从而有\\
&p(A)x=q(A)p_{i}(A)x+\lambda _{i }x\\
&\Rightarrow \\
&p(A)x=\lambda _{i}x\\
&故知p(A)|_{kerp_{i}(A)}=\lambda _{i}E\\
&故知\\
&可选取适当的基使得\\
&p(A)=\begin{bmatrix}
\lambda _{1}E\\
&\lambda _{2}E\\
&&\ddots\\ 
&&&\lambda _{t}E\\ 
\end{bmatrix}\\
&故知p(A)确为半单变换\\
&\\\\
&令N=A-p(A)\\
&则\forall A的特征值\lambda _{i}\\
&有N的特征值为\lambda_{i} -p(\lambda_{i} )\\
&由于p\equiv \lambda _{i}\pmod {p_{i}}\\
&\Rightarrow \\
&p=qp_{i}+\lambda _{i}\\
&\Rightarrow \\
&p(\lambda _{i})=q(\lambda _{i})p_{i}(\lambda _{i})+\lambda _{i}=\lambda _{i}\\
&\Rightarrow \\
&p(\lambda _{i})=\lambda _{i}\\
&\\
&\Rightarrow \\
&N的所有特征值均为0\\
&故知N是幂零矩阵\\
&\\
&由S,N都是A的多项式可知\\
&显然有SN=NS\\
&\\\\
&下面我们考虑证明唯一性\\
&\\\\
&反证:\\
&设\exists S_1,N_1,S_2,N_2满足上述条件\\
&且S_1\ne S_2,N_1\ne N_2\\
&\\
&显而易见如果我们直接入手分析是苦难的\\
&但由NS=SN可知AS=SA,NA=AN\\
&因此我们可以再次在A的每个根子空间上对问题进行研究\\
&考虑如果是在ker p_{i}(A)上知道一直条件我们能否给出唯一性证明\\
&\\
&一个自然的发现是\\
&如果我们证明了S_1=S_2,那么自然就会有N_1=N_2\\
&\\
&因此这里我们首先将目标集中到证明S_1=S_2上\\
&由于S_1是半单变换\\
&因此我们可以对kerp_{i}(A)进一步关于S_1的特征子空间做直和分解\\
&对于S_1的每个特征子空间V_{\mu}\\
&有A=\mu E+N_{1}\\
&又考虑到在Kerp_{i}(A)上研究A\\
&有A-\lambda _{i}必为幂零阵\\
&故知(\mu -\lambda _{i})E+N_{1}为幂零阵\\
&\Rightarrow \mu =\lambda _{i}\\
&故知在该空间kerp_{i}(A)上S_1必为\lambda _{i}E\\
&因此S_{1}|_{kerp_{i}(A)}=\lambda _{i}E=S_{2}\\
&由ker_{i}(A)的任意性可知\\
&S_{1}=S_{2}\\
&故知N_{1}=N_{2}\\
&故知Jordan-Chevalley分解的任意性得证\\
\end{aligned}
$