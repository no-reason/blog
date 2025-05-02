# 一道CMC高代真题及其推广
## 前言
$
\begin{aligned}
&在15届CMC决赛中,出现了这样一道题\\
&设A\in R^{n\times n},求证:A^4=E\\
&\iff r(E-A)+r(E+A+A^2+A^3)=n\\
&而笔者在之前的一篇文章\\
&《对两个矩阵秩问题的充要性探究》中\\
&曾提及下面两个问题\\
&(1)A^2=E\iff r(A+E)+r(A-E)=n\\
&(2)A^2=A\iff r(A)+r(A-E)=n\\
&自然地，这道CMC决赛真题\\
&其实正是(1)的推广\\
&本文将对上述CMC决赛真题做出解答\\
&并尝试对其做出进一步的推广\\
\end{aligned}
$
## 证明
$
\begin{aligned}
&(\Rightarrow):\\
&由A^4=E\Rightarrow (A-E)(A^3+A^2+A+E)=0\\
&\Rightarrow r(A-E)+r(A^3+A^2+A+E)\leq n\\
&而r(A-E)+r(A^3+A^2+A+E)\\ 
&\geq r((E-A)(E+E+A+E+A+A^2))+r(A^3+A^2+A+E)\\
&\geq r((E-A)(E+E+A+E+A+A^2)+A^3+A^2+A+E)\\
&=r(E)=n\\
&故知r(A-E)+r(A^3+A^2+A+E)=n\\
&(\Leftarrow):\\
&欲证A^4=E\\
&我们只需证明A^4-E=O\\
&这只需证明\forall x， (A^4-E)x=0\\
&只需(A-E)(A^3+A^2+A+E)x=0\\
&我们考虑(A-E)与(A^3+A^2+A+E)的kernel\\
&考虑到r(A-E)+r(A^3+A^2+A+E)=n\\
&故知dim ker(A-E)+dim ker(A^3+A^2+A+E)=n\\
&下面考虑ker(A-E)\cap ker(A^3+A^2+A+E)\\
&设x\in ker(A-E)\cap ker(A^3+A^2+A+E)\\
&(A-E)x=0,(A^3+A^2+A+E)x=0\\
&\Rightarrow(E+E+A+E+A+A^2)(E-A)x=0\\
&\Rightarrow Ex=0\\
&\Rightarrow x=0\\
&故知ker(A-E)\cap ker(A^3+A^2+A+E)=\{0\}\\
&故知R^n=ker(A-E)\oplus ker(A^3+A^2+A+E)\\
&\forall x \in R^n\\
&设x=a+b\\
&其中a\in ker(A-E),b\in ker(A^3+A^2+A+E)\\
&则(A-E)(A^3+A^2+A+E)x\\
&=(A-E)(A^3+A^2+A+E)b+(A^3+A^2+A+E)(A-E)a\\
&=0\\
&故知必要性成立\\
&综上所诉可知原命题成立\\
\end{aligned}
$
## 推广
$
\begin{aligned}
&(1)求证:A^n=E\iff r(A-E)+r(E+A+A^2+…+A^{n-1})=n\\
&(2)求证:A^n=A\iff r(A)+r(A^{n-1}-E)=n\\
&(1)的证明方法几乎和上面CMC真题的方法相同\\
&我们在这里给出(2)的证明\\
&(\Rightarrow)A(A^{n-1}-E)=0\\
&\Rightarrow r(A)+r(A^{n-1}-E)\leq n\\
&另一方面,r(A)+r(A^{n-1}-E)\\
&\geq r(A^{n-1})+r(A^{n-1}-E)\\
&\geq r(E-A^{n-1}+A^{n-1})=n\\
&故知r(A)+r(A^{n-1}-E)=n\\
&(\Leftarrow)\\
&易证:R^n=ker(A)\oplus ker(A^{n-1}-E)\\
&则\forall x \in R^n,设x=a+b\\
&其中a\in ker(A),b\in ker(A^{n-1}-E)\\
&则有A(A^{n-1}-E)x=0恒成立\\
&故知原命题得证\\
\end{aligned}
$