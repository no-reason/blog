# CMC真题分析与解答——高等代数(解答题部分)
$
\begin{aligned}
&(1)设A为n(n\geq 3)阶实可逆矩阵,\\
&且A^k相似于A对k=1,2,…,n!-1,n!成立\\
&证明:\forall k\in N_+,均有A^k相似于A\\
&我们考虑A的特征值\\
&设A的特征值为\lambda _1,\lambda _2,…,\lambda _t\\
&其重数分别为n_1,n_2,…,n_t\\
&其中n_1+n_2+…+n_t=n\\
&而A^k的特征值为\lambda _1^k,\lambda _2^k,…,\lambda _t^k\\
&由相似矩阵具有相同的特征值可知\\
&\forall k=1,2,…,n!\\
&\lambda _1^k,\lambda _2^k,…,\lambda _t^k均为A的特征值\\
&对于固定的i考虑到\lambda _i,\lambda _i^2,…,\lambda _i^{n!}均为A的特征值\\
&而A的不同的特征值之多只有n个\\
&故知\exists s,r,s.t.\lambda _i^s=\lambda _i^r\\
&故知\exists m_i,s.t.\lambda _i^{m_i}=1\\
&由实对称矩阵的特征值一定为实数可知\\
&\forall i,\lambda _i=1\\
&即A的所有特征值均为1\\
&我们考虑A的Jordan标准型\\
&A\sim \begin{bmatrix}
J_1\\
&&J_2\\
&&&&\ddots\\
&&&&&&J_t\\
\end{bmatrix}\\
&故\forall k\\
&A^k\sim \begin{bmatrix}
J_1^k\\
&&J_2^k\\
&&&&\ddots\\
&&&&&&J_t^k\\
\end{bmatrix}\\
&而我们熟知\\
&对于Jordan块J(\lambda ,n)^k的Jordan标准型为\\
&J(\lambda ^k,n)\\
&而由本题中所有的特征值均为1\\
&故知A^k\sim\begin{bmatrix}
J_1\\
&&J_2\\
&&&&\ddots\\
&&&&&&J_t\\
\end{bmatrix}\\
&故知\forall k,A^k与A有相同的Jordan标准型\\
&故知\forall k,A^k\sim A\\
&故原命题得证\\ 
&\\\\
&(2)设A为复数域上的4阶幂等阵,\\
&证明:\exists c_0,c_1,c_2,c_3\in C,s.t.\\
&A相似于\begin{bmatrix}
c_0&&c_1&&c_2&&c_3\\
c_3&&c_0&&c_1&&c_2\\
c_2&&c_3&&c_0&&c_1\\
c_1&&c_2&&c_3&&c_0\\
\end{bmatrix}\\
&欲证A与所求证式相似\\
&我们只需证明两者具有相同的Jordan标准型\\
&考虑A的标准型\\
&设P为可逆阵A=Q\begin{bmatrix}
J_1\\
&&J_2\\
&&&&\ddots\\
&&&&&&J_n\\
\end{bmatrix}P\\
&则由A^2=A可知\\
&\begin{bmatrix}
J_1^2\\
&&J_2^2\\
&&&&\ddots\\
&&&&&&J_n^2
\end{bmatrix}=\begin{bmatrix}
J_1\\
&&J_2\\
&&&&\ddots\\
&&&&&&J_n\\
\end{bmatrix}\\
&故可知J_1,J_2,…,J_n均为1阶Jordan块\\
&故A相似于对角阵\\
&而由A^2=A\\
&\forall \lambda 为A的特征值\\
&\lambda ^2=\lambda\\
&\Rightarrow \lambda =0或1\\
&故A\sim \begin{bmatrix}
1\\
&&1\\
&&&&\ddots\\
&&&&&&0\\
&&&&&&&&\ddots\\
&&&&&&&&&&0\\
\end{bmatrix}\\
&考虑\begin{bmatrix}
c_0&&c_1&&c_2&&c_3\\
c_3&&c_0&&c_1&&c_2\\
c_2&&c_3&&c_0&&c_1\\
c_1&&c_2&&c_3&&c_0\\
\end{bmatrix}的Jordan标准型\\
&我们熟知循环矩阵可以做如下分解\\
&设X=\begin{bmatrix}
0&&1&&0&&0\\
0&&0&&1&&0\\
0&&0&&0&&1\\
1&&0&&0&&0\\
\end{bmatrix}\\
&则\begin{bmatrix}
c_0&&c_1&&c_2&&c_3\\
c_3&&c_0&&c_1&&c_2\\
c_2&&c_3&&c_0&&c_1\\
c_1&&c_2&&c_3&&c_0\\
\end{bmatrix}=c_0E+c_1X+c_2X^2+c_3x^3\\
&我们考虑到对于X\\
&其特征多项式为\lambda ^4=1\\
&其有4个互不相同的复特征根\\
&故知X必可相似对角化\\
&设X=Q\Lambda P\\
&则由欲证循环矩阵为X的多项式\\
&则有欲证循环矩阵也可相似对角化\\
&且过渡矩阵也为P\\
&故我们只需欲证循环矩阵与A具有相同的特征值\\
&我们待定c_0,c_1,c_2,c_3\\
&设\lambda ^4=1的四个复根为1,w,w^2,w^3\\
&则我们有\begin{cases}
c_0+c_1+c_2+c_3=\lambda _1\\
c_0+c_1w+c_2w^2+c_3w^3=\lambda _2\\
c_0+c_1w^2+c_2(w^2)^2+c_3(w^2)^3=\lambda _3\\
c_0+c_1w^3+c_2(w^3)^2+c_3(w^3)^3=\lambda _4\\
\end{cases}\\
&其中\lambda _i,i=1,2,3,4是A的四个特征值\\
&由上述线性方程组的系数行列式为非零的Vandermonde行列式\\
&故知上述线性方程组一定有解\\
&故知原命题得证\\
&\\\\
&(3)设实系数多项式f(x)=a_0+a_1x+…+a_mx^m\\
&其中a_m\ne 0,m\geq 1,\sum _{k=0}^{m}a_k=a\ne 0,\\
&\sum _{k=1}^{m}ka_k=b\ne 0\\
&证明:\forall n\in N_{\geq 2},\forall \epsilon \ne 0\\
&必存在n阶复方阵C,使得\\
&f(C)=\begin{bmatrix}
a&&\epsilon\\
&&\ddots&&\ddots\\
&&&&a&&\epsilon\\
&&&&&&a\\
\end{bmatrix}_{n\times n}\\
&根据上一题的经验\\
&我们事实上只需证明\exists C\\
&s.t. f(C)\sim \begin{bmatrix}
a&&\epsilon\\
&&\ddots&&\ddots\\
&&&&a&&\epsilon\\
&&&&&&a\\
\end{bmatrix}\\
&这只需f(C)与\begin{bmatrix}
a&&\epsilon\\
&&\ddots&&\ddots\\
&&&&a&&\epsilon\\
&&&&&&a\\
\end{bmatrix}与相同的Jordan标准型\\
&而\begin{bmatrix}
a&&\epsilon\\
&&\ddots&&\ddots\\
&&&&a&&\epsilon\\
&&&&&&a\\
\end{bmatrix}的Jordan标准型为\\
&\begin{bmatrix}
a&&1\\
&&a&&1\\
&&&&\ddots&&\ddots\\
&&&&&&a&&1\\
&&&&&&&&a&&1\\
\end{bmatrix}\\
&我们考虑构造C使得f(C)的Jordan标准型仍为\\
&\begin{bmatrix}
a&&1\\
&&a&&1\\
&&&&\ddots&&\ddots\\
&&&&&&a&&1\\
&&&&&&&&a&&1\\
\end{bmatrix}\\
&受\sum _{k=0}^{m}a_k=a\ne 0条件启发\\
&我们取C的特征值全为1\\
&不妨设C对应的Jordan标准型为\\
&\begin{bmatrix}
J_1\\
&&J_2\\
&&&&\ddots\\
&&&&&&J_t\\
\end{bmatrix}\\
&以简驭繁\\
&我们直接取C为\begin{bmatrix}
1&&1\\
&&1&&1\\
&&&&\ddots&&\ddots\\
&&&&&&1&&1\\
\end{bmatrix}\\
&则我们由Jordan块方幂的计算公式\\
&J^m(n,\lambda)=\begin{bmatrix}
\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&C_m^2\lambda ^{m-2}&&\cdots&&C_m^{n-1}\lambda ^{m-n+1}\\
0&&\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&\cdots&&C_m^{m-2}\lambda ^{m-n+2}\\
\vdots&&\vdots&&\vdots&&\ddots&&\vdots\\
0&&0&&0&&\cdots&&\lambda ^m\\
\end{bmatrix}\\
&故即有f(C)\sim\\
&\begin{bmatrix}
a&&b&&\cdots\\
&&a&&b&&\cdots\\
&&&&\ddots&&\ddots\\
&&&&&&a&&b&&\cdots\\
&&&&&&&&a\\
\end{bmatrix}\\
&我们计算该矩阵的Jordan标准型\\
&显然f(C)的特征值全为0\\
&r(f(C)-aE)=\begin{bmatrix}
0&&b&&\cdots\\
&&0&&b&&\cdots\\
&&&&\ddots&&\ddots\\
&&&&&&0&&b&&\cdots\\
&&&&&&&&0\\
\end{bmatrix}\\
&我们计算其n阶Jordan块的个数\\
&=r_{n-1}+r_{n+1}-2r_{n}=1\\
&故知f(C)与所求矩阵有相同的Jordan标准型\\
&即知原命题得证\\
&\\\\
&(4)设矩阵A=\begin{bmatrix}
a&&b\\
c&&d\\
\end{bmatrix}\in R^{2\times 2},\\
&二元函数p(X,Y)=tr(XAY^T)\\
&1.证明:p(X,Y)构成R^{2\times 2}上内积的充要条件是\begin{cases}
a>0\\
b=c\\
ad>b^2\\
\end{cases}\\
&2.若A使得变换\sigma:X\rightarrow \begin{bmatrix}
\frac{\sqrt{3}}{2}&&\frac{1}{2}\\
-\frac{1}{2}&&\frac{\sqrt{3}}{2}\\
\end{bmatrix}X\begin{bmatrix}
0&&1\
-1&&0\\
\end{bmatrix}成为内积空间(R^{2\times 2},p(X,Y))中的一个正交变换\\
&求A\\
&此时我们只需验证该内积满足正定性\\
&考虑XAX^T易知1.成立\\
&2.此时我们只需该运算保持内积不变性\\
&故易知2.成立\\
&Tip:我们需要牢记在内积空间中的正交变换指的是满足变换前后内积不变的变换\\
&我们总结:\\
&\begin{cases}
&I.某二元运算构成线性空间中的内积\iff 满足线性性，对称性，正定性\\
&II.某二元关系构成等价关系\iff 满足自反性，对称性传递性\\
&III.对于一般的内积空间,某线性变换构成正交变换\iff 该线性变换作用前后任意两向量的内积不变\\
\end{cases}
&\\\\
&(5)给定n阶复方阵A\ne 0,b\in C^n为n维列向量.\\
&复系数多项式f(x)被称为向量b关于A的零化多项式\iff\\
&f(A)b=0且f(x)\ne 0.\\
&在向量b关于A的零化多项式中次数最低的首1多项式称为b关于A的最小多项式\\
&现设p(\lambda )为A的最小多项式.\\
&证明：p(\lambda)必为C^n中某向量b关于A的最小多项式\\
&证明:\\
&我们考虑对于某向量b\\
&其最小多项式为q(\lambda )\\
&那么由p(\lambda )b=0,q(\lambda )b=0\\
&由q(\lambda )b=0,deg(q)的最小性可知\\
&q|p\\
&我们发现这道题有很明显的数论味道\\
&按照处理数论问题的一般思想\\
&我们以简驭繁,首先考虑若p为素数(在多项式理论中对应p为一次式)\\
&则q=c或cp\\
&我们取b\ne 0\\
&即可知q=cp\\
&又由p,q均首一,则有p=q\\
&进一步,若p为某素数的方幂(在多项式中对应p为某一次式的方幂)\\
&不妨设p=f^t,其中f为一一次式\\
&则,我们考虑取出C^n的一组基\\
&不妨设为e_1,e_2,…,e_n\\
&设向量e_i对应的最小多项式为p^{a_i}\\
&我们设其中次数最大的最小多项式为p^{a_j}\\
&下面我们只需证明p^{a_j}=p^{t}\\
&一方面，由\forall b\in C^n\\
&p^t(A)b=0b=0\\
&则知p^{a_j}|p^{t}\\
&另一方面,由\\
&\forall b \in C^n\\
&p^{a_j}(A)b=0知\\
&p^{a_j}(A)=0\\
&故p^{a_j}也为A的一个零化多项式\\
&故知p^{t}|p^{a_j}\\
&故知p^t=p^{a_j}\\
&故知e_j即为所求的b\\
&下面我们继续来看p为一般的正整数(多项式理论中对应p为一般的多项式)\\
&我们对p做惟一分解定理\\
&设p=p_1^{a_1}p_2^{a_2}…p_s^{a_s}\\
&这是我们不难联想到一个经典的结论\\
&Lemma:设线性变换\mathcal {A}的特征多项式为f(\lambda ),\\
&它可以分解成一次因式的乘积\\
&f(\lambda)=(\lambda -\lambda _1)^{a_1}(\lambda -\lambda _2)^{a_2}…(\lambda -\lambda _s)^{a_s}\\
&则V可分解为下述不变子空间的直和\\
&V=V_1\oplus V_2\oplus …\oplus V_s\\
&其中V_i=ker(\mathcal {A}-\lambda _i\mathcal {I})^{a_i}\\
&那么回到本题\\
&由Lemma知,我们可对C^n做直和分解\\
&V_i=ker(\mathcal {A}-\lambda _i\mathcal {I})^{a_i}\\
&则根据我们对p=p_i^{a_i}时的推理\\
&可知,\forall i\in \{1,2,…,s\}\\
&\exists \xi _i\in V_i\\
&使得\xi _i的最小多项式为A在不变子空间V_i中的最小多项式\\
&显然A在V_i中的最小多项式即为p_i^{a_i}\\
&故知我们现在找到了一组向量\\
&\xi _1,\xi _2,…\xi _s\\
&其最小多项式分别为p_i^{a_i}\\
&我们考虑向量\xi _1+\xi _2+…+\xi _s\\
&则上述向量的最小多项式为[p_1^{a_1},…,p_s^{a_s}]\\
&由(p_i,p_j)=1\\
&则知上述向量的最小多项式即为p_1^{a_1}p_2^{a_2}…p_s^{a_s}\\
&故知原命题得证\\
&\\\\
&(6)设n阶方阵A_1,…,A_{2n}均相似于对角矩阵\\
&证明:\\
&1.C^n=ker A_k\oplus Im A_k\\
&2.若对所有的k<j均有A_kA_j=0(k,j=1,2,…,2n),\\
&则A_1,…,A_{2n}中至少有n个矩阵为0矩阵\\
&\\\\
&对于1.我们证明更强的结论\\
&C^n=ker A\oplus Im A\iff A的0特征值的代数重数等于几何重数\\
&(\Rightarrow ):\\
&我们选取Im A和Ker A的一组基\\
&则由C^n=ker A\oplus Im A可知\\
&上述基构成C^n的一组基\\
&考虑A|_{kerA}=O\\
&A由Ker A\oplus Im A=\{0\}\\
&则知\forall x\in Im A,\\
&Ax\ne 0\\
&故知A|_{Im A}为某可逆阵\\
&故知在选定的上述基作用下\\
&线性变换A对应的矩阵为\\
&\begin{bmatrix}
X\\
&&O\\
\end{bmatrix}\\
&其中X为可逆阵\\
&选定Im A的基使得\\
&X此时为Jordan标准型\\
&即知A的0特征值对应的Jordan块全为1阶Jordan块\\
&故知A的0特征值的代数重数等于几何重数\\
&故充分性得证\\
&(\Leftarrow ):\\
&由A的0特征值的代数重数等于几何重数可知\\
&A\sim A'=\begin{bmatrix}
X\\
&&O\\
\end{bmatrix}\\
&考虑x\in kerA'\cap Im A'\\
&A'x=0\\
&\exists y\in C^n,s.t. x=A'y\\
&此时易知矛盾\\
&故知\ker A'\cap Im A'=\{0\}\\
&故知C^n=\ker A'\oplus Im A'\\
&故知原命题成立\\
&根据上述结论易知1.成立\\
&对于2.\\
&由\forall i<j,A_iA_j=O\\
&可知Im A_j \subset ker  A_i\\
&故知ker A_1=(ker A_2\cap ker A_1)\oplus Im A_2\\
&以此类推即有\\
&C^n=(ker A_1\cap Ker A_2\cap …\cap A_{2n})\oplus Im A_1\oplus Im A_2\oplus …\oplus Im A_{2n}\\
&\Rightarrow n=dim (ker A_1\cap ker A_2\cap …\cap A_{2n})+r(A_1)+…+r(A_{2n})\\
&故易知2.成立\\
&\\\\
&(7)设V为有限维欧式空间,V_1,V_2是V的非平凡子空间且V=V_1\oplus V_2\\
&设p_1,p_2分别是V到V_1,V_2的正交投影,\phi =p_1+p_2,\\
&证明：0<\phi \leq 1且det \phi =1的充要条件是V_1与 V_2正交\\
&首先我们取出V_1,V_2的标准正交基\\
&不妨设为a_1,a_2,…,a_n,a_{n+1},…,a_{n+m}\\
&则上述向量组恰好构成V的一组基\\
&考虑\phi 在上述基作用下的矩阵\\
&\phi (a_1,a_2,…,a_n,a_{n+1},…,a_{n_m})=(a_1,a_2,…,a_n,a_{n+1},…,a_{n_m})\begin{bmatrix}
I_n&&X^T\\
X&&I_m\\
\end{bmatrix}\\
&其中X=\begin{bmatrix}
cos<a_1,a_{n+1}>&&cos<a_2,a_{n+1}>&&\cdots&&cos<a_n,a_{n+1}>\\
cos<a_1,a_{n+2}>&&cos<a_2,a_{n+2}>&&\cdots&&cos<a_n,a_{n+2}>\\
\vdots&&\vdots&&\cdots&&\vdots\\
cos<a_1,a_{n+m}>&&cos<a_2,a_{n+m}>&&\cdots&&cos<a_n,a_{n+m}>\\
\end{bmatrix}\\
&故det \phi =\begin{vmatrix}
I_n&&x^T\\
X&&I_m\\
\end{vmatrix}=|I-XX^T|\\
&故上述行列式的值=\Pi (1-\lambda _i)\\
&其中\lambda _i为XX^T的特征值\\
&而由XX^T为半正定阵可知\lambda _i \geq 0\\
&而\Pi (1-\lambda _i)\leq (\frac{m-\sum \lambda _i}{m})^m\\
&\sum \lambda _i=tr(XX^T)\\
&=\sum _{j=1}^{m}\sum _{i=1}^{n} cos^2<a_i,a_{n+j}>\\
&欲证det \phi >0\\
&我们只需证明\forall j,\sum _{i=1}^ncos^2<a_i,a_{n+j}><1\\
&我们考虑子空间L(a_1,a_2,…,a_n,a_{n+j})\\
&我们考虑对基(a_1,a_2,…,a_n,a_{n+j})做Schmidt正交化\\
&得到标准正交基(a_1,a_2,…,a_n,a_{n+1})\\
&则我们a_{n+j}=e_1 a_1 + e_2 a_2 … e_{n+1} a_{n+1}\\
&其中\sum e_i^2=1\\
&则cos^2 <a_i,a_{n+j}=e_i^2\\
&故知\sum _{i=1}^{n}cos^2<a_i,a_{n+j}=e_1^2+…+e_n^2<1\\
&故知det \phi >0\\
&故有原命题成立\\
&\\\\
&(8)设A,B,C均为n阶复方阵,且满足\\
&\begin{cases}
AB-BA=C\\
AC=CA\\
BC=CB\\
\end{cases}\\
&证明:\\
&1.C是幂零阵\\
&2.A,B,C同时相似于上三角阵\\
&3.若C\ne 0,求n的最小值\\
&本题设计交换子和矩阵同时对角化的问题\\
&本题目的做法及其相关背景可见《迹零矩阵和交换子》一文\\
&\\
&(9)证明：任意n阶实方阵A可以分解成A=A_0+A_1+A_2\\
&其中A_0=aI_n,a\in R,A_1和A_2都是幂零矩阵\\
&本题是下述引理的直接考察:\\
&迹零矩阵一定相似于对角元都是0的矩阵\\
&我们考虑归纳法\\
&当n=1时命题显然成立\\
&设对n=k-1时命题成立\\
&当n=k时\\
&若R^n中存在向量a\\
&s.t. a,Aa线性无关\\
&则我们可将a,Aa扩充为线性空间R^n中的一组基\\
&考虑A在该线性空间中的矩阵\\
&则知A=\begin{bmatrix}
0&&\\
&&X\\
\end{bmatrix}\\
&则由归纳假设知\exists Q=\begin{bmatrix}
1&&\\
&&P\\
\end{bmatrix}s.t.\\
&QAQ^{-1}为对角元全0的矩阵\\
&故成立\\
&考虑若不存在a,s.t. a,Aa线性无关\\
&则\forall a\in R^n,a均为A的特征向量\\
&则知A为零矩阵\\
&显然满足题意\\
&故知原命题成立\\
&(10)设n阶方阵A,B满足r(ABA)=r(B).\\
&证明:AB与BA相似\\
&设A=Q\begin{bmatrix}
E\\
&&O\\
\end{bmatrix}P\\
&PBQ=\begin{bmatrix}
B_1&&B_2\\
B_3&&B_4\\
\end{bmatrix}\\
&\Rightarrow r(\begin{bmatrix}
B_1&&O\\
O&&O\\
\end{bmatrix})=r(\begin{bmatrix}
B_1&&B_2\\
B_3&&B_4\\
\end{bmatrix})\\
&AB=\begin{bmatrix}
B_1&&B_2\\
O&&O\\
\end{bmatrix}P\\
&BA=P\begin{bmatrix}
B_1&&O\\
B_3&&O\\
\end{bmatrix}\\
&故我们只需要求\begin{bmatrix}
B_1&&B_2\\
O&&O\\
\end{bmatrix}=\begin{bmatrix}
B_1&&O\\
B_3&&O\\
\end{bmatrix}\\
&而由\begin{bmatrix}
B_1&&O\\
O&&O\\
\end{bmatrix}=\begin{bmatrix}
B_1&&B_2\\
B_3&&B_4\\
\end{bmatrix}可知\\
&\exist X,Y,s.t. B_2=B_1X,B_3=YB_1\\
&故AB=P\begin{bmatrix}
I&&-X\\
O&&I\\
\end{bmatrix}\begin{bmatrix}
B_1&&O\\
O&&O\\
\end{bmatrix}\begin{bmatrix}
I&&X\\
O&&I\\
\end{bmatrix}P^{-1}\\
&BA=Q^{-1}\begin{bmatrix}
I&&O\\
Y&&I\\
\end{bmatrix}\begin{bmatrix}
B_1&&O\\
O&&O\\
\end{bmatrix}\begin{bmatrix}
I&&O\\
-Y&&I\\
\end{bmatrix}Q\\
&故知AB与BA相似\\
&(11)设A,B为n阶实对称矩阵,证明tr((AB)^2)\leq tr(A^2B^2)\\
&我们不妨设A为对角阵\\
&A=\begin{bmatrix}
a_1\\
&&a_2\\
&&&&\ddots\\
&&&&&&a_n\\
\end{bmatrix}\\
&B=\begin{bmatrix}
b_{11}&&b_{12}&&\cdots &&b_{1n}\\
b_{21}&&b_{22}&&\cdots &&b_{2n}\\
\vdots&&\vdots&&\cdots &&\vdots\\
b_{n1}&&b_{n2}&&\cdots &&b_{nn}\\
\end{bmatrix}\\
&则AB=\begin{bmatrix}
a_1b_{11}&&a_1b_{12}&&\cdots &&a_1b_{1n}\\
a_2b_{21}&&a_2b_{22}&&\cdots &&a_2b_{2n}\\
\vdots&&\vdots&&\cdots &&\vdots\\
a_nb_{n1}&&a_nb_{n2}&&\cdots &&a_nb_{nn}\\
\end{bmatrix}\\
&故tr((AB)^2)=\sum _{i=1}^{n}a_{ii}^2b_{ii}^2+\sum _{i\ne j}a_{i}a_jb_{ij}\\
&A^2=\begin{bmatrix}
a_1^2\\
&&a_2^2\\
&&&&\ddots\\
&&&&&&a_n^2\\
\end{bmatrix}\\
&tr(A^2B^2)=\sum_{i=1}^{n}\sum _{j=1}^{n}a_i^2b_{ij}^2\\
&=\sum _{i=1}^{n}a_{ii}^2b_{ii}^2+\sum _{i\leq j}(a_i^2+a_{j}^2)b_{ij}^2\\
&故由均值不等式知原命题成立\\
&(12)设\Gamma =\{\begin{bmatrix}
z_1&&z_2\\
\overline{-z_2}&&\overline{z_1}\\
\end{bmatrix}|z_1,z_2\in C\}.\\
&证明:\forall A\in \Gamma ,A的Jordan标准型仍\in T\\
&本题直接进行计算即可\\
&\\\\
&(13)设n阶实方阵A=\begin{bmatrix}
a_1&&b_1&&0&&\cdots&&0\\
*&&\ddots&&\ddots&&\ddots&&0\\
*&&\ddots&&\ddots&&\ddots&&0\\
*&&\ddots&&\ddots&&\ddots&&0\\
*&&\ddots&&\ddots&&\ddots&&b_{n-1}\\
*&&\cdots&&\cdots&&\cdots&&a_n\\
\end{bmatrix}有n个线性无关的特征向量\\
&b_1,b_2,…,b_n均不为0.\\
&记W=\{X\in R^{n\times n}|XA=AX\}\\
&证明:W是实数域R上的向量空间,且I,A,…,A^{n-1}为其一组基\\
&证明:\\
&显然W是线性空间\\
&欲证I,A,…,A^{n-1}是W的一组基\\
&显然我们可以不妨设A为标准型\\
&由A有n个线性无关的特征向量可知\\
&A必可相似对角化\\
&设\lambda 是A的一个特征值考虑(A -\lambda E)\\
&由于A-\lambda E有一个n-1阶非零子式\\
&故可知\lambda 的几何重数为1\\
&故A的标准型中属于\lambda 的Jordan块的阶数为1\\
&故知A的标准型形如\begin{bmatrix}
\lambda _1\\
&&\lambda _2\\
&&&&\ddots\\
&&&&&&\lambda _n\\
\end{bmatrix}\\
&考虑XA=AX\\
&\Rightarrow X形如\begin{bmatrix}
x_1\\
&&x_2\\
&&&&\ddots\\
&&&&&&x_n\\
\end{bmatrix}\\
&故知W的一组自然基为\\
&E_{11},E_{22},…,E_{nn}\\
&故dim W=n\\
&而I,A,…,A^{n-1}显然为W的一组基\\
&故知原命题成立\\
&\\\\
&(14)设n阶实方阵A的每个元素的绝对值都为2,证明:\\
&当n\geq 3时,|A|\leq \frac{2^{n+1}n!}{3}\\
&显然，如果我们考虑归纳法\\
&|A_{n+1}|\geq 2(n+1)|A_{n}|\geq \frac{2^{n+2}(n+1)!}{3}\\
&则知命题显然成立\\
&故知我们只需考虑n=3时的归纳奠基\\
&我们讨论A中9个元素的取值即可知n=3时命题成立\\
&故知原命题得证\\
&\\\\
&(15)设A,B分别为3\times 2,2\times 3矩阵\\
&若AB=\begin{bmatrix}
8&&0&&-4\\
-\frac{3}{2}&&9&&-6\\
-2&&0&&1\\
\end{bmatrix},求BA\\
&考虑|AB-\lambda E|=0\\
&\Rightarrow AB的特征值为9(两重)，0(一重)\\
&故由Hamilton -Cayley定理知道f(\lambda )=\lambda (\lambda -9)^2为AB的零化多项式\\
&经计算可知\lambda (\lambda -9)为AB的最小多项式\\
&故知AB(AB-9E)=0\\
&即A(BA-9E)B=0\\
&考虑到BA于AB有相同的非零特征值,\\
&故知BA可逆\\
&\Rightarrow BA(BA-9E)BA=O\\
&\Rightarrow BA=9E\\
&故知BA=\begin{bmatrix}
9&&0\\
0&&9\\
\end{bmatrix}\\
&\\\\
&(16)设\phi :M_n(R)\rightarrow R是非零线性映射,\\
&满足\phi (XY)=\phi (YX),\forall X,Y\in M_n(R)\\
&M_n(R)是实数域上n阶方阵组成的线性空间\\
&在M上定义双线性型:M_n(R)\times M_n(R) \rightarrow R为\\
&(X,Y)=\phi (X,Y)\\
&(1)证明(-,-)是非退化的,即若\\
&(X,Y)=0,\forall Y\in M_n(R),则X=O\\
&(2)设A_1,A_2,…,A_{n^2}是M_n(R)的一组基,\\
&B_1,B_2,…,B_{n^2}是相应的对偶基.\\
&即(A_i,B_j)=\delta _{ij}=\begin{cases}
0,i\ne j\\
1,i=j\\
\end{cases}\\
&证明\sum _{i=1}^{n^2}A_iB_i是数量矩阵\\
&一个熟知的结论是(X,Y)=ktr(X,Y)\\
&故我们下面直接考虑(2)的证明\\
&考虑到tr(A_iB_j)=\delta _{ij}\\
&共即有n^4个方程\\
&而考虑若将A_{i}固定,则B_j(1\leq j\leq n)中元素的总数为n^4\\
&故只管来讲,当A_i固定时,B_j的可能情况不会太多\\
&更进一步,我们考虑当A_i固定时,B_j的取值是否惟一\\
&那么我们只需考虑对应的齐次线性方程组是否有非零解\\
&考虑tr(A_iB_j)=0\\
&考虑B_j^T=c_1A_1+c_2A_2+…+c_nA_n\\
&故知tr(B_j^TB_j)=tr((c_1A_1+c_2A_2+…+c_nA_n)B_j)=0\\
&故知B_j=0\\
&故知当A_i固定时,B_j惟一确定\\
&我们尝试确定B_j的具体表达式\\
&为了体现A_i的线性无关性\\
&我们设E_{ij}=\sum _{k=1}^{n^2} x_k^{ij}A_k\\
&设B_k=\sum _{i,j=1}^{n}b_{ij}^{k}E_{ij}\\
&则tr(B_pE_{ij})=tr(B_p \sum _{k=1}^{n^2}x_k^{ij}A_k)=x_p^{ij}\\
&=tr(\sum _{s,t=1}^{n^2}b_{st}^{p}E_{st}E_{ij})=tr(\sum _{s,t=1}^{n}b_{st}^{p}\delta _{it}E_{sj})=b_{ji}^{p}\\
&故知b_{ji}^{k}=x_k^{ij}\\
&为了下面计算A_{ij}\\
&我们考虑A_k=(a_{ij})_{n\times n}\\
&A_k=\sum _{i,j=1}^{n} a_{ij}^{k}E_{ij}\\
&对比等式E_{ij}=\sum _{k=1}^{n^2}A_k两端的(p,q)元可知\\
&\delta _{ip}\delta _{jq}=\sum _{k=1}^{n^2}x_k^{ij}a_{pq}^{k}\\
&故直接计算可知\sum _{k=1}^{n^2}A_kB_k=nI\\
&故知原命题成立\\
\end{aligned}
$
# 总结与反思
CMC决赛中的高等代数问题更侧重对于线性空间和线性变换的考察,选定基作用下线性变换对应矩阵的改变是解决问题的利器。很多情况下使用Jordan标准型进行计算是求解的关键一步。对于可以进行直和分解的线性空间,考虑线性变换在子空间上对应的矩阵常常是解决问题的关键一步。但值得注意的是,如果我们想用归纳法来解决相似问题。从矩阵的初等变换角度进行思考往往是不明智的。因为和合同关系，等价关系不同，刻画相似关系的过渡矩阵是难以通过初等变换的过程来确定的。对于相似关系的刻画，我们通过进行基变换来刻画常常是要更为高效的。



