# 利用Picard迭代解决一道数分竞赛题
## 引言
笔者近日在《全国大学生数学竞赛解析教程》一书
阅读过程中遇到了这样一道题目
$
\begin{aligned}
&设f(x)在[1,+\infty)上连续可微,f(1)=1,满足\\
&~~~~~~~~~~~~~~~~~f'(x)=\frac{1}{x^2+f^2(x)}\\
&试对\sup_{x\geq 1}f(x)进行估计\\
\end{aligned}
$
显然地，我们可以用如下方法对f(x)的上界做出粗略估计
$
\begin{aligned}
&f'(x)=\frac{1}{x^2+f^2(x)}\leq \frac{1}{x^2+1}\\
&\Rightarrow (f(x)-arctanx)'\leq 0\\
&f(x)-arctanx\leq f(1)-arctan1=1-\frac{\pi}{4}\\
&f(x)\leq 1-\frac{\pi}{4}+arctanx\leq 1+\frac{\pi}{4}\\
\end{aligned}
$
但《全国大学生数学竞赛解析教程》一书却在此基础上,
更进一步，使用迭代方法得到了更为精确的解。
而这种迭代方法的使用，自然地，让我们联想到了
解的存在唯一性的Picard定理

## Picard定理
$
\begin{aligned}
&Picard定理:\\
&设初值问题\\
&~~~~~(E): ~~~~~~~\frac{dy}{dx}=f(x,y),~~~~y(x_0)=y_0\\
&其中f(x,y)在矩形区域\\
&~~~~~~R:~~~~|x-x_0|\leq a,~~~~~|y-y_0|\leq b内连续\\
&且对y关于x一致满足Lipschitz条件\\
&则E在区间I=[x_0-h,x_0+h]上有且仅有一个解\\
&其中h=min\{a,\frac{b}{M}\},M>\max_{(x,y)\in R}|f(x,y)|\\
\end{aligned}
$
