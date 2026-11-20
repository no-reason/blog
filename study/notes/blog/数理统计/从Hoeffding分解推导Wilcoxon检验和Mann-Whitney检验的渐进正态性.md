# 从Hoeffding分解推导Wilcoxon秩和检验和Mann-Whitney检验的渐进正态性

## 前言

本文将讨论如何Wilcoxon检验和Mann-Whitney检验之间的关系，并且讨论利用Hoeffding分解给出这两种检验的渐进正态性的证明。


## Wilcoxon秩和检验和Mann-Whitney检验


$
\begin{aligned}
&Wilcoxon秩和检验和Mann-Whitney检验是非参数检验中的经典方法\\
&他们的目标都是在不提出参数假设的前提下\\
&比较两组数据是否存在系统性差异\\
&\\
&\\
&i.e.\\
&设两组独立样本:\\
&X_{1},\cdots,X_{m}\overset{iid}\sim F\\
&Y_{1},\cdots,Y_{n}\overset{iid}\sim G\\
&原假设H_{0}:F=G\\
&备择假设H_{1}:F\neq G\\
&\\
&而Wilcoxon秩和检验是从秩的角度来构造统计量\\
&(这里所谓的秩本质上就是次序)\\
&将m+n个数据一起排序,记X_{i}的秩为R_{i}\\
&(也就是说X_{i}在m+n个数据中排第R_{i}位)\\
&构造W=\sum_{i=1}^{m}R_{i}\\
&即为Wilcoxon秩和检验的统计量\\
&\\\\
&Mann-Whitney检验则是从两两比较的角度构造统计量\\
&\\
&构造U=\sum_{i=1}^{m}\sum_{j=1}^{n}I(X_{i}>Y_{j})\\
&即为Mann-Whitney检验的统计量\\
&\\
\end{aligned}
$

### Wilcoxon秩和检验和Mann-Whitney检验的等价关系

$
\begin{aligned}
&事实上\\
&我们有W=U+\frac{m(m+1)}{2}\\
&\\
&这个结论是显然的\\
&我们只需要将每个R_{i}从内部贡献和外部贡献两个角度来考虑\\
&即可知W=U+\frac{m(m+1)}{2}\\
&\\\\
\end{aligned}
$


## Hoeffding分解