对于决赛中问题的思考，研究特例往往是非常重要的手段。高等代数的问题没有数学分析中"阶"的观点这一常用的切入点。Jordan标准型,等价标准型，合同标准型，基变换,常常都是常用的解题方法。并且正如(1),转化条件后题目中的线性变换(矩阵)往往是特殊的,具有一些可定量的。而发现这一性质的关键,就在于研究特例。正如(7)和(11)研究特例发现表达式的规律是解决问题的关键。



当我们研究特例无法对问题得到有效的启发,或是在解题过程中卡住时。以简驭繁是继续推进解题重要的方法。



除了解题技巧之外，CMC决赛的代数问题十分喜欢出一些"背景题",其中交换子作为考察频率最高的背景知识值得引起我们的重视。
<!--
&(16)设A\in M_n(C),定义线性变换\\
&\sigma :M_n(C)\rightarrow M_n(C),\sigma (X)=AX-XA\\
&证明:当A可对角化时,\sigma _A也可对角化.\\
&\exists 可逆阵P\\
&s.t. A=p^{-1}\Lambda P\\
&考虑M_n(C)的自然基E_{ij}\\
&则由于P为可逆阵\\
&显然有P^{-1}E_{ij}P仍为M_n(C)的一组基\\
&考虑\sigma (P^{-1}E_{ij}P)=AP^{-1}E_{ij}P-P^{-1}E_{ij}PA\\
&=p^{-1}\Lambda E_{ij}-\Lambda E_{ij}P\\
&P^{-1}(\lambda _i-\lambda _j)E_{ij}P\\
&=(\lambda _i-\lambda _j)P^{-1}E_{ij}P\\
&则知P^{-1}E_{ij}P为\sigma (X)的n^2个线性无关的特征向量\\
&故知\sigma (X)可对角化\\
&\\\\-->


