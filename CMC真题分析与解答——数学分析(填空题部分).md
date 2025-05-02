# CMC真题分析与解答——数学分析(填空题部分)
$
\begin{aligned}
&(1)由方程\begin{cases}
x+y=t\\
x^2-y^2=t\\
\end{cases}确定的曲线\begin{cases}
x=x(t)\\
y=y(t)\\
\end{cases},在(1,0)处的切线方程为\\
&\begin{cases}
\frac{dx}{dt}+\frac{dy}{dt}=1\\
2x\frac{dx}{dt}-2y\frac{dy}{dt}=1
&\end{cases}\\
&代入(1,0)有\\
&\frac{dx}{dt}=\frac{dy}{dt}=\frac{1}{2}\\
&因此所求切线方程的斜率为\frac{dy}{dx}=\frac{dy}{dt}\frac{dt}{dx}=1\\
&故知所求的切线方程为y=x-1\\
&\\\\
&(2)记L为曲线\begin{cases}
x^2+y^2+z^2=1\\
x+2y+z=0\\
\end{cases}\\
&求曲线积分\int _L(2x^2+x+y^2+y)ds\\
&CMC的填空题部分经常会出现这样的线面积分问题\\
&其中利用对称性简化计算是在CMC线面积分计算中十分常见的\\
&我们利用对称性\\
&\int _L(2x^2+x+y^2+y)ds\\
&=\int _L(x^2+z^2+\frac{1}{2}(x+z)+y+y^2)ds\\
&=\int _L(x^2+y^2+z^2+\frac{1}{2}(x+2y+z))ds\\
&=\int _Lds\\
&而L为一个半径为1的圆,故知其周长为2\pi\\
&故知ANS=2\pi \\
&\\\\
&(3)设函数y=y(x)在x=0附近由方程\\
&y+2y^2+y^3=e^{-x}+x-1所确定\\
&且y=Ax^2+Bx^3+o(x^3)(x\rightarrow 0)\\
&求(A,B)\\
&考虑到2y^2+y^3=o(x^3)\\
&故知Ax^2+Bx^3+o(x^3)=e^{-x}+x-1\\
&我们将e^{-x}Taylor 展开\\
&e^{-x}=1-x+\frac{x^2}{2}-\frac{x^3}{6}\\
&故知A=\frac{1}{2},B=\frac{-1}{6}\\
&\\\\
&(4)求极限\lim _{(x,y)\rightarrow (0,0)}(|x|+|y|)^{|xy|}\\
&我们取对数ln(|x|+|y|)^{|xy|}=|xy|ln(|x|+|y|)=A\\
&A\leq |xy|(|x|+|y|-1)(1)\\
&A\geq |xy|(1-\frac{1}{|x|+|y|})(2)\\
&\lim_{(x,y)\rightarrow (0,0)}(1)=0\\
&考虑(2)的极限\\
&令x=rcos\theta ,y=rsin\theta\\
&(2)=r^2|sin\theta cos\theta |(1-\frac{1}{r(|sin\theta +cos\theta|)})\\
&=-r\frac{sin\theta cos\theta }{|sin\theta +cos \theta |}\\
&上式关于r一致收敛于0\\
&故知\lim _{(x,y)\rightarrow (0,0)}A=0\\
&故知ANS=1\\
&\\\\
&(5)设\Omega :(x-2)^2+(y-3)^2+(z-4)^2\leq 1\\
&求积分\int \int \int _\Omega (x^2+2y^2+3z^2)dxdydz\\
&首先为了方便使用对称性,\\
&我们先做换元操作,\\
&易有原命题等价于\\
&\Omega :x^2+y^2+z^2\leq 1\\
&\int \int \int _\Omega (x^2+2y^2+3z^2+4x+12y+24z+70)dxdydz\\
&根据对称性,我们有\\
&\int\int \int _\Omega xdxdydz=\int \int \int _\Omega ydxdydz=\int \int \int _\Omega z dxdydz=0\\
&\int \int \int _\Omega x^2dxdydz=\int \int \int _\Omega y^2dxdydz=\int \int \int _\Omega z^2dxdydz\\
&故知我们只需计算\int\int\int _\Omega (2(x^2+y^2+z^2)+70)dxdydz\\
&下面我们计算\int\int\int _\Omega (x^2+y^2+z^2)dxdydz(*)\\
&我们来做球面换元x=rcos\phi,y=rsin\phi sin\theta,z=rsin\phi cos\theta\\
&其中\phi \in [0,\pi],\theta \in [0,2\pi],r\in [0,1]\\
&则dxdydz=r^2sin\phi\\
&故知(*)=\int\int\int _\Omega r^4sin\phi drd\theta d\phi\\
&=\frac{4\pi}{5}\\
&故ANS=\frac{8\pi}{5}+70\frac{4\pi}{3}\\
&=\frac{1424\pi}{15}\\
&本题仍然是利用对称性计算线面积分的例子\\
&计算量较大\\
&我们应熟悉利用对称性简化运算的方法\\
&并熟悉球面换元的Jacobi行列式的结果\\
&来减少考场上的计算量\\
&\\\\
&(6)设x_n=\sum _{k=1}^{n}\frac{e^{k^2}}{k},y_n=\int_{0}^{n}e^{x^2}dx\\
&求\lim _{n\rightarrow \infty}\frac{x_n}{y_n}\\
&由Stolz公式\\
&\frac{x_n}{y_n}=\frac{x_n-x_{n-1}}{y_n-y_{n-1}}\\
&=\frac{\frac{e^{n^2}}{n}}{\int_{n-1}^{n}e^{x^2}dx}\\
&我们使用L'Hospital法则\\
&\frac{(2x^2-1)e^{x^2}}{x^2(e^{x^2}-e^{(x-1)^2})}\\
&故最终可知该式的极限为2\\
&\\\\
&(7)求\lim_{n\rightarrow +\infty}(\Pi _{k=n}^{3n-1}k)^{\frac{1}{2n}}sin\frac{1}{n}\\
&取对数\\
&=\frac{lnn+ln(n+1)+…+ln(3n-1)-2nlnn}{2n}\\
&由Stolz定理有\\
&=\frac{ln(3n)+ln(3n+1)+ln(3n+2)-lnn-2(n+1)ln(n+1)+2nlnn}{2n}\\
&=\frac{3ln3-2}{2}\\
&故知ANS=e^{\frac{3ln3-2}{2}}\\
&\\\\
&(8)已知f在区间(-1,3)内有二阶连续导数,\\
&f(0)=12,f(2)=2f'(2)+8\\
&求\int_{0}^{1}xf''(2x)dx\\
&\int _{0}^{1}xf''(2x)dx\\
&=\int _{0}^{1}\frac{2xf''(2x)d2x}{4}\\
&=\int _{0}^{2}\frac{xf''(x)dx}{4}\\
&考虑\int _{0}^{2}xf''(x)dx\\
&=\int _{0}^{2}xdf'(x)\\
&=xf'(x)|_{0}^{2}-\int _{0}^{2}f'(x)dx\\
&=2f'(2)-f(2)+f(0)=4\\
&故知原命题ANS=1\\
&\\\\
&(9)设y(x)\in C^1[0,1)满足y(x)\in [0,\pi]且\\
&x=\begin{cases}
\frac{siny(x)}{y(x)},y\in (0,\pi]\\
1,y=0
\end{cases}\\
&易知当x=0时,y=\pi \\
&故我们直接对上式求导有\\
&1=\frac{y(x)cosy(x)y'(x)-y'(x)siny(x)}{y^2(x)}\\
&1=\frac{-\pi y'(0)}{\pi^2}\\
&\Rightarrow y'(0)=-\pi \\
&故ANS=-\pi \\
&\\\\
&(10)设f(x)=\int _{x}^{+\infty}e^{-t^2}dt,求\int _{0}^{+\infty}xf(x)dx\\
&\int _{0}^{+\infty}xf(x)dx\\
&=\frac{1}{2}\int _{0}^{+\infty}f(x)dx^2\\
&=\frac{x^2f(x)|_0^{+\infty}-\int _{0}^{+\infty}x^2f'(x)dx}{2}\\
&令t=x^2\\
&=\frac{\int _{0}^{+\infty}\sqrt{t}e^{-t}dt}{4}\\
&=\frac{\Gamma (\frac{3}{2})}{4}\\
&=\frac{\Gamma (\frac{1}{2})}{8}\\
&=\frac{\sqrt{\pi}}{8}\\
&故ANS=\frac{\sqrt{\pi}}{8}\\
&\\\\
&(11)求\lim _{x\rightarrow 0}\frac{ln(1+tanx)-ln(1+sinx)}{x^3}\\
&直接Taylor展开即有ANS=\frac{1}{2}\\
&\\\\
&(12)设\Gamma 为空间曲线\begin{cases}
x=\pi sin(\frac{t}{2})\\
y=t-sint\\
z=sin2t\\
\end{cases}从t=0到t=\pi 的一段,\\
&则求第二型曲线积分\int _Le^{sinx}(cosxcosydx-sinydy)+coszdz\\
&\int  e^{sinx}(cosxcosydx-sinydy)=e^{sinx}cosy\\
&\int  coszdz=sinz\\
&故知ANS=e^{sinx}cosy+sinz|_{t=0}^{t=\pi}\\
&\Rightarrow ANS=-2\\
&\\\\
&(13)设a为实数，关于x的方程\\
&求3x^4-8x^3-30x^2+72x+a=0有虚根的充要条件\\
&本题为中学阶段的经典问题\\
&我们数形结合即可得到ANS=(27,+\infty)\cup(-\infty,-37)\\
&\\\\
&(14)计算曲面积分\\
&I=\int \int _S\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}(a>0为常数)\\
&其中S:z=-\sqrt{a^2-x^2-y^2},取上侧,求I的值\\
&该类问题属于第二类曲面积分的计算\\
&为了使用Guass公式,我们对S进行扩展\\
&设S'=\{z=0,x^2+y^2\leq a\}\\
&则I=-(\int \int _{S\cup S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}-\int \int _{S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}})\\
&=-\int \int _{S\cup S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}+\int \int _{S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}\\
&考虑\int \int _{S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}=\int \int _{S'}a^2dxdy=a\pi a^2=a^3\pi \\
&\int \int _{S\cup S'}\frac{axdydz+(z+a)^2dxdy}{\sqrt{x^2+y^2+z^2}}=\frac{1}{a}\int \int \int _{S\cup S'}(\frac{\partial ax}{\partial x}+\frac{\partial (z+a)^2}{\partial z})dxdydz\\
&=\frac{1}{a}\int \int \int _{S\cup S'}(3a+2z)dxdydz\\
&=\frac{1}{a}(3a\int \int \int _{S\cup S'}dxdydz+2\int \int \int _{S\cup S'}zdxdydz)\\
&=2\pi a^3+2\frac{1}{a}\int \int \int _{S\cup S'}zdxdydz\\
&=2\pi a^3+\frac{1}{a} \int _{0}^{2\pi }\int _{\frac{\pi}{2}}^{\pi}\int _{0}^a r^3cos\phi sin\phi drd\phi d\theta\\
&=2\pi a^3-\frac{1}{2}a^3\pi\\
&合并上述两部分可知,ANS=-\frac{1}{2}\pi a^3\\
&\\
&事实上,本题除了直接构造Guass定理\\
&我们也可以直接使用还原法进行计算\\
&我们对S做球面换元\\
&\begin{cases}
z=acos\phi \\
x=asin\phi sin\theta \\
y=asin\phi cos\theta \\
\end{cases}\\
&dydz=\begin{vmatrix}
\frac{\partial y}{\partial \phi }&&\frac{\partial y}{\partial \theta }\\
\frac{\partial z}{\partial \phi }&&\frac{\partial y}{\partial \theta}\\
\end{vmatrix}=-a^2sin^2\phi sin\theta\\
&因此\int \int _Sxdydz\\
&=\int _{0}^{2\pi }\int _{\frac{\pi }{2}}^{\pi }-a^3sin^3\phi sin^2\theta d\phi d\theta \\
&=\int _{0}^{2\pi }\frac{-2a^3}{3}sin^2\theta d\theta \\
&=-\frac{2a^3\pi }{3}\\
&dxdy=\begin{vmatrix}
\frac{\partial x}{\partial \phi}&&\frac{\partial x}{\partial \theta }\\
\frac{\partial y}{\partial \phi }&&\frac{\partial y}{\partial \theta}\\
\end{vmatrix}=a^2sin\phi cos\phi\\
&因此\int \int _S\frac{(z+a)^2dxdy}{a}\\
&=\int _{0}^{2\pi }\int _{\frac{\pi }{2}}^{\pi}a^3(1+cos\phi)^2sin\phi cos\phi\\
&=2a^3\pi\int _{\frac{\pi}{2}}^{\pi }(1+cos\phi)^2cos\phi dcos\phi\\
&=\frac{1}{6}a^3\pi\\
&故知ANS=\frac{1}{6}a^3\pi-\frac{2}{3}a^3\pi\\
&=-\frac{1}{2}\pi a^3\\
&\\
&(15)令a_n=\int _{0}^{\frac{\pi }{4}}tan^nxdx.\\
&已知\sum_{n=1}^{+\infty}a_n^p收敛,求p的取值范围\\
&我们熟知对于\int _{0}^{\frac{\pi}{2}}tan^nxdx\\
&其值我们可以换元转化成Beta函数来计算其积分值\\
&那么对于本题,我们用同样的想法\\
&a_n=\int _{0}^{1}\frac{t^n}{1+t}\\
&故知a_n\leq \frac{1}{n+1}\\
&a_n\geq \frac{1}{2(n+1)}\\
&故知\sum a_n^p与\zeta (p)的敛散性相同\\
&故知ANS为(1,+\infty)\\
&\\
&(16)设D:x^2+2y^2\leq 2x+4y\\
&求I=\int \int _D (x+y)dxdy的值\\
&本题与(5)是同类型的题目\\
&D:(x-1)^2+2(y-1)^2=3\\
&令x'=x-1,y'=y-1\\
&则D':x'^2+2y'^2=3\\
&则I=\int \int _{D'} (x+y+2)dxdy\\
&=\int _{0}^{\sqrt{3}}\int _{0}^{2\pi }(rcos\theta+\frac{rsin\theta}{\sqrt{2}}+2)\frac{1}{\sqrt{2}}rdrd\theta\\
&=\frac{2}{\sqrt{2}}\int _{0}^{\sqrt{3}}\int _{0}^{2\pi }rdrd\theta\\
&=\frac{2}{\sqrt{2}}2\pi \frac{3}{2}\\
&=3\sqrt{2}\pi \\
\\
&(17)求级数\sum_{n=1}^{\infty}\frac{n}{3^n}\\
&本题使用中学阶段常用的错位相减或者裂项相消即可得知答案\\
&ANS=\frac{3}{4}\\
&\\
&(18)计算曲面积分I=\int \int _{x^2+y^2+z^2=1}(x^2+2y^2+3z^2)dS\\
&与之前遇到的曲面积分相同\\
&这里我们也考虑用对称性进行简化\\
&I=\int \int x^2+2y^2+3z^2dS\\
&=\int \int (x^2+2y^2+2z^2+x^2)dS\\
&=\int \int 2dS\\
&=2\times 4\pi \\
&=8\pi \\
&\\
&(19)设b>a>0,求下面反常积分的值\\
&\int _{0}^{+\infty}\frac{e^{-ax^2}-e^{-bx^2}}{x^2}dx\\
&=\int _{0}^{+\infty}(e^{-bx^2}-e^{-ax^2})d\frac{1}{x}\\
&=\frac{e^{-ax^2}-e^{-bx^2}}{x}|_{0}^{+\infty}-\int _{0}^{+\infty}\frac{1}{x}d(e^{-bx^2}-e^{-ax^2})\\
&\int _{0}^{+\infty}2be^{-bx^2}-2ae^{-ax^2}dx\\
&=\sqrt{\pi }(\sqrt{b}-\sqrt{a})\\
&\\
&(20)若关于x的方程kx+\frac{1}{x^2}=1(k>0)在区间(0,+\infty)中有惟一实数解\\
&求常数k\\
&本题考虑相切即可\\
&易知k=\frac{2\sqrt{3}}{9}\\
&\\
&(21)设函数f(x)在区间[a,b]上连续.由积分中值定理有\\
&\int _{a}^{x}f(t)dt=(x-a)f(\xi)\\
&若f_+'(a)存在且非零,\\
&求\lim _{x\rightarrow a^+}\frac{\xi -a}{x-a}的值\\
&本题处理的难点在于处理\xi\\
&结合f_+'(a)这一条件\\
&不难想到我们可以进行这样的配凑\\
&\lim _{x\rightarrow a^+}\frac{\xi -a}{x-a}\\
&=\lim _{x\rightarrow a^+}\frac{\xi -a}{f(\xi)-f(a)}\frac{f(\xi )-f(a)}{x-a}\\
&对于上式中的第一个分式,其值即为\frac{1}{f_+'(a)}\\
&对于第二个分式,我们可以利用已知条件将其转化成只与x有关的式子\\
&\frac{f(\xi)-f(a)}{x-a}=\frac{\frac{\int _{a}^{x}f(t)dt}{x-a}-f(a)}{x-a}\\
&=两次使用L'Hospital即有\\
&\frac{f(\xi)-f(a)}{x-a}=\frac{f_+'(a)}{2}\\
&故知ANS=\frac{1}{2}\\
&\\
\end{aligned}
$