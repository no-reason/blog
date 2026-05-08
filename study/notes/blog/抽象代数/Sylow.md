# Sylow定理及其证明
## 内容
$
\begin{aligned}
&对于群G,设|G|=p^{k}l,(p,l)=1\\
&则:\\
&(1)\forall 1\leq r\leq k,\\
&一定存在一个阶为p^{r}的子群\\
&\\
&(2)\forall p 子群<G,\\
&其一定是某一个Sylow-p子群的子群\\
&\\
&(3)G的所有Sylow-p子群一定彼此共轭\\
&\\
&(4)\forall 素数p ||G |\\
&G中Sylow-p子群的个数N_{p}\equiv 1\pmod p\\
\end{aligned}
$

## 证明
### (1)的证明
$
\begin{aligned}
&我们考虑使用数学归纳法\\
&当n=2时命题显然成立\\
&设对n-1时命题成立\\
&考虑n时的情况\\
&我们对G进行类方程分解\\
&|G|=|Z(G)|+\sum_{x\in G-Z(G)}|G:N_{G}(x)|\\
&|Orb_{G}(x)|=|G:Stab(x)|\\
&而在共轭作用下Stab(x)=N_{G}(x)(x的正规化子)\\
&故|G|=|Z(G)|+\sum_{x\in G-Z(G)}|Orb_{G}(x)| \\
&我们首先对|Z(G)|的结构进行考虑\\
&若p||Z(G)| ,则由归纳假设可知\\
&Z(G)中一定有p-阶子群H\\
&由Z(G)是G的中心可知\\
&H\lhd G\\
&因此我们考虑G关于H的商群G/H\\
&则|G/H|=p^{k-1}l\\
&故由归纳假设可知\\
&\forall 1\leq t\leq k-1\\
&\exists ,K' < G/H\\
&满足|K'|=p^{k-1}\\
&由商群的对应定理可知\\
&K'一定对应一个G的子群K\\
&满足K'\cong K/H\\
&故知|K|=|K'||H|=p^{t+1}l\\
&故知该情况下(1)成立\\
&\\\\
&若p\nmid |Z(G)|\\
&则由p||G|可知\\
&\exists x\in G\\
&s.t. p\nmid |Orb_{G}(x)|\\
&i.e.\\
&p\nmid |G:Stab_{G}(x)|\\
&i.e.\\
&p\nmid |G:N_{G}(x)|\\
&i.e \\
&p\nmid\frac{|G|}{|N_{G}(x)|}\\
&故知v_{p}(|N_{G}(x)|)=v_{p}(|G|)=k\\
&又N_{G}(x)一定是G的子群\\
&故若N_{G}(x)是G的真子群,\\
&则由归纳假设可知\\
&N_{G}(x)一定含有p^{t}阶子群,\forall 1\leq t\leq k\\
&故知该情况下(1)成立\\
&若N_{G}(x)=G\\
&则Z(G)=G,矛盾\\
&综上所述有(1)成立\\
\end{aligned}
$

### (2)的证明

