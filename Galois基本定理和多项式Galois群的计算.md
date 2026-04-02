# Galois基本定理和多项式Galois群的计算
## 前言
在之前的文章中,我们曾经介绍了二次和三次多项式Galois群的计算方法。在本文中我们着重讨论四次多项式Galois群的计算方法，为了讨论清楚这个问题，我们将首先介绍Galois基本定理,并根据Galois基本定理引出四次多项式的预解式。从而解决四次多项式的Galois群计算问题。并在文章的最后解决今年（2025）年丘成桐大学生数学竞赛的P1.
## Galois 基本定理
$
\begin{aligned}
&Galois基本定理反映的是\\
&Galois群的子群和域扩张的子域之间的一一对应关系\\
&具体而言,是下面两大基本定理:\\
&(Galois 第一基本定理):\\
&设E/F是Galois扩张\\
&记G=G(E/F)是(E/F的Galois群)\\
&则E/F的中间域K(F\subseteq K\subseteq E)\\
&和G的子群H(H\leq G)之间存在一一对应\\
&i.e. \\
&K\to H=G(E/K)\\
&H\to K=E^H\\
&\\
&且该一一对应满足包含关系反转的性质:\\
&\\
&i.e. ~若K_1\subseteq K_2,则Gal(E/K_2)\subseteq Gal(E/K_1)\\
&并且满足如下次数对应关系\\
&[E:K]=|Gal(E/K)|\\
&[E:F]=|G:Gal(E/K)|\\
&\\\\
&(Galois 第二基本定理:)\\
&在Galois第一基本定理的一一对应中\\
&中间域的正规性与子群的正规性等价\\
&\\\\
&由于可分扩张的子扩张仍然可分\\
&故上述定理也可改写成下面的形式:\\
&中间扩张的Galois性与子群的正规性等价\\
\end{aligned}
$
## 四次多项式Galois群的计算
$
\begin{aligned}
&想要求解四次多项式的Galois群\\
&一个自然的想法就是\\
&我们能否通过Galois基本定理\\
&构造一个中间域\\
&使得命题简化到三次的情况\\
&这样的思想便是构造预解式思想的由来\\
&\\\\
&一种常见的预解式构造方法如下:\\
&b_1=a_1a_2+a_3a_4\\
&b_2=a_1a_3+a_2a_4\\
&b_3=a_1a_4+a_2a_3\\
&则F\subseteq F(b_1,b_2,b_3)\subseteq E\\
&而构造该中间域的重要原因在于\\
&令b_1,b_2,b_3保持固定的最大子群是K_4\\
&下面我们进行验证:\\
&S_4中的元素共可分为如下五种:\\
&1.单位元(1)\\
&2.单对换(1~2)\\
&3. 双对换(1~2)(3~4)\\
&4. 三阶元(1~2~3)\\
&5.(1~2~3~4)\\
&\\
&而K_4的元素有:\\
&(1),(1~2)(3~4),(1~3)(2~4),(1~4)(2~3)\\
&易于发现\\
&K_4确为保持b_1,b_2,b_3固定的S_4的最大子群\\
&\\\\
&则根据Galois基本定理\\
&我们有E/F(b_1,b_2,b_3)\leftrightarrow G(E/F)\cap K_4\\
&而我们可以通过已经掌握的求三次多项式Galois群的方法\\
&求解(x-b_1)(x-b_2)(x-b_3)的Galois群H\\
&则有H\cong G/(G(E/F)\cap K_4)\\
&经过讨论我们可得下述结果:\\
&G\cong S_4\iff g(x)不可约且g(x)在F上的Galois群\cong S_3\\
&G\cong A_4\iff g(x)可约且g(x)在F上的Galois群\cong A_3\\
&G\cong K_4\iff g(x)在F上分裂\\
&对于G\cong D_4和C_4的情形\\
&我们发现G/(G(E/F)  \cap K_4)=Z/2Z\\
&无法对G的结构进行进一步的确定\\
&\\\\
&一种常用的区别G的结构究竟是C_4还是D_4的方法是:\\
&考虑f(x)是否在F(b_1,b_2,b_3)上可约\\
&\\
&若f(x)在F(b_1,b_2,b_3)上可约,则G\cong C_4\\
&否则G\cong D_4\\
&\\
&证明:\\
&当G\cong C_4时\\
&C_4=(1,\sigma ,\sigma ^2,\sigma ^3)\\
&其中\sigma =(1~2~3~4)\\
&K_4=(1),(1~2)(3~4),(1~3)(2~4),(1~4)(2~3)\\
&则C_4\cap K_4=((1),(1~3)(2~4))=((1),\sigma ^2)\\
&故知((1),\sigma ^2)是F(b_1,b_2,b_3)的Galois 群\\
&\\
&由Galois基本定理可知\\
&F(b_1,b_2,b_3)=E^{((1),\sigma ^2)}\\
&i.e. F(b_1,b_2,b_3)=E^{\sigma ^2}\\
&i.e. F(b_1,b_2,b_3)是\sigma ^2的固定域\\
&又由于\alpha _1+\alpha _3,\alpha _2,\alpha _4 \in E\\
&且\alpha _1+\alpha _3,\alpha _2+\alpha _4在\sigma ^2作用下保持不动\\
&\\
&故知\alpha _1+\alpha _3,\alpha _2+\alpha _4 \in F(b_1,b_2,b_3)\\
&同理有\alpha _1\alpha _3,\alpha _2\alpha _4\in F(b_1,b_2,b_3)\\
&f(x)=(x-\alpha _1)(x-\alpha _2)(x-\alpha _3)(x-\alpha _4)\\
&=(x-\alpha _1)(x-\alpha _3)(x-\alpha _2)(x-\alpha _4)\\
&而由上述讨论可知\\
&(x-\alpha _1)(x-\alpha _3)和(x-\alpha _2)(x-\alpha _4)\in F(b_1,b_2,b_3)\\
&故知f(x)在F(b_1,b_2,b_3)上可约\\
&\\
&当G\cong D_4时\\
&反证:若f(x)可约\\
&则f(x)=(x^2+ax+b)(x^2+cx+d)\\
&f(x)在F(b_1,b_2,b_3)上可约\\
&
\end{aligned}
$