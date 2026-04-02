# 
## Fermat平方和定理
$
\begin{aligned}
&奇素数p可以表示成两个正整数的平方和\iff p \equiv 1 \pmod 4\\
&(\Rightarrow )显然\\
&下面考虑证明(\Leftarrow )\\
&(一)：\\
&令q=\frac{p-1}{2}!,则q^2\equiv (-1)^{\frac{p+1}{2}}\equiv -1 \pmod p\\
&下面考虑x+qy,其中x,y\in \{0,1,\cdots ,[\sqrt{p}]\},\\
&因此数集的个数=([\sqrt{p}]+1)^2>p\\
&故知数集中必有两个元素(x_1,y_1),(x_2,y_2),s.t.\\
&x_1+qy_1=x_2+qy_2\\
&也即(x_1-x_2)=-q(y_1-y_2)\\
&i.e. (x_1-x_2)^2+(y_1-y_2)^2\equiv 0 \pmod p\\
&又有(x_1-x_2)^2+(y_1-y_2)^2<p+p=2p\\
&故知只能(x_1-x_2)^2+(y_1-y_2)^2=p\\
&故知原命题成立\\
&\\\\
\end{aligned}
$