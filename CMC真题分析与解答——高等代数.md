# CMC真题分析与解答——高等代数(填空部分)
$
\begin{aligned}
&(1)将24阶实对称矩阵按合同关系进行分类,\\ 
&则共有多少种.\\ 
&我们知道两矩阵合同当且仅当其具有相同的秩和正惯性指数\\
&分类枚举即知\\ 
&ANS=1+2+…+25=325\\ 
\\\\
&(2)设A为n\times n实矩阵.若A^n=0,但A^{n-1}\ne 0,求A的秩\\
&首先作为填空题,\\
&我们直接构造A=特征值为0的n阶Jordan块\\
&即知A的秩为n-1\\
&由A^n=0可知,A的特征值全为0\\
&故我们写出A的Jordan标准型\\
&A\sim \begin{bmatrix}
J_1\\
&&J_2\\
&&&&J_3\\
&&&&&&\ddots \\
&&&&&&&&J_k\\
\end{bmatrix}\\
&则由我们熟知J^m(n,\lambda)=\begin{bmatrix}
\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&C_m^2\lambda ^{m-2}&&\cdots&&C_m^{n-1}\lambda ^{m-n+1}\\
0&&\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&\cdots&&C_m^{m-2}\lambda ^{m-n+2}\\
\vdots&&\vdots&&\vdots&&\ddots&&\vdots\\
0&&0&&0&&\cdots&&\lambda ^m\\
\end{bmatrix}\\
&对于本题中的Jordan块对应的特征值为0\\
&所以我们有\\
&J^{k-1}(k,0)=0\\
&而由A^{n-1}\ne 0\\
&故可知A的Jordan标准型一定有一个n阶Jordan块\\
&故知A\sim \begin{bmatrix}
0&&1\\
&&0&&1\\
&&&&\ddots&&\ddots\\
&&&&&&0&&1\\
&&&&&&&&0\\
\end{bmatrix}\\
&故知A的秩一定是n-1\\
\\\\
&(3)设A为n\times n实矩阵,m为正整数,I为n\times n单位阵\\
&(I+A)^m=0,求|A|\\
&首先由于本题是填空题\\
&我们直接取A=-I\\
&则有|A|=(-1)^n\\
&下面我们来关注本题的完整解答\\
&由(I+A)^m=0\\
&我们知A的所有特征值均为-1\\
&故知|A|=\Pi \lambda =(-a)^n\\
&\\\\
&(4)求矩阵\begin{bmatrix}
1&&0&&1&&0&&0\\
0&&1&&0&&1&&0\\
0&&0&&1&&0&&1\\
0&&0&&0&&1&&0\\
0&&0&&0&&0&&1\\
\end{bmatrix}的Jordan标准型\\
&本题依照公式进行计算即可\\
&我们熟知k阶Jordan块个数的计算公式为r_{k-1}+r_{k+1}-2r_k\\
&其中r_k代表(A-\lambda E)^k的秩\\
&经计算可有\\
&ANS=\begin{bmatrix}
1&&1\\
0&&1\\
0&&0&&1&&1\\
0&&0&&0&&1&&1\\
0&&0&&0&&0&&1\\
\end{bmatrix}\\
\\\\
&(5)设A为2021阶对称矩阵,A的每一行均为1,2,…,2021的一个排列\\
&则求A的迹=\\
&易知,在A的每一行每一列中每个元素都只能出现一次\\
&结合A的阶数为奇数\\
&则我们可以推知A的对角元必然为1,2,…,2021的一个排列\\
&故tr(A)=1+2+…+2021=1011\times 2021\\
&\\\\
&(6)设矩阵A=\begin{bmatrix}
1&&-2&&0\\
1&&0&&1\\
0&&2&&1\\
\end{bmatrix}的奇异值分解为A=U\Lambda V,\\
&求\Lambda \\
&本题仍然也是依照公式进行计算即可\\
&我们熟知A的奇异值为AA^T特征值的算数平方根\\
&AA^T=\begin{bmatrix}
5&&1&&-4\\
1&&2&&1\\
-4&&1&&5\\
\end{bmatrix}\\
&计算可得AA^T的特征值为\\
&0,3,0\\
&故知所求的\Lambda =\begin{bmatrix}
\sqrt{3}\\
0&&3\\
0&&0&&0\\
\end{bmatrix}\\
&\\\\
&(7)设A为实对称方阵,(1,0,1)和(1,2,0)构成共行向量的一个极大无关组,\\
&求A\\
&直接进行讨论我们可得\\
&A=\begin{bmatrix}
1&&1&&1\\
0&&-4&&2\\
1&&2&&0\\
\end{bmatrix}或\begin{bmatrix}
\frac{3}{2}&&1&&1\\
1&&2&&0\\
1&&0&&1\\
\end{bmatrix}\\
&\\\\
&(8)设U为8阶实正交方阵,\\
&U中元素全为\frac{1}{2\sqrt{2}}的3\times 3子矩阵的个数为t\\
&求t个数的最大值\\
&这里我们需要对问题做一步重要的简化\\
&由于表示交换的初等矩阵一定是正交阵\\
&故我们可以不妨设U=\begin{bmatrix}
\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&a_1&&a_2&&a_3&&a_4&&a_5\\
\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&b_1&&b_2&&b_3&&b_4&&b_5\\
\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&\frac{1}{2\sqrt{2}}&&c_1&&c_2&&c_3&&c_4&&c_5\\
\cdots\\
\end{bmatrix}\\
&则由U是正交阵\\
&我们有\sum a_i^2=\frac{5}{8},\sum b_i^2=\frac{5}{8},\sum c_i^2=\frac{5}{8}\\
&\sum a_ib_i=\sum b_ic_i=\sum a_ic_i=0\frac{3}{8}\\
&\sum (a_i+b_i+c_i)^2=3\times \frac{5}{8}-6\times \frac{3}{8}<0\\
&故知这样的U不存在\\
&故知ANS=0\\
&\\\\
&(9)设实方阵H_1=\begin{bmatrix}
0&&1\\
1&&0\\
\end{bmatrix},H_{n+1}=\begin{bmatrix}
H_n&&I\\
I&&H_n\\
\end{bmatrix},求r(H_4)\\
&我们直接打洞计算\\
&H_4=\begin{bmatrix}
H_3&&I\\
I&&H_3\\
\end{bmatrix}\sim\begin{bmatrix}
O&&I\\
I-H_3^2&&O\\
\end{bmatrix}\\
&\Rightarrow ANS=8+r(I-H_3^2)\\
&I-H_3^2=I-\begin{bmatrix}
H_2&&I\\
I&&H_2\\
\end{bmatrix}^2\\
&=-\begin{bmatrix}
H_2^2&&2H_2\\
2H_2&&H_2^2\\
\end{bmatrix}\\
&故只需要考虑r(\begin{bmatrix}
H_2^2&&2H_2\\
2H_2&&H_2^2\\
\end{bmatrix})\\
&上式\sim \begin{bmatrix}
O&&H_2\\
4H_2-H_2^3&&O\\
\end{bmatrix}\\
&我们易知r(H_2)=2\\
&下面只需计算r(4H_2-H_2^3)\\
&4H_2-H_2^3=H_2(4I-H_2^2)\\
&=H_2(4I-\begin{bmatrix}
H_1^2+I&&2H_1\\
2H_1&&H_1^2+I\\
\end{bmatrix})\\
&=H_2(4I-\begin{bmatrix}
2I&&2H_1\\
2H_1&&2I\\
\end{bmatrix})\\
&=H_2\begin{bmatrix}
2I&&-2H_1\\
-2H_1&&2I\\
\end{bmatrix}\\
&=\begin{bmatrix}
H_1&&I\\
I&&H_1\\
\end{bmatrix}\begin{bmatrix}
2I&&-2H_1\\
-2H_1&&2I\\
\end{bmatrix}=O\\
&故知ANS=8+2+0=10\\
&\\\\
&(10)设二次型f(x_1,x_2,…,x_n)=(x_1,x_2,…x_n)A(x_1,x_2,…,x_n)^T\\
&其中A=\begin{bmatrix}
1&&a&&a&&\cdots &&a\\
a&&1&&a&&\cdots &&a\\
\vdots&&\vdots&&\vdots&&\vdots&&\vdots\\
a&&\cdots&&a&&1&&a\\
a&&a&&\cdots&&a&&1\\
\end{bmatrix}\\
&求f在正交变换下的标准型.\\
&本题仍然套公式计算即可\\
&根据笔者之前所更新文章《行列式计算的一些问题与方法》\\
&即可易知A矩阵的特征值为\\
&(1-a)(n-1)重,(1+(n-1)a)1重\\
&故知ANS=(1-a)y_1^2+…+(1-a)y_{n-1}^2+(1+(n-1)a)y_n^2\\
&本题需要特别小心的一件事是\\
&题目中要求我们求的是f的标准型\\
&f为一个二次型，其标准型应为二次型\\
&不要写成其二次型对应的矩阵\\
&\\\\
&设x^4+3x^2+2x+1=0的四个根为x_1,x_2,x_3,x_4\\
&求下面行列式的值\\
&\begin{bmatrix}
x_1&&x_2&&x_3&&x_4\\
x_2&&x_3&&x_4&&x_1\\
x_3&&x_4&&x_1&&x_2\\
x_4&&x_1&&x_2&&x_3\\
\end{bmatrix}\\
&题中矩阵为循环矩阵\\
&依《行列式计算的一些问题与方法》\\
&中的相关介绍,我们有求解该类行列式的通法\\
&但在本题中，我们注意到\\
&原方程的三次项为0,\\
&故我们直接将第2,3,4列加到第1列\\
&则立刻有ANS=0\\
&\\\\
&(11)记两个特征值为1,2的2阶实对称矩阵的全体为\Gamma .\\
&\forall A\in \Gamma ,a_{21}表示A的(2,1)位置元素\\
&求集合\cup _{A\in \Gamma}\{a_{21}\}的最小元\\
&此题我们将易知条件表示出来\\
&之后进行放缩求最值即可\\
&设A=\begin{bmatrix}
a&&c\\
c&&b\\
\end{bmatrix}\\
&则(a-\lambda)(b-\lambda)-c^2=0\\
&\Rightarrow \begin{cases}
(a-1)(b-1)-c^2=0\\
(a-2)(b-2)-c^2=0\\
\end{cases}\\
&\Rightarrow a+b=3\\
&c^2=(a-1)(b-1)\leq (\frac{a+b-2}{2})^2\\
&\Rightarrow c>-\frac{1}{2}\\
&等号显然可以取到\\
&\\\\
&(12)设\Gamma 为形如如下形式的2016阶矩阵全体:\\
&矩阵的每行每列只有一个非零元素,\\
&且该非零元素为1\\
&求\sum _{A\in \Gamma}|A|\\
&由奇偶排列的个数相等即有\\
&ANS=0\\
&\\\\
&(13)若实向量X=(a,b,c)的三个分量a,b,c满足\\
&\begin{bmatrix}
a&&b\\
0&&c\\
\end{bmatrix}^{2016}=I_2\\
&求X\\
&我们对X做相似对角化\\
&有X=\begin{bmatrix}
1&&b\\
0&&c-a\\
\end{bmatrix}\begin{bmatrix}
a\\
&&c\\
\end{bmatrix}\begin{bmatrix}
1&&b\\
0&&c-a
\end{bmatrix}^{-1}\\
&(这里在\begin{bmatrix}
1&&b\\
0&&c-a\\
\end{bmatrix}可逆的情况下讨论)\\
&则有\begin{bmatrix}
a^2016&&bc^2016\\
0&&(c-a)c^2016\\
\end{bmatrix}=\begin{bmatrix}
1&&b\\
0&&c-a\\
\end{bmatrix}\\
&\Rightarrow \begin{cases}
a^2016=1\\
bc^2016=b\\
(c-a)c^2016=c-a\\
\end{cases}\\
&\Rightarrow a=\pm 1\\
&若c与a相等,则可知\begin{bmatrix}
1&&b\\
0&&c-a\\
\end{bmatrix}不可逆\\
&此时\begin{bmatrix}
a&&b\\
0&&c\\
\end{bmatrix}^2016我们无法通过相似对角化计算\\
&但是此时我们可以利用Jordan块方幂计算的经验\\
&J^m(n,\lambda)=\begin{bmatrix}
\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&C_m^2\lambda ^{m-2}&&\cdots&&C_m^{n-1}\lambda ^{m-n+1}\\
0&&\lambda ^{m}&&C_m^1 \lambda ^{m-1}&&\cdots&&C_m^{m-2}\lambda ^{m-n+2}\\
\vdots&&\vdots&&\vdots&&\ddots&&\vdots\\
0&&0&&0&&\cdots&&\lambda ^m\\
\end{bmatrix}\\
&那么\begin{bmatrix}
a&&b\\
0&&a\\
\end{bmatrix}也应有类似的结构\\
&故我们可知b=0\\
&当a\ne c时\\
&由(a-c)c^{2016}=a-c可知\\
&c=\pm 1\\
&此时b可以取任意数\\
&故知ANS=(1,0,1)or(-1,0,-1)or(1,t,-1)or(-1,t,1)(t\in R)\\
&\\\\
&(14)A=(a_{ij})为n阶实对称矩阵(n>1),r(A)=n-1\\
&A的每行元素之和均为0.设2,3,…,n为A的全部非零特征值\\
&用A_{11}表示A的元素a_{11}所对应的代数余子式,求A_{11}\\
&由A的每行元素之和为0可知\\
&A(1,1,…,1)^T=0\\
&故知(1,1,…,1)为特征值0对应的一个特征向量\\
&由r(A)=n-1可知,A的0特征值的代数重数为1\\
&由特征值的几何重数\leq 代数重数可知\\
&0所对应的特征向量只有(1,1,…,1)\\
&考虑AA*=|A|E=O\\
&故知A*的列向量均与(1,1,…,1)共线\\
&又由A是实对称矩阵,故知A*也是实对称矩阵\\
&故知A*=k\begin{bmatrix}
1&&1&&\cdots&&1\\
1&&1&&\cdots&&1\\
\vdots&&\vdots&&\cdots&&\vdots\\
1&&1&&\cdots&&1\\
\end{bmatrix}\\
&考虑特征多项式\lambda (\lambda -2)…(\lambda -n)=\lambda ^n-(\sum 一阶主子式)\lambda ^{n-1}+(\sum 二阶主子式)\lambda ^{n-2}+(-1)^{n-1}(\sum (n-1)阶主子式)\lambda \\
&故知(-1)^{n-1}nA_{11}=(-1)^{n-1}n!\\
&\Rightarrow A_{11}=(n-2)!\\
&故ANS=(n-2)!\\
&\\\\
&(15)求实二次型2x_1x_2-x_1x_3+5x_2x_3的规范形\\
&本题仍然为计算题\\
&我们直接配方即可得到\\
&所求的规范形为y_1^2+y_2^2-y_3^2\\
&
\end{aligned}
$