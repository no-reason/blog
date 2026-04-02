# Opial不等式
## 前言
在第二十九届大连市数学竞赛中,Opial 不等式曾直接作为考题出现。本文将介绍对Opial不等式及其推广进行简单介绍
## Opial 不等式
$
\begin{aligned}
&(单端点限制)(29届大连市数学竞赛P2):\\
&设函数f(x)在[a,b]上有连续的导函数且f(a)=0,则:\\
&\int _{a}^{b}|f(x)f'(x)|dx\leq \frac{b-a}{2}\int _{a}^{b}|f'(x)|^2dx\\
&\\\\
&(双端点限制)设函数f(x)在[a,b]上有连续的导函数且f(a)=f(b)-0,则:\\
&\int _{a}^{b}|f(x)f'(x)|dx\leq \frac{b-a}{4}\int _a^b|f'(x)|^2dx\\
&\\\\
&
\end{aligned}
$
## 证明
$
\begin{aligned}
&(形式1):\\
&f(x)=\int _{a}^{x}f'(t)dt\\
&故有|f(x)|\leq \int _{a}^{x}|f'(t)|dt\\
&故LHS=\leq \int _{a}^{b}\int _{a}^{x}|f'(t)|dt|f'(x)|dx\\
&=\int _{a}^{b}\int _{a}^{x}|f'(t)|dtd\int _{a}^{x}|f'(t)|dt\\
&=\frac{(\int _{a}^{b}|f'(t)|dt)^2}{2}\\
&由Cauchy不等式\leq RHS\\
&故原命题得证\\
&\\\\
&(形式2):\\
&利用形式1,我们有\\
&\int _a^{\frac{b+a}{2}}|f(x)f'(x)|dx\leq \frac{b-a}{4}\int _{a}^{\frac{a+b}{2}}|f'(x)|^2dx\\
&\int _{\frac{a+b}{2}}^{b}|f(x)f'(x)|dx\leq \frac{b-a}{4}\int _{\frac{a+b}{2}}^{b}|f'(x)|^2dx\\
&将上述两式项加即有:\\
&\int _{a}^{b}|f(x)f'(x)|dx\leq \frac{b-a}{4}\int _a^b|f'(x)|^2dx\\
\end{aligned}
$
## 推广
$
\begin{aligned}
&(形式1):\\
&p\geq 0,q\geq 1,f(x)\in C^{1}[a,b],f(a)=0,\\
&则\int _{a}^{b}|f(x)|^p|f'(x)|^{q}dx\leq \frac{q(b-a)^{p}}{p+q}\int _{a}^{b}|f'(x)|^{p+q}dx\\
&\\\\
&(形式2):\\
&p\geq 0,q\geq 1,f(x)\in C^{1}[a,b],f(a)=0,f(b)=0\\
&则\int _{a}^{b}|f(x)|^p|f'(x)|^{q}dx\leq \frac{q(\frac{b-a}{2})^{p}}{p+q}\int _{a}^{b}|f'(x)|^{p+q}dx\\
&\\\\
&下面我们只对(形式1)进行证明,(形式1)证明后\\
&用上面同样的方法即可证明(形式2)\\
&\\\\
&对于(形式1),我们下面只证明a=0,b=1的情况\\
&只需证明\int _{0}^{1}|f(x)|^{p}|f'(x)|^{q}dx\leq \frac{q}{p+q}\int _{0}^{1}|f'(x)|^{p+q}dx\\
&|f(x)|^{p}=|\int _{0}^{x}f'(t)dt|^{p}\leq (\int _{0}^{x}|f'(t)|dt)^{p}\\
&我们考虑使用Holder不等式建立(\int _{0}^{x}|f'(t)|dt)^{p}与\int _{0}^{x}|f'(t)|^{q}dt的联系\\
&\\
&考虑待定系数法\\
&|\int _{0}^{x}|f'(t)|^{q}dt|^{a}(\int _{0}^{x}1dt)^{b}\geq (\int _{0}^{x}|f'(t)|^{\frac{aq}{a+b}}dt)^{a+b}\\
&令a+b=p,\frac{aq}{a+b}=1\\
&则a=\frac{p}{q},b=p-\frac{p}{q}\\
&故有\\
&(\int _{0}^{x}|f'(t)|dt)^{p}\leq (\int _{0}^{x}|f'(t)|^{q}dt)^{\frac{p}{q}}(\int _{0}^{x}1dt)^{b}\\
&\leq (\int _{0}^{x}|f'(t)|^{q}dt)^{\frac{p}{q}}\\
&故知\int _{0}^{1}|f(x)|^{p}|f'(x)|^{q}dx\leq \int _0^1(\int _0^{x}|f'(t)|^{q}dt)^{\frac{p}{q}}|f'(t)|^{q}dt\\
&=\int _{0}^{1}(\int _{0}^{x}|f'(t)|^{q}dt)^{\frac{p}{q}}d\int _{0}^{x}|f'(t)|^{q}dt\\
&=\frac{q}{p+q}(\int _{0}^{1}|f'(t)|^{q}dt)^{\frac{p+q}{q}}\\
&下面只需证明:\\
&(\int _{0}^{1}|f'(x)|^{q}dx)^{\frac{p+q}{q}}\leq \int _{0}^{1}|f'(x)|^{p+q}dx\\
&\\
&继续考虑待定系数法使用Holder不等式\\
&(\int _{0}^{1}|f'(x)|^{p+q}dx)^{a}(\int _{0}^{1}1dt)^{b}\geq (\int _{0}^{1}|f'(x)|^{\frac{a(p+q)}{a+b}})^{a+b}\\
&\\
&\begin{cases}
&a+b=\frac{p+q}{q}\\
&\frac{a(p+q)}{a+b}=q\\
\end{cases}\\
&\Rightarrow a=1\\
&b=\frac{p}{q}\\
&故有原命题成立\\
&\\\\
\end{aligned}
$