$
\begin{aligned}
&Hoeffding分解通常用来处理二元统计量的渐进分布问题\\
&\\
&其经典的应用场景如下:\\
&设有两组独立样本X_{1},\cdots ,X_{m}\overset{iid}\sim F\\
&Y_{1},\cdots ,Y_{n}\overset{iid}\sim G\\
&\\
&考虑统计量T_{m,n}=\frac{1}{mn}\sum_{i=1}^{m}\sum_{j=1}^{n}h(X_i,Y_j)\\
&其中h(x,y)是给定的二元函数(通常被称为核函数)\\
&\\
&这是倘若我们想讨论T_{m,n}的渐进分布\\
&\\
&一个非常重要的难点就在于\\
&虽然X_{i}和Y_{j}是独立的\\
&但是h(X_{i},Y_{j})和h(X_{i},Y_{j'})却可能相关\\
&(因为同时包含X_{i})\\
&\\
&因此我们没有办法直接套用n个独立变量的CLT进行渐进分析\\
&\\
&而所谓的Hoeffding分解就是设法将T_{m,n}分解为独立部分+余项（相关部分）\\
&\\
&\\
\end{aligned}
$

### Hoeffding分解的具体构造方式及其正交性

$
\begin{aligned}
&Hoeffding分解并不是一个抽象的方法\\
&而是一种基于条件期望的通用构造方法\\
&\\
&定义h_{1}(x)=E[h(x,Y)]-\theta\\
&h_{2}(y)=E[h(X,y)]-\theta\\
&r(x,y)=h(x,y)-\theta-h_{1}(x)-h_{2}(y)\\
&其中\theta=E[h(X,Y)]\\
&\\
&也就有恒等式:\\
&h(x,y)=\theta+h_{1}(x)+h_{2}(y)+r(x,y)\\
&\\
&\\
&Hoeffding分解的上述构造可以满足几个很好的性质\\
&便于我们后续进行渐进分析:\\
&1.Cov(h_{1},r(x,y))=Cov(h_{2},r(x,y))=0\\
&2.Cov(r(X_{i},Y_{j}),r(X_{i'},Y_{j'}))=0((i,j)\ne (i',j'))\\
&\\
&下面我们证明上述两条性质:\\
&1.之prove\\
&我们只需证明E[h_{1}(X)r(X,Y)]=0\\
&而E[h_{1}(X)r(X,Y)]=E[h_{1}(X)E[r(X,Y)|X]]\\
&而E[r(X,Y)|X]=E[h(X,Y)|X]-\theta-h_{1}(X)-E[h_{2}(Y)|X]\\
&而由于Y,X独立可知\\
&E[h_{2}(Y)|X]=E[h_{2}(Y)]=0\\
&而E[h(X,Y)|X]=E[h(X,Y)|X=x]=E[h(x,Y)]=\theta+h_{1}(x)\\
&因此E[r(X,Y)|X]=0\\
&\\
&故知E[h_{1}(X)r(X,Y)]=0\\
&同理可知E[h_{2}(Y)r(X,Y)]=0\\
&故知h_{1}(X)和r(X,Y)不相关,h_{2}(Y)和r(X,Y)不相关\\
&\\
&2.之prove\\
&\\
&记r_{ij}=r(X_{i},Y_{j})\\
&\\
&考虑Cov(r_{ij},r_{kl})\\
&若i\ne k,j\ne l\\
&则由于X_{i},X_{k},Y_{j},Y_{l}相互独立\\
&则r_{ij}和r_{kl}相互独立\\
&\\
&故知Cov(r_{ij},r_{kl})=0\\
&故知只需证明\\
&Cov(r_{ij},r_{il})=0\\
&\\
&这只需证明E[r_{ij}r_{il}]=0\\
&考虑对X_{i}取条件期望\\
&E[r_{ij}r_{il}]=E[E[r_{ij}r_{il}|X_{i}]]\\
&当X_{i}固定时,r_{ij}和r_{il}相互独立\\
&\\
&故E[r_{ij}r_{il}|X_{i}]=E[r_{ij}|X_{i}]E[r_{il}|X_{i}]=0\\
&\\
&故知得证\\
&\\
&
\end{aligned}
$

### Hoeffding分解的渐进正态性

$
\begin{aligned}
&下面我们利用上文的Hoeffding分解来证明原二元统计量的渐进正态性\\
&i.e.\\
&下面证明:\\
&\lim_{m,n\to \infty}\frac{T_{m,n}-\theta}{\sqrt{Var(T_{m,n})}}\overset{d}\to N(0,1)\\
&\\
&考虑到T_{m,n}=\theta+\frac{1}{m}\sum_{i=1}^{m}h_{1}(X_{i})+\frac{1}{n}\sum_{j=1}^{n}h_{2}(Y_{j})+\frac{1}{mn}\sum_{i=1}^{m}\sum_{j=1}^{n}r(X_{i},Y_{j})\\
&记\sum\frac{1}{m}h_{1}(X_{i})+\frac{1}{n}h_{2}(Y_{j})=H\\
&\frac{1}{mn}\sum_{i=1}^{m}\sum_{j=1}^{n}r(X_{i},Y_{j})=R\\
&\\
&则下面只需证明\\
&\lim_{m,n\to \infty}\frac{H+R}{\sqrt{Var{T_{m,n}}}}\overset{d}\to N(0,1)\\
&\\
&下面考虑证明\\
&\frac{H}{\sqrt{VarT_{m,n}}}\overset{d}\to N(0,1)\\
&\frac{R}{\sqrt{VarT_{m,n}}}\overset{p}\to 0\\
&\\
&\\
&由上文正交性讨论可知\\
&VarT_{m,n}=VarH+VarR\\
&VarH=Var(\frac{1}{m}\sum_{i=1}^{m}h_{1}(X_{i})+\frac{1}{n}\sum_{j=1}^{n}h_{2}(Y_{j}))\\
&=Var(\frac{1}{m}\sum_{i=1}^{m}h_{1}(X_{i}))+Var(\frac{1}{n}\sum_{j=1}^{n}h_{2}(Y_{j}))\\
&=\frac{Varh_{1}(X)}{m}+\frac{Varh_{2}(Y)}{n}\\
&VarR=Var(\frac{1}{mn}\sum_{i=1}^{m}\sum_{j=1}^{n}r(X_{i},Y_{j}))\\
&=\frac{1}{m^2n^2}\sum_{i=1}^{m}\sum_{j=1}^{n}Var(r(X_{i},Y_{j}))\\
&=\frac{Var(r(X,Y))}{mn}\\
&\\
&\Rightarrow \\
&Var T_{m,n}=\frac{Varh_{1}(X)}{m}+\frac{Varh_{2}(Y)}{n}+\frac{Var(r(X,Y))}{mn}\\
&\\
&下面首先证明:\\
&\lim_{m,n\to \infty}\frac{H}{\sqrt{VarT_{m,n}}}\overset{d}{\to }N(0,1)\\
&显然有\frac{VarH}{VarT_{m,n}}\overset{a.s.}{\to }1\\
&因此有\frac{VarH}{VarT_{m,n}}\overset{p}{\to }1\\
&故由Slutsky定理\\
&\lim_{m,n\to \infty}\frac{H}{\sqrt{VarT_{m,n}}}=\lim_{m,n\to \infty}\frac{H}{\sqrt{VarH}}\sqrt{\frac{VarH}{VarT_{m,n}}}\overset{d}{\to }N(0,1)\\
&\\
&下面证明:\\
&\lim_{m,n\to \infty} \frac{R}{\sqrt{T_{m,n}}}\overset{p}{\to }0\\
&\\
&由Chebyshev不等式\\
&我们只需证明Var\frac{R}{\sqrt{T_{m,n}}}=\frac{VarR}{VarT_{m,n}}\to 0\\
&RHS=\frac{VarR/mn}{Varh_{1}(X)/m+Varh_{2}(Y)/n+VarR/mn}\\
&=\frac{VarR}{nVarh_{1}(X)+mVarh_{2}(Y)+VarR}\overset{a.s.}{\to }0\\
&故知Var\frac{R}{\sqrt{T_{m,n}}}\overset{p}{\to }0\\
&故由Slutsky定理可知\\
&\frac{T_{m,n}-\theta}{\sqrt{T_{m,n}}}\to N(0,1)\\
&\\
&至此，我们已经完成了Hoeffding分解渐进正态性的证明\\
\end{aligned}
$

## Wilcoxon秩和检验和Mann-Whitney检验的渐进正态性

$
\begin{aligned}
&下面我们来证明Wilcoxon秩和检验和Mann-Whitney检验满足渐近正态性\\
&\\
&由于Wilcoxon秩和检验和Mann-Whitney检验的对应统计量是等价的(相差一个常数)\\
&因此我们对其中任意一个证明渐进正态性即可\\
&\\
&为了与Hoeffding分解的标准形式对齐\\
&我们下面选取Mann-Whitney检验证明其满足渐进正态性\\
&\\
&则h(x,y)=I(x>y)\\
&由上述分析我们只需计算T_{m,n}=\sum_{i=1}^{m}\sum_{j=1}^{n}I_{X_{i}>Y_{j}}的期望和方差即可\\
&\\
&ET_{m,n}=\sum_{i=1}^{m}\sum_{j=1}^{n}P(X_{i}>Y_{j})\\
&=\frac{mn}{2}\\
&\\
&VarT_{m,n}=Var(\sum_{i=1}^{m}\sum_{j=1}^{n}I(X_{i}>Y_{j}))\\
&=\sum_{i=1}^{m}\sum_{j=1}^{n}Var(I(X_{i}>Y_{j}))+\sum_{(i_{1},j_{1})\ne (i_{2},j_{2})}Cov (I(X_{i_{1}}>Y_{j_{1}}),I(X_{i_{2}}>Y_{j_{2}}))\\
&而Var(I(X_{i}>Y_{j}))=EI(X_{i}>Y_{j})-(EI(X_{i}>Y_{j}))^{2}=P(X>Y)-P^{2}(X>Y)=\frac{1}{4}\\
&\sum_{(i_{1},j_{1})\ne (i_{2},j_{2})}Cov (I(X_{i_{1}}>Y_{j_{1}}),I(X_{i_{2}}>Y_{j_{2}}))\\
&=\sum_{i=1}^{m}\sum_{j_{1}\ne j_{2}}Cov(I(X_{i}>Y_{j_{1}}),I(X_{i}>Y_{j_{2}}))+\sum_{j=1}^{n}\sum_{i_{1}\ne i_{2}}Cov(I(X_{i_{1}}>Y_{j}),I(X_{i_{2}}>Y_{j}))+\sum_{i_{1}\ne j_{1},i_{2}\ne j_{2}}Cov(I(X_{i_{1}}>Y_{j_{1}},I(X_{i_2}>Y_{j_{2}})))\\
&\\
&Cov(I(X_{i}>Y_{j_{1}}),I(X_{i}>Y_{j_{2}}))=E[I(X_{i}>Y_{j_{1}})I(X_{i}>Y_{j_{2}})]-E[I(X_{i}>Y_{j_{1}})]E[I(X_{i}>Y_{j_{2}})]\\
&=\frac{1}{3}-\frac{1}{4}\\
&=\frac{1}{12}\\
&\\
&Cov(I(X_{i_{1}}>Y_{j_{1}}),I(X_{i_{2}}>Y_{j_{2}}))\\
&=EI(X_{i_{1}}>Y_{j_{1}})I(X_{i_{2}}>Y_{j_{2}})-EI(X_{i_{1}}>Y_{j_{1}})EI(X_{i_{2}}>Y_{j_{2}})\\
&=0\\
&故知VarT_{m,n}=(\frac{mn}{2}+\frac{mn(n-1)+nm(m-1)}{12})\\
&=mn(\frac{1}{4}+\frac{n+m-2}{12})\\
&=\frac{mn(m+n+1)}{12}\\
&\\
&因此有\\
&\frac{T_{m,n}-\frac{mn}{2}}{\sqrt{\frac{mn(m+n+1)}{12}}}\to N(0,1)\\
&\\
&\\
\end{aligned}
$