# Moore-Penrose拟逆
## 引言
本文来自高等代数课程笔记,将依次讨论Penrose条件,Moore条件,解析刻画.
以及拟逆运算的性质,Moore-Penrose拟逆在解矩阵方程中的应用
$
\begin{aligned}
\\\\
本文与课程保持一致使用\dagger 符号来表示共轭转置\\
\end{aligned}
$
## Penrose条件
$
\begin{aligned}
&设A\in C^{m\times n},则\exists 唯一矩阵A^{-}\in C^{n\times m}s.t.\\
&\begin{cases}
&(1)AA^{-}A=A,~~~~~(A^{-}为内逆)\\
&(2)A^{-}AA^{-}=A^{-},~~~~~(A^{-}为外逆)\\
&(3)(AA^{-})^{\dagger}=AA^{-1},(A^{-}A)^{\dagger}=A^{-}A,(A^{-}A和AA^{-}均为Hermitian矩阵)\\
\end{cases}\\\\
&拟逆的存在性证明实质上是奇异值分解的一个重要应用\\
&我们对A做奇异值分解A=UDV\\
&取A^{-}=V^{\dagger}D^{-}U^{\dagger}\\
&其中D^{-}表示将D的非零对角元都变为倒数得到的矩阵\\
&验证即知符合上述Penrose条件\\
&\\
&下面考虑拟逆的唯一性\\
&反证:若A_1^{-}和A_2^{-}均满足Penrose条件\\
&则A_1^{-}=A_1^{-}AA_1^{-}=(A_1^{-}A)^{\dagger}A_1^{-}\\
&=A^{\dagger}(A_1^{-})^{\dagger}A_1^{-}=(AA_2^{-}A)^{\dagger}(A_1^{-})^{\dagger}A_1^{-}\\
&=A^{\dagger}(A_2^{-})^{\dagger}A^{\dagger}(A_1^{-})^{\dagger}A_1^{-}\\
&=(A_2^{-}A)^{\dagger}(A_1^{-}A)^{\dagger}A_1^{-}\\
&=A_2^{-}AA_1^{-}AA_1^{-}\\
&=A_2^{-}AA_1^{-}\\
&\\\\
&故A_2^{-}AA_1^{-}=A_2^{-}AA_2^{-}AA_1^{-}\\
&=A_2^{-}(AA_2^{-})^{\dagger}(AA_1^{-})^{\dagger}\\
&=A_2^{-}(A_2^{-})^{\dagger}A^{\dagger}(A_1^{-})^{\dagger}A^{\dagger}\\
&=A_2^{-}(A_2^{-})^{\dagger}A^{\dagger}\\
&=A_2^{-}(AA_2^{-})^{\dagger}=A_2^{-}AA_2^{-}=A_2^{-}\\
&故知惟一性得证\\
&\\\\
&NOTICE:Penrose条件中的Hermitian矩阵一定不可丢弃\\
&反例:\\
&例如:A=\begin{bmatrix}
1\\
2\\
\end{bmatrix},若要求Hermitian矩阵条件\\
&矩阵A_l^{-1}=(3,-1)也可满足前两条条件\\
&但A的Moore-Penrose拟逆却是(\frac{1}{5},\frac{1}{5})\\
&\\\\
\end{aligned}
$
## Moore条件
$
\begin{aligned}
&设A\in C^{n\times n},则\exists 惟一A^{-}\in C^{n\times m}s.t.\\
&\begin{cases}
&(1)AA^{-}=P_{range(A)}\\
&(2)A^{-}A=P_{range(A^{\dagger})}
\end{cases}\\
&(其中P_H表示向子空间H的投影)\\
&(range(A)表示A得列空间)\\
&\\\\
&\\\\
&换言之A^{-}是唯一使得AA^{-}和A^{-}A\\
&分别为列空间和行空间正交投影的矩阵\\
&\\\\
&我们接下来证明Moore条件和Penrose等价\\
&首先我们回顾正交投影所具有的性质:\\
&设P表示V向A得正交投影\\
&则Im(P)=A,P^2=P,P^{\dagger}=P\\
&\\
&我们首先证明Moore条件\Rightarrow Penrose条件\\
&由AA^{-}和A^{-}A都是正交投影算子可知\\
&AA^{-}和A^{-}A都是Hermitian矩阵\\
&考虑证明:AA^{-}A=A\\
&这只需证明\forall x\in V\\
&AA^{-}Ax=Ax\\
&\iff AA^{-}(Ax)=Ax\\
&考虑到AA^{-}|_{Im(A)}为恒等变换\\
&故知AA^{-}A=A\\
&考虑证明A^{-}AA^{-}=A^{-}\\
&只需证明\forall x\in V\\
&A^{-}AA^{-}x=A^{-}x\\
&又由Im(A^{-}A)=Im(A^{\dagger})\\
&=\Rightarrow A^{-}x\in Im(A^{\dagger})\\
&又由A^{-}A|_{Im(A^{\dagger})}是恒等变换\\
&故知A^{-}AA^{-}=A^{-}成立\\
&故知Moore条件\Rightarrow Penrose条件\\
&\\\\
&下面考虑Penrose条件\Rightarrow Moore 条件\\
&显然有AA^{-}和A^{-}A都是Hermitian矩阵\\
&(AA^{-})^2=AA^{-}AA^{-}=AA^{-}\\
&同理可得A^{-}A=(A^{-}A)^2\\
&下面只需证明Im(AA^{-})=Im(A)\\
&显然有Im(AA^{-})\subseteq Im(A)\\
&下面只需证明Im(A)\subseteq Im(AA^{-})\\
&Ax=AA^{-}Ax\subseteq Im(AA^{-})\\
&考虑证明Im(A^{-}A)=Im(A^{\dagger})\\
&由AA^{-}Ax=Ax可知\\
&A(A^{-}Ax-x)=0\\
&\Rightarrow A^{-}Ax-x\in ker(A)\\
&\Rightarrow A^{-}Ax-x\in (Im(A\dagger))^{\perp}\\
&故知A^{-}A确为A^{\dagger}上的正交投影映射\\
&\\\\
&综上即有Moore刻画\iff Penrose条件\\
\end{aligned}
$
## 极限刻画
$
\begin{aligned}
&设A\in C^{m\times n},则\\
&A^{-}=\lim _{k\to \infty}(A^{\dagger}A+\frac{I}{k})^{-1}A^{\dagger}\\
&=\lim_{k\to \infty}A^{\dagger}(AA^{\dagger}+\frac{I}{k})^{-1}\\
&
&\\\\
\end{aligned}
$
## 拟逆性质
### 左右可逆
$
\begin{aligned}
&设A\in C^{m\times n},将其视为映射A:C^n\to C^m\\
&(1)若A为单射,则A^{-}=(A^{\dagger}A)^{-1}A^{\dagger}\\
&此时A^{-}A=I_{C^{n\times n}}(即A左可逆)\\
&(2)若A为满射,则A^{-}=A^{\dagger}(AA^{\dagger})^{-1}\\
&此时AA^{-}=I_{C^{m\times m}}(即A右可逆)\\
&\\\\
\end{aligned}
$
### 可逆矩阵的拟逆
对于可逆矩阵而言,其拟逆即为其逆,从上述左右可逆显然
### 拟逆的运算性质
$
\begin{aligned}
&设A\in C^{m\times n}为矩阵,则\\
&\begin{cases}
(1)(A^{\dagger})^{-}=(A^{-})^{\dagger}\\
(2)A^{-}=(A^{\dagger}A)^{-}A^{\dagger}=A^{\dagger}(AA^{\dagger})^{-}\\
(3)拟逆的运算一般不具有穿脱原则\\
~i.e.(AB)^{-}一般不等于B^{-}A^{-}\\
\end{cases}\\
&针对上述(3),我们有如下反例:\\
&A=\begin{bmatrix}
1&&0\\
\end{bmatrix},B:\begin{bmatrix}
1\\
1\\
\end{bmatrix}\\
&则AB=1,(AB)^{-}=1\\
&考虑计算B^{-},我们首先计算B的奇异值分解\\
&BB^T=\begin{bmatrix}
1&&1\\
1&&1\\
\end{bmatrix}\\
&\Rightarrow B的奇异值为\sqrt{2}\\
&对于0而言BB^T的特征向量为\begin{bmatrix}
\frac{1}{\sqrt{2}}\\
-\frac{1}{\sqrt{2}}\\
\end{bmatrix}\\
&对于2而言BB^T的特征向量为\begin{bmatrix}
\frac{1}{\sqrt{2}}\\
\frac{1}{\sqrt{2}}\\
\end{bmatrix}\\
&故知BB^T=\begin{bmatrix}
\frac{1}{\sqrt{2}}&&\frac{1}{\sqrt{2}}\\
\frac{1}{\sqrt{2}}&&-\frac{1}{\sqrt{2}}\\
\end{bmatrix}\begin{bmatrix}
2\\
&&0\\
\end{bmatrix}\begin{bmatrix}
\frac{1}{\sqrt{2}}&&\frac{1}{\sqrt{2}}\\
\frac{1}{\sqrt{2}}&&-\frac{1}{\sqrt{2}}\\
\end{bmatrix}\\
&B^TB=2\\
&\Rightarrow B的奇异值分解为B=\begin{bmatrix}
\frac{1}{\sqrt{2}}&&\frac{1}{\sqrt{2}}\\
\frac{1}{\sqrt{2}}&&-\frac{1}{\sqrt{2}}\\
\end{bmatrix}\begin{bmatrix}
\sqrt{2}\\0\\
\end{bmatrix}1\\
&\Rightarrow B的拟逆为1\begin{bmatrix}
\frac{1}{\sqrt{2}}&&0\\
\end{bmatrix}\begin{bmatrix}
\frac{1}{\sqrt{2}}&&\frac{1}{\sqrt{2}}\\
\frac{1}{\sqrt{2}}&&-\frac{1}{\sqrt{2}}\\
\end{bmatrix}\\
&即B^{-}=\begin{bmatrix}
&\frac{1}{2}&&\frac{1}{2}\\
\end{bmatrix}\\
&事实上对于上述两个例子\\
&我们也可以不使用奇异值分解来计算拟逆\\
&根据上面小节提到的左右逆\\
&我们可以使用更便捷的方法来计算拟逆\\
&下面我们用该方法来计算 A的拟逆\\
&将A视为C^2\to C的满射\\
&则A^{-}=A^{\dagger}(AA^{\dagger})^{-1}\\
&=\begin{bmatrix}
1\\
0\\
\end{bmatrix}\cdot 1=\begin{bmatrix}
1\\
0\\
\end{bmatrix}\\
&\\
&事实上,对于一些特殊的情况,拟逆的运算也是可以满足穿脱原则的\\
&若A\in C^{m\times n}为矩阵，U\in C^{m\times m},V\in C^{n\times n}为酉矩阵\\
&则(UAV)^{-}=V^{-}A^{-}U^{-}\\
&利用V_{-}A^{-}U^{-}=V^{\dagger}A^-U^{\dagger}带入Penrose条件即可获证\\
&\\\\
&对于(1)我们带入拟逆的奇异值分解表示即可获证\\
&对于(2)带入拟逆的奇异值分解表达式后,\\
&利用特殊情况下的拟逆运算满足穿脱原则即可获证\\
&\\\\
\end{aligned}
$
## 线性矩阵方程的求解
$
\begin{aligned}
&设A,B,C\in C^{m\times n},\\
&AXB=C有解\iff AA^{-}CB^{-}B=C\\
&此时通解为X=A^{-}CB^{-}+Y-A^{-}AYBB^{-}\\
&其中Y\in C^{m\times n}任意\\
&\\\\
&设矩阵A\in C^{m\times n},向量b\in C^{m\times 1}\\
&且已知Ax=b有解(AA^{-}b=b),则其通解为:\\
&x=A^{-}b+(1-A^{-}A)y\\
&其中y\in C^{m\times 1}任意\\
&\\\\
&矩阵方程AX=C,XB=D有解的充要条件是\\
&AX=C和XB=D分解有解且AD=CB\\
&\\\\
&上述结论仿照线性方程组通解公式证明即可\\
\end{aligned}
$