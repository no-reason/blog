# Atiyah-chapter1
本书中讨论的环默认为交换幺环
---
---
## 环与理想
### 理想和商环
$
\begin{aligned}
&理想:环A中的一个加法子群\mathfrak{a}叫做环A的一个理想,\\
&如果它具有性质A\mathfrak{a}\subset\mathfrak{a}\\
&\\\\
&A中乘法诱导出商群A/\mathfrak{a}中有惟一确定的乘法\\
&由此该商群也就称为了一个环,称为商环\\
\\\\
&Proposition1.1:在环A的包含\mathfrak{a}的那些理想\mathfrak{b}与环A/\mathfrak{a}的理想\overline{\mathfrak{b}}之间\\
&存在着保持包含关系的一一对应:\mathfrak{b}=\phi ^{-1}(\overline{\mathfrak{b}}).\\
&\\\\
&Proposition1.2:设A是一个非零环,则一下断言等价:\\
&i)A是域\\
&ii)在A中除了0和(1)外没有别的理想\\
&iii)任意从A映入非零环的同态都是单的.\\
&证明:\\
&i)\to ii):\\
&设\mathfrak{a}\ne 0是A的一个理想\\
&则\exists a\in A,s.t. a\in \mathfrak{a}\\
&又由域中的元素均是可逆元\\
&故知a^{-1}a\in \mathfrak{a}\\
&即1\in \mathfrak{a}\\
&故知\mathfrak{a}A\\
&\\
&ii)\to iii):\\
&设\phi :A\to B是一个环同态,\\
&则ker \phi 是A中的理想,且\phi \ne 0\\
&故知ker \phi =0\\
&故知\phi 是单射\\
&\\
&iii)\to i):\\
&设x\in A且不可逆\\
&则(x)\ne (1)(由于1一定不在x生成的理想中出现)\\
&故知B=A/(x)不是零环.\\
&令\phi :A\to B是以(x)为核的自然同态\\
&由iii)可知\phi 是单射\\
&故知ker \phi =0,即x=0\\
&\\\\
\end{aligned}
$
### 素理想和极大理想
$
\begin{aligned}
&素理想:环A中的理想\mathfrak{p}叫做素理想，\\
&若(\mathfrak{p}\ne (1))且若xy\in \mathfrak{p}则有x\in \mathfrak{p}或y\in \mathfrak{p}\\
&\\
&极大理想:环A中的理想\mathfrak{m}叫做极大理想,\\
&如果\mathfrak{m}\ne (1),而且不存在理想\mathfrak{a}s.t. \mathfrak{m}\subset\mathfrak{a}\subset(1)\\
&\\\\
&我们也可以使用下述结论来进行判断:\\
&i)\mathfrak{p}是素理想\iff A/\mathfrak{p}是整环\\
&ii)\mathfrak{m}是极大理想\iff A/\mathfrak{m}是域\\
&证明:\\
&i)\Rightarrow :\\
&\forall x+\mathfrak{p},y+\mathfrak{p}\in A/\mathfrak{p}\\
&(x+\mathfrak{p})(y+\mathfrak{p})=xy+\mathfrak{p}\in \mathfrak{p}\\
&\Rightarrow xy\in \mathfrak{p}\\
&又由\mathfrak{p}为素理想\\
&故知x\in \mathfrak{p}或y\in \mathfrak{p}\\
&即x+\mathfrak{p}=\mathfrak{p}或y+\mathfrak{p}=\mathfrak{p}\\
&即A/\mathfrak{p}没有非零零因子,故知A/\mathfrak{p}是整环\\
&\\
&\Leftarrow :\\
&\forall x,y,s.t. xy\in \mathfrak{p}\\
&(x+\mathfrak{p})(y+\mathfrak{p})=\mathfrak{p}\\
&故由A/\mathfrak{p}是整环可知\\
&x+\mathfrak{p}\in \mathfrak{p}或y+\mathfrak{p}\in \mathfrak{p}\\
&故知x\in \mathfrak{p}或y\in \mathfrak{p}\\
&故知i)成立\\
&\\\\
&ii):\\
&\Rightarrow :\\
&设x=a+\mathfrak{m} 其中a\notin \mathfrak{m}\\
&则考虑\mathfrak{b}=\mathfrak{m}+(a)\\
&故知\mathfrak{m}\subset \mathfrak{b}\\
&又有\mathfrak{m}是极大理想\\
&故知\mathfrak{b}=A\\
&由于\mathfrak{b}=A包含单位元1\\
&故知\exists m\in \mathfrak{m},和b\in A\\
&s.t. m+a\cdot b=1\\
&固有(a+\mathfrak{m})(b+\mathfrak{m})=1+\mathfrak{m}\\
&故知b+\mathfrak{m}是a+\mathfrak{m}的乘法逆元\\
&即有A/\mathfrak{m}是一个域\\
&\\
&\Leftarrow :\\
&我们考虑证明不存在\mathfrak{m}和A之间的理想\\
&设\exists \mathfrak{n}s.t. \mathfrak{m}\subset \mathfrak{n}\subset A\\
&由于m\subset n,故\mathfrak{n}/\mathfrak{m}也是A/\mathfrak{m}的一个理想\\
&由A/\mathfrak{m}是一个域,其只有（0）和(1)两个理想\\
&故知\mathfrak{n}/\mathfrak{m}=\{\mathfrak{m}\}\\
&或\mathfrak{n}/\mathfrak{m}=A/\mathfrak{m}\\
&上述两种情况分别说明n=\mathfrak{m}和n=A\\
&故知矛盾\\
&故知\mathfrak{m}一定是极大理想\\
\\
&环同态下理想的原像一定是理想\\
&证明:\\
&设f:A\to B是一环同态\\
&I是B的一个理想\\
&设J=f^{-1}(I)\\
&我们下面证明J是理想\\
&这只需证明J是满足吸收性的Abel子群\\
&由I是B的一个理想可知\\
&0_B\in I\\
&由于f是同态映射故知0_A\in J\\
&故知J非空\\
&\forall a,b\in J\\
&\exists f(a),f(b)\in I\\
&由I是子群故知f(a)+f(b)\in I\\
&由同态映射可知f(a)+f(b)=f(a+b)\in I\\
&故知a+b\in J\\
&下面验证J满足吸收性:\\
&\forall a\in A,j\in J\\
&只需证明aj\in J\\
&这只需证明\phi (a)\cdot \phi(j)\in I\\
& 由\phi (a)\in B,\phi (j)\in I是B的一个理想即知成立\\
&\\\\
&设f:A\to B是一个环同态,\\
&而\mathfrak{q}是B中的素理想,\\
&由A/f^{-1}(\mathfrak{q})与B/\mathfrak{q}的一个子环同构(环同态第一定理)\\
&故知A/f^{-1}(\mathfrak{q})不含非零零因子\\
&因此理想f^{-1}{\mathfrak{q}}是A中的素理想\\
&\\
&但上述结论对极大理想而言并不成立\\
&i.e. 若理想\mathfrak{n}是B中的一个极大理想\\
&那么f^{-1}(\mathfrak{n})不一定是A中的极大理想\\
&我们只能断定其为素理想\\
&例如反例:\\
&取A=Z,B=Qf:Z\to Q为包含映射\\
&B的极大理想为\mathfrak{n}=0(由于Q是域所以其极大理想为(0))\\
&则f^{-1}(n)=ker f=0,但0不是Z的极大理想(Z的极大理想是pZ)\\
\\
&若同态f为满同态,则极大理想的原像一定是极大理想\\
&设\mathfrak{n}是B的极大理想\\
&我们首先说明f^{-1}(\mathfrak{n})\ne A\\
&f(f^{-1}(\mathfrak{n}))=\mathfrak{n}(由于f是满射)\\
&若f^{-1}(\mathfrak{n})=A,\\
&则f(f^{-1}(\mathfrak{n}))=f(A)=B=\mathfrak{n}\\
&这与\mathfrak{n}\ne B矛盾\\
&故知f^{-1}(\mathfrak{n})\ne A\\
&\\
&设\mathfrak{m}是A的一个理想，\\
&s.t. f^{-1}(\mathfrak{n})\subset \mathfrak{m}\subset A\\
&且\mathfrak{m}\ne f^{-1}(\mathfrak{n})\\
&由于f是满同态,\mathfrak{m}是A的理想\\
&故f(\mathfrak{m})是B的理想\\
&由于f^{-1}(\mathfrak{n})\subset\mathfrak{m},\\
&故有f(f^{-1}(\mathfrak{n}))\subset f(\mathfrak{m})\\
&故知\mathfrak{n}\subset f(\mathfrak{m})\\
&由于\mathfrak{n}是B的极大理想\\
&故只可能f(\mathfrak{m})=\mathfrak{n}或\mathfrak{m}=B\\
&\\\\
&若f(\mathfrak{m})=\mathfrak{n}\\
&\forall a\in \mathfrak{m}\\
&f(a)\in f(\mathfrak{m})=\mathfrak{n}\\
&故知a\in f^{-1}(\mathfrak{n})\\
&故知\mathfrak{m}\subset f^{-1}(\mathfrak{n})\\
&但f^{-1}(\mathfrak{n})\subset \mathfrak{m}\\
&故知\mathfrak{m}=f^{-1}(\mathfrak{n})\\
&矛盾\\
&\\\\
&若f(\mathfrak{m})=B\\
&则\exists a\in ms.t. f(a)=1_B\\
&则有f(1-A_a)=f(1_A)-f(a)=1_B-1_B=0_B\\
&故知1-A_a\in ker f\\
&而ker (f)=f^{-1}(0_B)\\
&又有\mathfrak{n}是理想且\mathfrak{n}\ne B\\
&故知0_B\in \mathfrak{n}\\
&故知ker (f)\subset f^{-1}(\mathfrak{n})\subset \mathfrak{m}\\
&因此1_A-a\in ker(f)\subset \mathfrak{m}\\
&又a\in \mathfrak{m}\\
&故知a+(1_A-a)=1_A\in \mathfrak{m}\\
&故知\mathfrak{m}=A\\\\
&故知原命题成立\\\\\\
&Theorem1.3.每个\ne 0的环A中都有极大理想\\
&该定理的证明需要使用Zorn引理,\\
&这里暂且跳过\\
&\\\\
&Corollary1.4.若A中一个理想\mathfrak{a}\ne (1),\\
&则A中存在一个包含\mathfrak{a}的极大理想\\
&证明:由A中包含\mathfrak{a}的理想与A/\mathfrak{a}的理想之间存在保持包含关系的一一对应\\
&可知我们考虑A/\mathfrak{a}的极大理想在上述一一对应中的原像\\
&此即为包含\mathfrak{a}的极大理想\\
&(A\to A/a是满同态商映射,满足极大理想的原像也是极大理想)\\
&\\\\
&Corollary1.5.A中任一不可逆元素都包在某一极大理想中\\
&\forall x\in A,考虑x生成的理想(x)\\
&由于1\notin (x)故知(x)\ne A\\
&而由Corollary1.4,(x)必包含于某一极大理想中\\
&故知\exists M为A的一个极大理想\\
&s.t. x\in M\\
&\\\\
&局部环和同余类域:\\
&有惟一的一个极大理想\mathfrak{m}的环A叫做局部环,\\
&而域\mathfrak{k}=A/\mathfrak{m}叫做环A得同余类域\\
&\\\\
&Proposition1.6\\
&i)设A是一个环,\mathfrak{m}\ne (1)是A中的一个理想\\
&满足\forall x\in (A-\mathfrak{m})都是可逆元,\\
&那么A是局部环,\mathfrak{m}是它的极大理想\\
&仅有有限个极大理想的环叫作半局部环\\
&\\
&ii)设A是一个环,\mathfrak{m}是他的一个极大理想,\\
&且1+\mathfrak{m}中任一元素都是A中的可逆元,\\
&那么A是局部环\\
&\\\\
&证明:\\
&i)\\
&考虑到非平凡理想中一定不含可逆元\\
&(否则1一定在理想中,从而该理想=(1))\\
&故知若\mathfrak{m}不是极大理想\\
&则知\exists x\in (A-\mathfrak{m})\\
&s.t. x\in 包含\mathfrak{m}的极大理想I\\
&故知I=A矛盾\\
&若A还含有其它的极大理想\\
&设\mathfrak{n}是A得另一个极大理想\\
&则\exists x\in \mathfrak{n}且x\notin \mathfrak{m}\\
&故知\mathfrak{n}=(1)\\
&矛盾\\
&故知A是局部环\\
&\\
&ii)设x\in A-\mathfrak{m}\\
&由于\mathfrak{m}是极大理想\\
&故知(x+\mathfrak{m})=(1)\\
&故知\exists y\in A,t\in \mathfrak{m}\\
&s.t. xy+t=1\\
&故知xy=1-t\in 1+\mathfrak{m}\\
&故知xy可逆\\
&故知x可逆\\
&利用i)即可获证\\
&\\\\
&例:\\
&(1)A=\mathfrak{k}[x_1,\cdots,x_n],\mathfrak{k}为域\\
&设f\in A是一个不可约多项式,则由因子惟一分解定理可推出(f)是一个素理想\\
&(2)A=Z中的任意一个理想均有形状(m),(m)是素理想\iff m=0或m为素数\\
&且所有形如(p)的素理想都是极大理想.Z/(p)是由p个元素组成的域\\
&(3)主理想整环是所有理想都是主理想的整环.\\
&在主理想整环中所有素理想都是极大理想\\
\end{aligned}
$
### 小根和大根
$
\begin{aligned}
&Proposition1.7.环A得所有幂零元的集合是一个理想\mathfrak{N},\\
&称为A的小根(nilradical),也叫做A得Jacobson根\\
&环A/\mathfrak{N}中没有非0幂零元\\
&根据交换性我们易于验证上述结论\\
&\\\\
&Proposition1.8.A的小根及是A中所有素理想的交\\
&(证明需要使用Zorn引理,这里暂且跳过)\\
&Proposition1.9.A的大根\mathfrak{R}是A中所有极大理想的交\\
&x\in \mathfrak{R}\iff \forall y\in A,1-xy均可逆\\
&证明:\Rightarrow :\\
&若1-xy不可逆\\
&则由不可逆元一定包含于某个极大理想可知\\
&\exists 某个极大理想\mathfrak{m}\\
&s.t. 1-xy\in \mathfrak{m}\\
&但x\in \mathfrak{R}\subseteq \mathfrak{m}\\
&故知xy\in \mathfrak{m}\\
&故知1\in \mathfrak{m}\\
&矛盾\\
&\\
&\Leftarrow:\\
&设x\notin \mathfrak{m}其中\mathfrak{m}是某个极大理想\\
&则(\mathfrak{m}+x)=(1).\\
&故知\exists u\in \mathfrak{m},y\in A\\
&s.t. u+xy=1\\
&即1-xy=u\in \mathfrak{m}\\
&故知1-xy不可逆\\
&矛盾\\
\end{aligned}
$
### 理想的运算
$
\begin{aligned}
&理想的和:\\
&设\mathfrak{a}和\mathfrak{b}是环A中的理想，\\
&其和\mathfrak{a}+\mathfrak{b}定义为所有的和x+y的集合\\
&其中x\in \mathfrak{a},y\in \mathfrak{b}\\
&它是包含\mathfrak{a}和\mathfrak{b}的最小理想\\
&\\\\
&理想的交:\\
&任意一组理想的交仍然是理想,因此环A的理想对于包含关系组成一个完备格\\
&\\\\\
&理想的积:\\
&环A中两个理想\mathfrak{a}和\mathfrak{b}的积\mathfrak{a}\mathfrak{b}定义为\\
&由一切可能的乘积xy所生成的理想\\
&其中x\in \mathfrak{a},y\in \mathfrak{b}\\
&\\\\
&例:\\
&(1)若A=Z,\mathfrak{a}=(m),\mathfrak{b}=(n)\\
&则\mathfrak{a}+\mathfrak{b}=((m,n))\\
&\mathfrak{a}\cup \mathfrak{b}=([m,n])\\
&\mathfrak{a}\mathfrak{b}=(mn)\\
&故此时有\mathfrak{a}\mathfrak{b}=\mathfrak{a}\cup \mathfrak{b}\iff (m,n)=1\\
&\\
&(2)A=\mathfrak{k}[x_1,\cdots ,x_n],\mathfrak{a}=(x_1,\cdots,x_n)\\
&表示由元素x_1,\cdots ,x_n生成的理想\\
&则\mathfrak{a}^m表示所有不含次数<m的项的所有多项式的集合\\
&\\\\
&目前为止定义的三种运算(和、交、积)都是交换的和结合的\\
&对于分配律而言:\\
&我们只有\mathfrak{a}(\mathfrak{b}+\mathfrak{c})=\mathfrak{a}\mathfrak{b}+\mathfrak{a}\mathfrak{c}\\
&对于\cap 和+这两个运算而言\\
&虽然在Z中这两个运算中一个关于另一个始终是分配的\\
&但对于一般情形,我们只能满足"模律":\\
&即若\mathfrak{b}\subseteq \mathfrak{a}或\mathfrak{c}\subseteq \mathfrak{a},则\mathfrak{a}\cap(\mathfrak{b}+\mathfrak{c})=\mathfrak{a}\cap \mathfrak{b}+\mathfrak{a}\cap \mathfrak{c}\\
&\\\\
&对于\cap 和积着两个运算而言\\
&在Z中,(\mathfrak{a}+\mathfrak{b})(\mathfrak{a}\cap \mathfrak{b})=\mathfrak{a}\mathfrak{b}\\
&但对于一般情况而言\\
&我们只有(\mathfrak{a}+\mathfrak{b})(\mathfrak{a}\cap \mathfrak{b})\subseteq \mathfrak{a}\mathfrak{b}成立\\
&我们显然有\mathfrak{a}\mathfrak{b}\subseteq \mathfrak{a}\cap \mathfrak{b}\\
&因此\\
&若\mathfrak{a}+\mathfrak{b}=(1),则\mathfrak{a}\cap \mathfrak{b}=\mathfrak{a}\mathfrak{b}\\
&\\
&对于上述满足和为(1)的两个理想，我们称其为互素的两个理想\\
&\\\\
&直积\\
&设A_1,\cdots A_n是一些环,它们的直积:\\
&A=\Pi _{i=1}^{n}A_i\\
&定义为所有序列x=(x_1,\cdots x_n)的集合\\
&其中x_i\in A_i(1\leq i\leq n)\\
&其中的加法和乘法分别定义为按分量相加和相乘\\
&\\\\
&设A是一个环,\mathfrak{a_1},\cdots,\mathfrak{a_n}是它的理想\\
&按公式\phi (x)=(x+\mathfrak{a_1},\cdots ,x+\mathfrak{a_n})来定义同态\\
&\phi :A\to \Pi _{i=1}^{n}(A/\mathfrak{a_i})\\
&\\\\
&Proposition1.10(推广中国剩余定理)\\
&i)若\forall i\ne j,\mathfrak{a_i}与\mathfrak{a_j}互素,则\Pi \mathfrak{a_i}=\cup \mathfrak{a_i}\\
&ii)同态\phi 是满的\iff \forall i\ne j\mathfrak{a_i}和\mathfrak{a_j}互素\\
&iii)同态\phi 是单的\iff \cap \mathfrak{a_i}=(0)\\
&利用归纳法,我们易证i)成立\\
&对于iii),由\cap \mathfrak{a_i}是\phi 的核即知显然成立\\
&我们下面证明ii)成立\\
&\Rightarrow :\\
&我们首先证明\mathfrak{a_1}与\mathfrak{a_2}互素\\
&\exists x\in As.t.\phi(x)=(1,0,\cdots ,0)\\
&故x\equiv 1\pmod \mathfrak{a_1}\\
&x\equiv 2\pmod \mathfrak{a_2}\\
&故知1=(1-x)+x\in \mathfrak{a_2}+\mathfrak{a_2} \\
&同理可知\forall i\ne j,\mathfrak{a_i}+\mathfrak{a_j}=1\\
&\Leftarrow :\\
&由\Pi _{i=1}^{n}(A/\mathfrak{a_i})\\
&可由(1,0,\cdots ,0),\cdots ,(0,\cdots,0,1)生成可知\\
&我们只需证明上述元素均有原像\\
&由\mathfrak{a_1}+\mathfrak{a_i}=(1)\forall i>1\\
&故知\exists u_i\in\mathfrak{a_1},v_i\in \mathfrak{a_i}\\
&s.t. u_i+v_i=1\\
&故知令x=\Pi _{i=2}^{n}v_i.\\
&则x=\Pi _{i=2}^{n}(1-u_i)\equiv 1\pmod \mathfrak{a_1}\\
&而x\equiv 0\pmod \mathfrak{a_i}\forall i>1\\
&故知\phi (x)=(1,0,\cdots ,0)\\
&同理可证明其它元素原像存在\\
&\\\\
&Proposition1.11.\\
&i)设\mathfrak{p_1},\cdots ,\mathfrak{p_n}是素理想,\\
&而\mathfrak{a}是含在\cup _{i=1}^{n}\mathfrak{p_i}中的理想\\
&则\mathfrak{a}\subseteq \mathfrak{p_i}对某个i成立\\\\
&ii)设\mathfrak{a_1},\cdots \mathfrak{a_n}是一系列理想\\
&若\cap \mathfrak{a_i}\subseteq \mathfrak{p}\\
&其中\mathfrak{p}是一个素理想\\
&则一定\exists i,s.t. \mathfrak{a_i}\subseteq \mathfrak{p}\\
&若\mathfrak{p}=\cap \mathfrak{a_i}\\
&则\exists i,s.t. \mathfrak{p}=\mathfrak{a_i}\\
\\\\
&证明:i)\\
&我们考虑归纳法,当n=1时命题显然成立\\
&设对n-1时命题成立,考虑n时的情况\\
&对于每个j=1,\cdots ,n,将\mathfrak{p_j}排除\\
&应用归纳假设\exists x_j\in \mathfrak{a}s.t.\\
&x_j\notin \mathfrak{p_i}\forall i\ne j\\
&若\exists js.t. x_j\notin \mathfrak{p_j}则原命题获证\\
&若\forall j,x_j\in p_j\\
&考虑y=\sum_{i=1}^{n}(\Pi _{k=1,k\ne j}^n x_k)\\
&则y\notin \cup \mathfrak{p_i}\\
&故知原命题成立\\
&\\\\
&理想的商:\\
&设\mathfrak{a}和\mathfrak{b}是环A中的理想\\
&其商定义为:\\
&(\mathfrak{a}:\mathfrak{b})=\{x\in A|x\mathfrak{b}\subseteq \mathfrak{a}\}\\
&\\
&特别地,(0:\mathfrak{b})叫作\mathfrak{b}的零化子记作Ann(\mathfrak{b})\\
&A中的所有零因子可以表示成:\\
&D=\cup _{x\ne 0}Ann(x)\\
&即所有非零元素生成理想的零化子的并\\
&若\mathfrak{b}是主理想(x),我们也将(\mathfrak{a}:(x))记作(\mathfrak{a}:x)\\
&\\\\
&ii)假定\forall i,\mathfrak{a_i}\nsubseteq \mathfrak{p},\\
&则\exists x_i\in \mathfrak{a_i},x_i\notin \mathfrak{p}\\
&故知\Pi x_i\in \Pi \mathfrak{a_i}\subseteq \cap \mathfrak{a_i}\\
&但是\Pi x_i\notin \mathfrak{p}\\
&故有\cap \mathfrak{a_i}\nsubseteq \mathfrak{p}\\
&\\
&若\mathfrak{p}=\cap \mathfrak{a_i}\\
&则\exists i,s.t. \mathfrak{p}\subseteq \mathfrak{a_i}\\
&故知\mathfrak{p}=\mathfrak{a_i}\\
&\\\\
&理想的根:\\
&设\mathfrak{a}是A的任意理想\\
&其根定义为:\\
&r(\mathfrak{a})=\{x\in A|x^n\in \mathfrak{a}对于某个n成立\}\\
&\\
&若\phi :A\to A/\mathfrak{a}是自然同态\\
&则r(\mathfrak{a})=\phi^{-1}(\mathfrak{N}_{A/\mathfrak{a}})\\
&\\\\
&r(\mathfrak{a})具有下述性质：\\
&\mathfrak{a}\subseteq r(\mathfrak{a})\\
&r(r(\mathfrak{a}))=r(\mathfrak{a})\\
&r(\mathfrak{a}\mathfrak{b})=r(\mathfrak{a}\cap\mathfrak{b})=r(\mathfrak{a})\cap r(\mathfrak{b})\\
&r(\mathfrak{a})=(1)\iff \mathfrak{a}=(1)\\
&r(\mathfrak{a}+\mathfrak{b})=r(r(\mathfrak{a})+r(\mathfrak{b}))\\
&若\mathfrak{p}为素理想,则r(\mathfrak{p}^n)=r(\mathfrak{p})\forall n>0\\
&\\\\
&\\\\
&Proposition1.14.理想\mathfrak{a}的根是包含\mathfrak{a}的一切素理想的交\\
&\\
&由r(\mathfrak{a})=\phi^{-1}(\mathfrak{N}_{A/\mathfrak{a}})易知命题成立\\
&\\\\
&Proposition1.15.D=A中零因子的集合=\cup_{x\ne 0}r(Ann(x)).\\
&\\
&由D是A中零因子的集合可知\\
&D=r(D)=r(\cup _{x\ne 0}Ann(x))=\cup _{x\ne 0}r(Ann(x)).\\
&\\\\
&Proposition1.16.若环A中的理想\mathfrak{a},\mathfrak{b}的根r(\mathfrak{a})和\mathfrak{b}互素\\
&则\mathfrak{a}和\mathfrak{b}互素\\
&\\
&证明r(\mathfrak{a}+\mathfrak{b})=r(r(\mathfrak{a})+r(\mathfrak{b}))=r(1)=(1)\\
&故知\mathfrak{a}+\mathfrak{b}=(1)\\
&\\\\
\end{aligned}
$
### 扩张和局限
$
\begin{aligned}
&扩理想:\\
&设f:A\to B是一环同态,\mathfrak{a}是A的理想\\
&则\mathfrak{a}的像f(\mathfrak{a})在B中生成的理想Bf(\mathfrak{a})叫作\mathfrak{a}的扩理想\\
&记作\mathfrak{a}^{e}\\
& \\\\
&局限理想:\\
&设\mathfrak{b}是B中的一个理想,此时f^{-1}(\mathfrak{b})总是A中的理想\\
&叫作\mathfrak{b}的局限理想,记作\mathfrak{b}^{c}\\
&\\\\
&我们也就能对f进行分解:\\
&A\xrightarrow {p}f(A)\xrightarrow {j}B\\
&其中p是满的,j是单的\\
&对于p而言,f(A)的理想与ker(f)的理想之间有保持包含关系的一一对应\\
&且素理想对应素理想\\
&\\
&但对于j而言,素理想也可能不对应素理想\\
&\\
&经典的反例如下:\\
&考虑嵌入映射Z\to Z[i].其中i=\sqrt{-1}\\
&则Z中素理想(p)的扩理想可以是Z[i]中的素理想,也可以不是\\
&具体证明我们在此先不展开\\
&\\\\
&Proposition1.17.\\
&i)\mathfrak{a}\subseteq \mathfrak{a}^{ec},\mathfrak{b}^{ce}\subseteq \mathfrak{b}\\
&ii)\mathfrak{b}^{c}=\mathfrak{b}^{cec},\mathfrak{a}^{e}=\mathfrak{a}^{ece}\\
&iii)若C是A中局限理想的集合.\\&E是B中扩理想的集合,\\
&则C=\{\mathfrak{a}|\mathfrak{a}^{ec}=\mathfrak{a}\}\\
&E=\{\mathfrak{b}|\mathfrak{b}^{ce}=\mathfrak{b}\}\\
&而C\to E,\mathfrak{a}\mapsto \mathfrak{a}^{e}是双射\\
&\\
&证明:若\mathfrak{a}\in C ,\\
&则\mathfrak{a}=\mathfrak{b}^c=b^{cec}=a^{ec}\\
&对E同理\\
&\\\\
&\\\\
\end{aligned}
$