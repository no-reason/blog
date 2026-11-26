
## 对偶空间

$
\begin{aligned}
&L(X,K),K=C~~~or ~~~R\\
&把K取成C或者R的话\\
&那么K就是完备的\\
&那么L(X,K)就一定是完备的(这个是前面的结论，X是否完备不影响)\\
&\\\\
&X'=L(X,K)\\
&(这里和高代中的对偶空间最显著的区别)\\
&在于这里:\\
&x=\sum_{}^{\infty}a_{i}e_{i}\\
&然后如果f(x)的话,未必可以直接线性化\\
&(因为这个需要极限和求和换序,需要某种连续性)\\
&\\\\
&\\
&X'可以分离X中的点\\
&考虑f_{x}:span\{x\}\to C\\
&\lambda x\mapsto \lambda \|x\|\\
&利用Hahn-Banach定理对f_{x}做延拓\\
&得到\tilde{f_{x}}:X\mapsto C\\
&\tilde{f_{x}(\lambda x)}=\lambda \|x\|\\
&考虑f_{u}(x)\ne f_{u}(y)\\
&i.e. \\
&f_{u}(x-y)\ne 0\\
&取u=x-y\\
&则f_{x-y}(x-y)=\|x-y\|\\
&\\
&th4.1\\
&对Banach空间X,如果X'可分(在范数拓扑下),则X也可分\\
&\\
&proof:\\
&一方面:\\
&\exists \{f_{n}\},s.t.\\
&\|f_{n}\|=1\\
&且\{f_{n}\}在X的单位球面中稠密\\
&\\
&\forall \|f\|_{X'}=1,\\
&\forall \epsilon>0\\
&\exists f_{n},s.t.\|f_{n}-f\|_{X'}<\epsilon\\
&\\
&\|f_{n}\|_{X'}=\sup_{\|x\|=1}\|f_{n}(x)\|=1\\
&\\
&\exists x_{n},s.t.|f_{n}(x_{n})|>\frac{1}{2}\\
&下面证明\overline{span\{x_{n}\}}=X\\
&反证:设\overline{span\{x_{n}\}}\ne X\\
&\exists y\in X,y\notin \overline{span\{x_{n}\}}\\
&\exists f\in X',s.t. f|_{M}=0\\
&(M=\overline{span\{x_{n}\}})\\
&f(y)=1\\
&将该泛函f延拓到整个X上\\
&\|f\|_{X'}=1\\
&f_{M}=0\\
&i.e.,f(x_{n})=0\\
&y\notin M,\|y\|=1,f(y)=1\\
&\\
&since,\{f_{n}\}在X'的单位球面中稠密\\
&\\
&\exists f_{n}\overset{\|\|_{X'}}{\to }f\\
&\\
&故\\
&\|f_{n}-f\|_{X'}=\sup_{\|x\|=1}|f_{n}(x)-f(x)|\\
&\geq |f_{n}(x_{n})-f(x_{n})|=|f_{n}(x_{n})|>\frac{1}{2}\\\\
&\\ 
&\\
&另一方面:\\
&下面的例子就可以知道\\
&如果X可分,则X'不一定可分\\
&\\
&
\end{aligned}
$

### 几个具体空间的对偶空间


$
\begin{aligned}
&(l^{1})\\
&l^{1}=\{a=(a_{n})| \sum_{n=1}^{\infty}|a_{n}|<\infty\}\\
&e_{n}=(0,0,\cdots,1,0,\cdots)\\
&下面证明(l^{1})'\cong \ell^{\infty}\\
&(而且是等距同构)\\
&\\
&证明:\\
&l^{\infty} \subset {l^{1}}'\\
&l' \to C\\
&(a_{n})\to \sum_{n=1}^{\infty}a_nb_{n}\\
&\\
&成立\\
&\\
&{l^{1}}' \subset l^{\infty}\\
&\\
&考虑f\mapsto (f(e_{n}))_{n=1}^{\infty}\\
&x=\sum_{i=1}^{n}a_{i}e_{i}\\
&f(x)=\sum_{i=1}^{n}a_{i}f(e_{i})\\
&\\
&对于有限而言,现在的映射是成立的\\
&下面就是考虑极限为什么也成立\\
&x\in \ell^{1},x=(x_{n}),\sum_{n=1}^{\infty}|x_{n}|<\infty\\
&x_{m}=\sum_{i=1}^{m}x_{i}e_{i}\in c_{00}\\
&\\
&x_{m}\overset{\ell_{1}}{\to }x\\
&(这个极限情况下的证明没太听懂,课后补一下)\\
&\\
&通过这个具体问题\\
&我们可以考虑如果X可分\\
&能否关联得到L(X,F)可分\\
&从这个例子来看是不可以的\\
&因为\ell^{1}可分,但是\ell^{\infty}不可分\\
&\\\\
&C[0,1]'=M([0,1])\\
&(就是[0,1]上的测度空间)\\
&(这里讲了一下测度空间和有界变差函数的事情)\\
&\\
\end{aligned}
$