$
\begin{aligned}
&我们考虑N是G的一个Sylow-p子群\\
&考虑G在N上的共轭作用\\
&该作用生成的轨道为\\
&Orb_{G}(N)=\{gNg^{-1}|g\in G\}\\
&(如果从上帝视角来看证明中的这一步其实是自然的)\\
&因为事实上Orb_{G}(N)就是G的所有Sylow-p子群\\
&考虑一个p-阶子群H\\
&欲证H是Orb_{G}(N)中某一个元素的子群\\
&我们从群作用的角度考虑\\ 
&我们考虑H对Orb_{G}(N)的共轭作用\\
&则我们对Orb_{G}(N)进行类方程分解\\
&有\\
&(为叙述简洁我们记M=Orb_{G}(N))\\
&则|M|=Z(M)+\sum_{x\in M-Z(M)} |H:N_{H}(x)|\\
&而由|M|=P^{l}\\
&故知|H|的标准分解中只含有素因子p\\
&由N_{H}(x)是x在H中的正规化子可知\\
&N_{H}(x)一定是H的子群\\
&因此|N_{H}(x)|的标准分解中一定也只含有素因子p\\
&由|N:N_{H}(x)|\geq 2\\
&故知p\mid |N:N_{H}(x)|\\
&但|M|=|Orb_{G}(N)|=|\frac{|G|}{Stab_{G}(N)}|\\
&=\frac{|G|}{|N_{G}(N)|}\\
&考虑|G|和｜N_{G}(N)｜中p的幂次\\
&v_{p}(|G|)=k\\       
&而N< N_{G}(N)\\
&而由N是一个Sylow-p子群知\\
&v_p(|N_{G}(N)|)=k\\
&v_{p}(|M|)=0\\
&故知p\nmid Z(M)\\
&故知\exists N'\in M,s.t. N'\in Z(M)\\
&i.e.\\
&\forall h\in H\\
&hN'h^{-1}=N'\\
&因此\\
&H<N_{G}(N')\\
&故H<G\\
&则由同构第二定理有:\\
&\frac{H}{H\cap N'}=\frac{HN'}{N'}\\
&故有\\
&|H||N'|=|HN'||H\cap N'|\\
&由N,N'都是p-子群可知\\
&HN'也是p-子群\\
&又N'<HN'\\
&故又N'是sylow-p子群\\
&故知HN'=N'\\
&故H<N'\\
&故知(2)成立\\
\end{aligned}
$

### (3)的证明

$
\begin{aligned}
&我们利用(2)中的证明：\\
&\forall A,B为G中的Sylow-p子群\\
&考虑Orb_{G}(A)和Orb_{G}(B)\\
&(在共轭作用下考虑)\\
&则由(2)可知\\
&A是Orb_{G}(B)中某个元素B'的子群\\
&由|A|=|B'|=p^{k}\\
&故知A=B'\\
&故知A与B共轭\\
&故(3)成立\\
\end{aligned}
$

### (4)的证明

$
\begin{aligned}
&继续利用(2)的证明过程\\
&|M|\equiv |Z_{H}(M)| \pmod p\\
&我们考虑选取H为一个Sylow-p子群P\\
&若Z_{H}(M)中只有P一个元素则命题得证\\
&若\exists sylow-p子群Q\ne P\\
&满足Q\in Z_{H}(M)\\
&则\forall p\in P,由pQp^{-1}=Q\\
&故知P\subseteq N_{G}(Q)\\
&又Q\subseteq N_{G}(Q)\\
&我们考虑将P,Q视为N_{G}(Q)的子群而言\\
&由于P,Q都是G中的Sylow-p子群\\
&故知P,Q都是N_{G}(Q)中的Sylow-p子群\\
&因此\\
&\exists g\in N_{G}(Q)\\
&s.t. P=gQg^{-1}\\
&但由于g\in N_{G}(Q)\\
&故gQg^{-1}=Q\\
&故P=Q\\
&故知|M|\equiv |Z_{H}(M)|=1\pmod p\\
&故(4)得证\\
\end{aligned}
$
## Sylow定理的应用
$
\begin{aligned}
&e.g.1:设|G|=pq,其中p,q均为素数\\
&且p<q.\\
&P是G的Sylow-p子群,Q是G的Sylow-q子群\\
&则Q\lhd  G\\
&若有P\lhd G\\
&则G是循环群\\
&\\\\
&证明:\\
&由Sylow第三定理知:\\
&N_{q}\equiv 1\pmod q\\
&且N_{q}\mid pq\\
&故知N_{q}=1\\
&故知Q\lhd G\\
&\\
&考虑N_{p}\mid pq\\
&\Rightarrow |N_{p}|=1,p,q,pq\\
&\\
&由(p,q)=1\\
&可知P\cap Q={e}\\
&由P\lhd G, Q\lhd G\\
&下面证明PQ可交换\\
&考虑xyx^{-1}y^{-1},其中x\in P,y\in Q\\
&则xyx^{-1}y^{-1}\in P\cap Q\\
&故xyx^{-1}y^{-1}=e\\
&故知xy=yx\\
&故知P,Q可交换\\
&\\
&又由(p,q)=1知\\
&|P\times Q|=pq=|G|\\
&故考虑映射f:\\
&\begin{cases}
&P\times Q\to G\\
&(p,q)\mapsto pq\\
\end{cases}\\
&则f((p1,q1))f((p2,q2))=p1q1p2q2\\
&f((p1,q1)(p2,q2))=f(p1p2,q1q2)\\
&=p1p2q1q2=p1q1p2q2(利用PQ可交换)\\
&故f是同态\\
&x\in kerf\\
&\iff pq=e\\
&\iff p=q^{-1}\\
&\Rightarrow p\in Q\\
&故知p,q\in  P\cap Q\\
&故知p=q=e\\
&故知x=(e,e)\\
&故知kerf=(e,e)\\
&又由PQ\leq G,|PQ|=G\\
&故知PQ=G\\
&故知f是满射\\
&故知P\times Q \overset{f}\cong G\\\\
&\\
&e.g.2\\
&设G是一个30阶群,\\
&证明G有一个同构于Z_{15}的正规子群\\
&\\\\
&我们首先证明一个引理:\\
&引理:指数为2的子群一定正规\\
&引理之证明:\\
&设G为一群,H<G,s.t. |G:H|=2\\
&\forall g\in G\\
&若g\in H,则gHg^{-1}=H\\
&若g\notin H,则gH\ne H\\
&故G=gH\cup H\\
&同理G=H\cup Hg\\
&故知gH=G-H=Hg\\
&故知H是正规子群\\
&\\
&因此,我们只需考虑证明G有一个15阶子群\\
&\\
&由Sylow定理可知G中存在5阶子群H和3阶子群K\\
&由同构基本定理可知\\
&若H,K中有一子群正规\\
&\\
&则|HK|=\frac{|H||K|}{|H\cap K|}\\
&因此有|HK|=15\\
&即原命题得证\\
&\\
&故只需考虑H和K都不正规的情况\\
&N_{5}\equiv 1\pmod 5\\
&N_{3}\equiv 1\pmod 3\\
&由H,K都不正规可知\\
&N_{5}\ne 1,N_{3}\ne 1\\
&故N_{5}\geq 6\\
&N_{3}\geq 10\\
&此时群中的5阶元至少有6\times 4 =24个\\
&3阶元至少有2\times 10=20个\\
&但|G|=30<24+20\\
&故矛盾\\
&故知原命题得证\\
&e.g.3\\
&设G是一个12阶群\\
&证明:G要么有一个正规的Sylow-3子群\\
&要么G\cong A_{4}\\
&\\\\
&考虑N_{3}\equiv 1\pmod 3\\
&N_{3}\mid 12\\
&故知N_{3}=1或4\\
&若N_{3}=1,则G的Sylow-3子群唯一\\
&故知该子群正规\\
&\\
&若N_{3}=4,设P为G的一个Sylow-3子群\\
&考虑G在P上的共轭作用\\
&由Sylow第二定理可知\\
&Orb_{G}(P)=4\\
&故由轨道稳定化子定理可知:\\
&|Orb_{G}(P)||Stab_{G}(P)|=|G|\\
&故知Stab_{G}(P)=3\\
&Stab_{G}(P)=N_{G}(P)\\
&P<N_{G}(P)\\
&故知N_{G}(P)=P\\
&欲证明:G\cong A_{4}\\
&我们首先考虑\exists 同态f: G\to S_{4}\\
&考虑到N_{3}=4,\\
&所有的Sylow-p子群在共轭作用下恰能构成一个S_{4}的子集\\
&\\
&故考虑同态:\\
&f:G\to S_{4}\\
&~~~g\mapsto \begin{pmatrix}
P_1&P_2&P_3&P_4\\
gP_1g^{-1}&gP_2g^{-1}&gP_3g^{-1}&gP_4g^{-1}\\
\end{pmatrix}\\
&我们首先考虑kerf \\
&g\in kerf \\
&\iff gP_{i}g^{-1}=P\\
&\iff g\in N_{G}(P_i),\forall i\in \{1,2,3,4\}\\
&\iff g\in P_{i},\forall i\in \{1,2,3,4\}\\
&\iff g\in \cap_{i=1}^{4}P_{i}\\
&故知g=e\\
&故f是单同态\\
&故|Im f |=12\\
&\\
&下面我们只需说明S_{4}只有一个12阶子群\\
&引理:\\
&S_{4}只有一个12阶子群\\
&反证:若不然\\
&设X,Y是S_{4}的互不相同的12阶子群\\
&则X,Y的指数都是2\\
&故X,Y均是S_{4}的正规子群\\
&故有\\
&|XY|=\frac{|X||Y|}{|X\cap Y|}\\
&\Rightarrow \frac{|X||Y|}{|X\cap Y|}\leq 24\\
&\Rightarrow |X\cap Y|\geq 6\\
&由X,Y均是G的正规子群可知\\
&X\cap Y 是G的正规子群\\
&但S_{4}中的正规子群只有K_{4}\\
&故矛盾\\
&故知原命题成立\\
&\\\\
&e.g.4\\
&设G是一个阶为p^2q的群\\
&p,q均为素数\\
&证明G一定存在一个Sylow-正规子群\\
&设P\in Syl_{p}(G)\\
&Q\in Syl_{q}(G)\\
&N_{p}\equiv 1\pmod p\\
&N_{p}\mid p^2q\\
&若p>q\\
&则N_{p}只能为1\\
&因此P一定是正规子群\\
&\\
&若q>p\\
&由N_{q}|p^2q可知\\
&N_{q}=p或p^2\\
&N_{q}\equiv 1\pmod q\\
&故知N_{q}=p^2\\
&故有p^2\equiv 1\pmod q\\
&i.e. q\mid (p-1)(p+1)\\
&由q>p知q\nmid p-1\\
&故q\mid p+1\\
&故q=p+1\\
&故只可能为p=2,q=3\\
&|G|=12\\
&故知G要么有一个Sylow-3子群\\
&要么G\cong A_{4}\\
&而K_4\lhd A_{4}为4阶子群\\
&故知原命题成立\\
&\\\\
&e.g.5.\\
&设|G|=60,若G的Sylow-5子群的阶>1\\
&证明:G为单群\\
&\\
&N_{5}\equiv 1\pmod 5\\
&N_{5}\mid 60\\
&由N_{5}>1可知\\
&N_{5}=6\\
&若原命题不成立\\
&设H是G的一个正规子群\\
&若5||G|\\
&则G中含有一个Sylow-5子群\\
&又由于6个Sylow-5子群彼此共轭\\
&故H含有6个Sylow-5子群\\
&故|H|\geq 6\times 4+1=25\\
&故|H|=30\\
&由e.g.2可知\\
&H有一个同构于Z_{15}的正规子群\\
&故H中有\phi (15)=15\times \frac{2}{3}\times \frac{4}{5}=8个15阶元素\\
&\\
&故|H|\geq 25+8=33矛盾\\\\
&\\
&若5\nmid |H|\\
&则|H|=2,3,4,6,12\\
&若|H|=6\\
&则|H|一定有一个Sylow-3正规子群\\
&若|H|=12\\
&则H中要么含有Sylow-3正规子群,\\
&要么含有K_4(Sylow-4正规子群)\\
&因此我们可以只考虑|H|=2,3,4的情况\\
&\\
&考虑商群G'=G/H\\
&则|G'|=30,20,15\\
&5\mid |G'|\\
&故知G'存在阶为5的正规子群K'\\
&考虑K'在G中的原像K\\
&则K\lhd G\\
&且K/H = K'\\
&\Rightarrow |K|=|K'||H|\\
&故知5\mid |K|\\
&但由上述分析:\\
&G不存在阶被5整除的正规子群\\
&故矛盾\\
&故原命题成立\\
\end{aligned}
$
