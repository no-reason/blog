## 分式环和分式模
$
\begin{aligned}
&分式环是对于分式域的推广\\
&分式环具有泛性质:\\
&i.e.分式环是让S中元素均可逆的最小环\\
&\\\\
&在素理想下的局部化:\\
&设\mathfrak{p}是素理想\\
&令S=A/\mathfrak{p}\\
&则记S^{-1}A为A_p\\
&则从A到A_p的过程就叫做在\mathfrak{p}的局部化\\
&\\\\
&一些小结论:\\
&(1)S^{-1}A=0\iff 0\in S\\
&(2)设f\in A,S=\{f^n\}n\in N,则S^{-1}A也记作A_f\\
&(3)设\mathfrak{a}是A中任意理想,并且令S=1+\mathfrak{a}\\
&则S一定是乘法封闭的\\
&\\\\
&下面给出素理想下局部化的两个例子：\\
&(1)A=Z,\mathfrak{p}=(p)其中p是素数.\\
&A_\mathfrak{p}=所有形状为\frac{m}{n}的集合其中n不为p的倍数\\
&Proposition3.3:\\
&运算S^{-1}是正合的,\\
&i.e.若M'\overset {f}{\to}M\overset {g}{\to}M''在M正合\\
&则S^{-1}M'\overset {S^{-1}f}{\to}S^{-1}M\overset{S^{-1}g}{\to} S^{-1}M''在S^{-1}M处正合\\
&\\\\
&Proposition3.5:\\
&设M是一个A-模.则S^{-1}A-模S^{-1}M与S^{-1}A\otimes _AM同构.\\
&确切地说,\exists 惟一同构f:\\
&S^{-1}A\otimes _AM\to S^{-1}M\\
&(a/s)\otimes m\mapsto am/s\\
&\\\\
&Corallory3.6:S^{-1}A是平坦A-模\\
&\\\\
&Proposition3.7:对任意A-模M和N,\exists 惟一的S^{-1}A-模同构\\
&f:S^{-1}M\otimes _{S^{-1}A}S^{-1}N\to S^{-1}(M\otimes _A N)\\
&(m/s)\otimes (n/t)\mapsto (m\otimes n)/st\\
&
\end{aligned}
$
## 局部性质
$
\begin{aligned}
&Definition:(局部性质)\\
&A(或M)具有性质P\iff 对环A的任意素理想\mathfrak{p},A_{\mathfrak{p}}(或M_{\mathfrak{p}})也具有性质P\\
&
\end{aligned}
$