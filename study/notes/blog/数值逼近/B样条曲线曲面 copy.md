# B样条曲线曲面

## B样条基函数及其基本性质
(老师讲了一下Bezier提取这个东西,后面会讲还会涉及节点插入)
(B样条曲线相较于Bezier曲线新增加了两方面的自由度:一方面是可以自由控制所用B样条的次数，另一方面是可以自由控制B样条曲线的插值节点)
### de Boor-Cox公式

对给定节点向量 $U=\{t_i\}$，其节点满足 $t_j\leq t_{j+1}$，构成剖分 $\Delta$。

节点向量 $U$ 上定义的 $p$ 次B样条基函数可采用如下 **de Boor-Cox公式** 递归计算：

$$
\begin{cases}
N_{i,0}(t)=\begin{cases}1,&t\in[t_i,t_{i+1}),\\0,&\text{其它},\end{cases}\\[6pt]
N_{i,p}(t)=\dfrac{t-t_i}{t_{i+p}-t_i}N_{i,p-1}(t)+\dfrac{t_{i+p+1}-t}{t_{i+p+1}-t_{i+1}}N_{i+1,p-1}(t),&p\geq1.
\end{cases}
$$

规定 $\dfrac{0}{0}=0$。

**注：** 此处节点向量 $U$ 构成的剖分可以是对整个实轴进行剖分，也可以是对某一个区间进行剖分，所含节点可以有无穷多个，也可以有有限多个，可以是单节点，也可以是重节点。

### 0次B样条基函数

$N_{i,0}(t)$ 为一类阶梯函数，具有不连续性，其在半开区间 $[t_i,t_{i+1})$ 之外处处为0，在该区间内取值为1。

### 1次B样条基函数

$$
\begin{aligned}
N_{i,1}(t)&=\frac{t-t_i}{t_{i+1}-t_i}N_{i,0}(t)+\frac{t_{i+2}-t}{t_{i+2}-t_{i+1}}N_{i+1,0}(t)\\
&=\begin{cases}
\dfrac{t-t_i}{t_{i+1}-t_i},&t\in[t_i,t_{i+1}),\\[4pt]
\dfrac{t_{i+2}-t}{t_{i+2}-t_{i+1}},&t\in[t_{i+1},t_{i+2}),\\
0,&\text{其它}.
\end{cases}
\end{aligned}
$$

$N_{i,1}(t)$ 也称为**山形函数**，在单节点情形具有连续性。图形由两段直线构成，在 $t_{i+1}$ 处达到1。

### 2次B样条基函数

$$
\begin{aligned}
N_{i,2}(t)&=\frac{t-t_i}{t_{i+2}-t_i}N_{i,1}(t)+\frac{t_{i+3}-t}{t_{i+3}-t_{i+1}}N_{i+1,1}(t)\\
&=\begin{cases}
\dfrac{(t-t_i)^2}{(t_{i+1}-t_i)(t_{i+2}-t_i)},&t\in[t_i,t_{i+1}),\\[6pt]
\dfrac{(t-t_i)(t_{i+2}-t)}{(t_{i+2}-t_i)(t_{i+2}-t_{i+1})}+\dfrac{(t-t_{i+1})(t_{i+3}-t)}{(t_{i+2}-t_{i+1})(t_{i+3}-t_{i+1})},&t\in[t_{i+1},t_{i+2}),\\[6pt]
\dfrac{(t_{i+3}-t)^2}{(t_{i+3}-t_{i+1})(t_{i+3}-t_{i+2})},&t\in[t_{i+2},t_{i+3}),\\
0,&\text{其它}.
\end{cases}
\end{aligned}
$$

图形由两个相邻的1次B样条基函数加权组合得到，在三个节点区间上分别为二次多项式。

### 3次B样条基函数

$$
N_{i,3}(t)=\frac{t-t_i}{t_{i+3}-t_i}N_{i,2}(t)+\frac{t_{i+4}-t}{t_{i+4}-t_{i+1}}N_{i+1,2}(t).
$$

当 $t\in[t_i,t_{i+1})$ 时，

$$
N_{i,3}(t)=\frac{(t-t_i)^3}{(t_{i+1}-t_i)(t_{i+2}-t_i)(t_{i+3}-t_i)}.
$$

当 $t\in[t_{i+1},t_{i+2})$ 时，

$$
\begin{aligned}
N_{i,3}(t)={}&\frac{(t-t_i)^2(t_{i+2}-t)}{(t_{i+2}-t_i)(t_{i+2}-t_{i+1})(t_{i+3}-t_i)}\\
&+\frac{(t-t_i)(t_{i+3}-t)(t-t_{i+1})}{(t_{i+3}-t_i)(t_{i+3}-t_{i+1})(t_{i+2}-t_{i+1})}\\
&+\frac{(t_{i+4}-t)(t-t_{i+1})^2}{(t_{i+2}-t_{i+1})(t_{i+3}-t_{i+1})(t_{i+4}-t_{i+1})}.
\end{aligned}
$$

当 $t\in[t_{i+2},t_{i+3})$ 时，

$$
\begin{aligned}
N_{i,3}(t)={}&\frac{(t-t_i)(t_{i+3}-t)^2}{(t_{i+3}-t_i)(t_{i+3}-t_{i+1})(t_{i+3}-t_{i+2})}\\
&+\frac{(t-t_{i+1})(t_{i+3}-t)(t_{i+4}-t)}{(t_{i+3}-t_{i+1})(t_{i+3}-t_{i+2})(t_{i+4}-t_{i+1})}\\
&+\frac{(t_{i+4}-t)^2(t-t_{i+2})}{(t_{i+4}-t_{i+1})(t_{i+4}-t_{i+2})(t_{i+3}-t_{i+2})}.
\end{aligned}
$$

当 $t\in[t_{i+3},t_{i+4})$ 时，

$$
N_{i,3}(t)=\frac{(t_{i+4}-t)^3}{(t_{i+4}-t_{i+1})(t_{i+4}-t_{i+2})(t_{i+4}-t_{i+3})}.
$$

其它情况下 $N_{i,3}(t)=0$。图形由两个相邻的2次B样条基函数加权组合得到。

### 算法实现

$p$ 次样条基函数的计算可由如下三角阵列递推实现：

$$
\begin{array}{ccccccc}
N_{0,0}&&&&&&\\
&N_{0,1}&&&&&\\
N_{1,0}&&N_{0,2}&&&&\\
&N_{1,1}&&N_{0,3}&&&\\
N_{2,0}&&N_{1,2}&&\ddots&&\\
&N_{2,1}&&N_{1,3}&&\cdots&\\
N_{3,0}&&N_{2,2}&&\vdots&&\\
&N_{3,1}&&\vdots&&&\\
N_{4,0}&&\vdots&&&&\\
\vdots&&&&&&
\end{array}
$$

### B样条基函数的性质

**(1) 非负性**

$$N_{i,p}(t)\geq0,$$

对一切满足要求的 $i,p,t$ 成立。

**(2) 局部支集性**

B样条基函数 $N_{i,p}(t)$ 满足

$$N_{i,p}(t)=0,\quad t\notin[t_i,t_{i+p+1}).$$

$N_{i,p}(t)$ 在区间 $(t_i,t_{i+p+1})$ 内部大于零，因此 $[t_i,t_{i+p+1})$ 称为 $N_{i,p}(t)$ 的**局部支集（或支集）**。

除 $p=0$ 外，一般来说 $N_{i,p}(t)$ 都是连续函数，因此其局部支集也可称为 $[t_i,t_{i+p+1}]$。

对任意给定的节点区间 $[t_i,t_{i+1}]$，它最多是 $p+1$ 个 $p$ 次B样条基函数局部支集的公共区间，它们是

$$N_{i-p,p}(t),N_{i-p+1,p}(t),\cdots,N_{i,p}(t).$$

**(3) 单位分解性**

如果区间 $[t_i,t_{i+1})$ 是 $p+1$ 个 $p$ 次B样条基函数局部支集的公共区间，那么对任意的 $t\in[t_i,t_{i+1})$，都有

$$\sum_jN_{j,p}(t)=\sum_{j=i-p}^{i}N_{j,p}(t)\equiv1.$$

**(4) 最大值**

除了 $p=0$ 外，$N_{i,p}(t)$ 恰好取得一个最大值。

**(5) 平移性质**

当节点均匀分布时，节点向量称为**均匀节点向量**，此时所有同次数的B样条基函数可由其中一个B样条基函数平移得到。

**(6) 导函数递推公式**

每一个 $p$ 次B样条基函数的一阶导函数可由两个 $p-1$ 次B样条基函数的线性组合得到，且每一个 $p$ 次B样条基函数的 $k$ 阶导函数可由两个 $p-1$ 次B样条基函数的 $k-1$ 阶导函数线性组合得到。即

$$
\begin{aligned}
N'_{i,p}(t)&=\frac{p}{t_{i+p}-t_i}N_{i,p-1}(t)-\frac{p}{t_{i+p+1}-t_{i+1}}N_{i+1,p-1}(t),\\
N^{(k)}_{i,p}(t)&=\frac{p}{t_{i+p}-t_i}N^{(k-1)}_{i,p-1}(t)-\frac{p}{t_{i+p+1}-t_{i+1}}N^{(k-1)}_{i+1,p-1}(t),\quad 2\leq k\leq p.
\end{aligned}
$$

其中在系数表达式中，当分母所含节点的差分为0时，相应的比值定义为0。

### 重节点性质

**(7.1) 重节点的连续阶性质**

设 $t_j\in[t_i,t_{i+p+1})$ 为 $p_j$ 重节点，其中 $1\leq p_j\leq p$，则 $N_{i,p}(t)$ 在节点 $t_j$ 上的连续阶为 $p-p_j$。

且节点重数每增加1，B样条基函数的支集区间中减少一个非零节点区间，B样条基函数在该重节点处的可微性降低一次。

**实例**

二次B样条基函数 $N_{i,2}(t)$，其支集区间为 $[t_i,t_{i+3})$。

- 如果节点都是单节点，则基函数图形为光滑的山形，含三个非零区间。
- 二重节点 $t_i=t_{i+1}$ 使得 $N_{i,2}(t)$ 在该点连续阶降为 $C^0$ 连续，支集区间为 $[t_{i+1},t_{i+3})$，但它并不影响 $[t_{i+2},t_{i+3})$ 上的函数表达。
- 节点 $t_{i+1}=t_{i+2}$ 时，使得 $N_{i,2}(t)$ 在该点处降为 $C^0$ 连续，且函数值为1，其支集区间 $[t_i,t_{i+3})$ 有两个非零区间。它同时影响了函数在 $[t_i,t_{i+1})$ 和 $[t_{i+2},t_{i+3})$ 上的表达式。

**(7.2) 重节点时基函数的插值性质**

节点向量中的内部节点 $t_j$ 的重数为 $p$ 时，则只有定义在

$$\{t_{j-1},\underbrace{t_j,\cdots,t_j}_{p\text{重}},t_{j+1}\}$$

上的基函数 $N_{j-1,p}(t)$ 在 $t_j$ 上取值为1，其余所有 $p$ 次B样条基函数在 $t_j$ 取值都为0。

当节点向量的边界节点 $t_j$ 的重数为 $p+1$ 时，则只有定义在

$$\{t_{j-1},\underbrace{t_j,\cdots,t_j}_{p+1\text{重}}\}\quad\text{或}\quad\{\underbrace{t_j,\cdots,t_j}_{p+1\text{重}},t_{j+1}\}$$

上的 $p$ 次B样条基函数在 $t_j$ 取值为1，其余所有基函数在 $t_j$ 取值都为0（右端点按左极限取值）。

**(7.3) 重节点时基函数的退化性质**

当节点向量为

$$U=\{\underbrace{0,\cdots,0}_{p+1\text{重}},\underbrace{1,\cdots,1}_{p+1\text{重}}\},$$

由 $U$ 定义的 $p$ 次B样条基退化为 $p$ 次Bernstein基函数。

由节点向量

$$\{t_{i-1},\underbrace{t_i,\cdots,t_i}_{p\text{重}},\underbrace{t_{i+1},\cdots,t_{i+1}}_{p\text{重}},t_{i+2}\}$$

所定义的 $p$ 次B样条函数，在区间 $[t_i,t_{i+1}]$ 上，经参数变换

$$u=\frac{t-t_i}{t_{i+1}-t_i}$$

后转换为 $p$ 次Bernstein基函数。

**实例**

对节点向量

$$U=\{0,0,0,1,2,3,4,4,5,5,5\},$$

其上定义的二次B样条基函数共有八个，它们分别是 $N_{0,2}(t),N_{1,2}(t),\cdots,N_{7,2}(t)$，且它们局部支集所对应的节点分别为

$$
\begin{aligned}
N_{0,2}&:\{0,0,0,1\},&N_{1,2}&:\{0,0,1,2\},\\
N_{2,2}&:\{0,1,2,3\},&N_{3,2}&:\{1,2,3,4\},\\
N_{4,2}&:\{2,3,4,4\},&N_{5,2}&:\{3,4,4,5\},\\
N_{6,2}&:\{4,4,5,5\},&N_{7,2}&:\{4,5,5,5\}.
\end{aligned}
$$

图形中首末基函数分别在0、5处取值为1，$N_{5,2}(t)$ 在二重节点4处取值为1。

### 准均匀节点向量

当边界节点都为 $p+1$ 重，而内部节点都是均匀的单节点，此时称为**准均匀节点向量**。

此时定义的B样条基函数在节点边界上具有插值性，即只有一个基函数值为1而其它全为0。而在节点内部，又可以由某一个基函数平移生成部分基函数。

**实例**

对准均匀节点向量

$$U=\{0,0,0,1,2,3,4,5,6,6,6\},$$

其上定义的八个二次B样条基函数中，基函数 $N_{2,2}(t)$ 可以平移生成 $N_{3,2}(t),N_{4,2}(t),N_{5,2}(t)$。而基函数 $N_{0,2}(t),N_{7,2}(t)$ 分别满足

$$N_{0,2}(0)=1,\quad N_{7,2}(6)=1.$$

### 节点插入性质

**(8) 节点插入性质**

在节点向量

$$U=\{t_0,t_1,\cdots,t_i,t_{i+1},\cdots,t_{n+p+1}\}$$

中的某个节点区间 $[t_i,t_{i+1}]$ 内插入一个节点 $t^*$，得到新的节点向量设为

$$
\begin{aligned}
U^1&=\{t_0,t_1,\cdots,t_i,t^*,t_{i+1},\cdots,t_{n+p+1}\}\\
&=\{t_0^1,t_1^1,\cdots,t_i^1,t_{i+1}^1,t_{i+2}^1,\cdots,t_{n+p+2}^1\}.
\end{aligned}
$$

则原节点向量 $U$ 上的 $p$ 次B样条基函数 $\{N_{j,p}(t)\}_{j=0}^n$ 与新的节点向量 $U^1$ 上的B样条基函数 $\{N^1_{j,p}(t)\}_{j=0}^{n+1}$ 之间满足如下关系：

$$
\begin{cases}
N_{j,p}(t)=N^1_{j,p}(t),&j=0,1,\cdots,i-p-1,\\[4pt]
N_{i-p,p}(t)=N^1_{i-p,p}(t)+\dfrac{t_{i+1}-t^*}{t_{i+1}-t_{i-p+1}}N^1_{i-p+1,p}(t),\\[6pt]
N_{i-p+1,p}(t)=\dfrac{t^*-t_{i-p+1}}{t_{i+1}-t_{i-p+1}}N^1_{i-p+1,p}(t)+\dfrac{t_{i+2}-t^*}{t_{i+2}-t_{i-p+2}}N^1_{i-p+2,p}(t),\\
\cdots\cdots,\\
N_{i,p}(t)=\dfrac{t^*-t_i}{t_{i+p}-t_i}N^1_{i,p}(t)+N^1_{i+1,p}(t),\\[6pt]
N_{j,p}(t)=N^1_{j+1,p}(t),&j=i+1,i+2,\cdots,n.
\end{cases}
$$

公式表明：插入一个节点 $t^*\in[t_i,t_{i+1}]$ 后，原以此区间为局部支集的 $p$ 次B样条基函数都需重新计算，原来的一个参数区间分割为两个参数区间，且基函数的个数增加一个。

原不以此区间为局部支集的 $p$ 次B样条基函数不用重新计算，只需标号发生改变即可。

当新插入的节点是已有的单节点时，如上公式同样成立，得到的是具有二重节点的B样条基函数。反复插入同一个节点，可以构造具有多重节点的B样条基函数，从而同样可以导出重节点的连续阶与插值性质。

## B样条曲线

### B样条曲线的定义

**定义**

称参数曲线段

$$
\mathbf P(t)=\sum_{i=0}^{n}\mathbf P_i N_{i,p}(t),\quad t\in[t_p,t_{n+1}],\tag{2.1}
$$

为一条 **$p$ 次B样条曲线**，其中 $N_{i,p}(t)$（$i=0,1,\cdots,n$）为定义在节点向量

$$U=\{t_0,t_1,\cdots,t_{n+p+1}\}$$

上的 $p$ 次B样条基函数，空间向量 $\mathbf P_i\in\mathbb R^3$（$i=0,1,\cdots,n$）称为**控制顶点**，依次用直线段连接相邻两个控制顶点所得的 $n$ 边折线多边形称为**控制多边形**。

### 一些注记

B样条曲线的次数、控制顶点个数、节点向量满足关系式：

$$\boxed{\text{次数}+\text{控制顶点个数}+1=\text{节点个数}}$$

B样条曲线的参数域为 $[t_p,t_{n+1}]$，原因是在 $[t_p,t_{n+1}]$ 的每一个非零子区间，都是 $p+1$ 个 $p$ 次B样条基函数局部支集的公共区间，从而满足基函数的单位分解性，以此定义的曲线才有我们即将介绍的一些优良性质。

称定义在一般节点向量上的B样条曲线为**非均匀B样条曲线**。当节点向量中的节点为等距分布时，称B样条曲线为**均匀B样条曲线**。此时B样条基函数具有平移性质，计算较为简单。

当节点向量中的两端节点都为 $p+1$ 重且其余内部节点等距分布时，即为准均匀节点向量时，相应的 $p$ 次B样条曲线称为**准均匀B样条曲线**。

### 一次B样条曲线

由 $n+1$ 个控制顶点 $\{\mathbf P_i\}_{i=0}^n$ 和节点向量 $U=\{t_0,t_1,\cdots,t_{n+2}\}$ 所确定的一次B样条曲线的分段表示为

$$
\begin{aligned}
\mathbf P(t)&=\sum_{i=0}^n\mathbf P_iN_{i,1}(t)\\
&=\begin{cases}
\dfrac{t_2-t}{t_2-t_1}\mathbf P_0+\dfrac{t-t_1}{t_2-t_1}\mathbf P_1,&t\in[t_1,t_2),\\[6pt]
\dfrac{t_3-t}{t_3-t_2}\mathbf P_1+\dfrac{t-t_2}{t_3-t_2}\mathbf P_2,&t\in[t_2,t_3),\\[6pt]
\cdots\cdots\cdots\cdots\cdots\cdots,\\
\dfrac{t_{n+1}-t}{t_{n+1}-t_n}\mathbf P_{n-1}+\dfrac{t-t_n}{t_{n+1}-t_n}\mathbf P_n,&t\in[t_n,t_{n+1}].
\end{cases}
\end{aligned}
$$

在几何上，一次B样条曲线为一条空间中顺序连接 $n+1$ 个控制顶点所构成的分段折线，即为其**控制多边形**。

### 二次B样条曲线

由 $n+1$ 个控制顶点 $\{\mathbf P_i\}_{i=0}^n$ 和节点向量 $U=\{t_0,t_1,\cdots,t_{n+3}\}$ 所确定的二次B样条曲线的分段表示为

$$\mathbf P(t)=\sum_{i=0}^n\mathbf P_iN_{i,2}(t),\quad t\in[t_2,t_{n+1}].$$

当 $t\in[t_i,t_{i+1}]\subset[t_2,t_{n+1}]$ 时，$\mathbf P(t)$ 为二次多项式参数曲线

$$
\begin{aligned}
\mathbf P(t)={}&\frac{(t_{i+1}-t)^2}{(t_{i+1}-t_{i-1})(t_{i+1}-t_i)}\mathbf P_{i-2}\\
&+\left[\frac{(t-t_{i-1})(t_{i+1}-t)}{(t_{i+1}-t_{i-1})(t_{i+1}-t_i)}+\frac{(t-t_i)(t_{i+2}-t)}{(t_{i+2}-t_i)(t_{i+1}-t_i)}\right]\mathbf P_{i-1}\\
&+\frac{(t-t_i)^2}{(t_{i+1}-t_i)(t_{i+2}-t_i)}\mathbf P_i.
\end{aligned}
$$

此段曲线是由三个控制顶点 $\mathbf P_{i-2},\mathbf P_{i-1},\mathbf P_i$ 所确定的。

将 $t_i,t_{i+1}$ 分别代入 $\mathbf P(t)$ 在 $[t_i,t_{i+1}]$ 上的表达式，可以得到

$$
\begin{aligned}
\mathbf P(t_i)&=\frac{t_{i+1}-t_i}{t_{i+1}-t_{i-1}}\mathbf P_{i-2}+\frac{t_i-t_{i-1}}{t_{i+1}-t_{i-1}}\mathbf P_{i-1},\\
\mathbf P(t_{i+1})&=\frac{t_{i+2}-t_{i+1}}{t_{i+2}-t_i}\mathbf P_{i-1}+\frac{t_{i+1}-t_i}{t_{i+2}-t_i}\mathbf P_i.
\end{aligned}
$$

这说明此段曲线的两个端点分别落在控制多边形的边 $\mathbf P_{i-2}\mathbf P_{i-1}$ 和 $\mathbf P_{i-1}\mathbf P_i$ 上。

节点向量中两个端点节点都是三重时，利用此时B样条基函数的重节点插值性质，可知曲线满足

$$\mathbf P(t_0)=\mathbf P_0,\quad\mathbf P(t_{n+1})=\mathbf P_n,$$

即 $\mathbf P(t)$ 插值首末两个控制顶点。

例如定义在准均匀节点向量 $U=\{0,0,0,1,2,3,4,5,6,6,6\}$ 上的二次准均匀B样条曲线，首末点分别与控制多边形首末点重合。

### B样条曲线的基本性质

**(1) 几何不变性和仿射不变性**

由B样条基函数在参数域 $[t_p,t_{n+1}]$ 上具有单位分解性即可得知。

**(2) 磨光性质**

除控制顶点共线外，次数越高，B样条曲线距离定义它的控制多边形越远。同一组控制顶点定义的B样条曲线，随着次数升高，越来越光滑。

**(3) 凸包性质**

由B样条基函数具有非负性，且在B样条曲线的参数域 $[t_p,t_{n+1}]$ 上具有单位分解性，可知B样条曲线上的每一点 $\mathbf P(t)$ 都是控制顶点 $\{\mathbf P_i\}_{i=0}^n$ 的凸组合，而组合系数就是控制顶点对应的B样条基函数。

这说明，B样条曲线完全落在由其控制多边形确定的凸包中。

**(4) 分段多项式参数曲线性质与强凸包性质**

当 $t\in[t_i,t_{i+1}]\subset[t_p,t_{n+1}]$ 时，$p$ 次B样条曲线可表示为

$$\mathbf P(t)=\sum_{j=i-p}^i\mathbf P_jN_{j,p}(t),\quad t\in[t_i,t_{i+1}],$$

这表明曲线是一条分段 $p$ 次多项式参数曲线。

由于在区间 $[t_i,t_{i+1}]$ 上，$p+1$ 个B样条基函数 $\{N_{j,p}(t)\}_{j=i-p}^i$ 具有单位分解性，从而此段曲线上的每一点 $\mathbf P(t)$ 都是这 $p+1$ 个控制顶点 $\{\mathbf P_j\}_{j=i-p}^i$ 的凸组合，从而落在它们所构成的凸包中，这就是B样条曲线所谓的**强凸包性**。

由此性质，从第一个控制顶点开始，每顺序 $p+1$ 个控制顶点决定了 $p$ 次B样条曲线中的一段。这也说明若这 $p+1$ 个控制顶点共线，由这些控制顶点确定的曲线段为一条直线段，若它们重合，则此段曲线退化到这一点。

图示：对二次B样条曲线，连续三个控制顶点构成一个三角形，对应的一段曲线落在该三角形内。

**(5) 局部调整性质**

$p$ 次B样条基函数 $N_{i,p}(t)$ 的局部支集为 $[t_i,t_{i+p+1}]$，因此控制顶点 $\mathbf P_i$ 只对区域

$$[t_i,t_{i+p+1}]\cap[t_p,t_{n+1}]$$

上定义的B样条曲线有贡献。调整控制顶点 $\mathbf P_i$，只影响B样条曲线在该区域上相应的曲线段，而不影响其余部分曲线。

**(6) 导矢性质**

利用B样条基函数的求导公式，在节点区间 $[t_i,t_{i+1}]$ 上，$p$ 次B样条曲线的导矢为

$$\mathbf P'(t)=\sum_{j=i-p+1}^i\frac{p}{t_{j+p}-t_j}(\mathbf P_j-\mathbf P_{j-1})N_{j,p-1}(t).$$

这说明，$\mathbf P'(t)$ 形式上是一条 $p-1$ 次B样条曲线，其控制顶点是相关的一些原控制顶点所构成多边形的边矢量（或控制顶点的一阶差分）的相应倍数。曲线的高阶导矢可以采用类似方法给出。

### B样条曲线的重节点性质

**(7.1) B样条曲线的连续阶性质**

$p$ 次B样条曲线在参数域 $[t_p,t_{n+1}]$ 上的每个非零区间内部是无限次可微的。

利用重节点时B样条基函数的连续阶性质，曲线在参数域的 $r$ 重节点处是 $C^{p-r}$ 阶连续的。若参数域上的节点都是单节点，则曲线是整体 $C^{p-1}$ 阶连续的。

**(7.2) B样条曲线的插值性质**

当节点向量中的某个内节点 $t_j$ 为 $p$ 重时，利用重节点时B样条基函数的插值性质，只有以

$$\{t_{j-1},\underbrace{t_j,\cdots,t_j}_{p\text{个}},t_{j+1}\}$$

为支集的 $p$ 次B样条基函数 $N_{j-1,p}(t)$ 在 $t_j$ 取值为1，其余所有基函数在此点取值全为0。

因此曲线插值于控制顶点 $\mathbf P_{j-1}$，且满足 $\mathbf P(t_j)=\mathbf P_{j-1}$。

当节点向量中的端点节点为 $p+1$ 重时，利用重节点时B样条基函数的插值性质，B样条曲线具有端点插值性。

当 $t_0$ 为 $p+1$ 重时，只有以

$$\{\underbrace{t_0,\cdots,t_0}_{p+1\text{重}},t_{p+1}\}$$

为支集的 $p$ 次B样条基函数 $N_{0,p}(t)$ 在 $t_0$ 上取值为1，其余基函数在 $t_0$ 上取值为0。此时曲线插值于首控制顶点 $\mathbf P_0$，即满足 $\mathbf P(t_0)=\mathbf P_0$。

同理，当 $t_{n+1}$ 为 $p+1$ 重时，曲线插值于末控制顶点 $\mathbf P_n$，即 $\mathbf P(t_{n+1})=\mathbf P_n$。

当 $t_0$ 与 $t_{n+1}$ 都为 $p+1$ 重时，B样条曲线插值于首末两个控制顶点，具有**端点插值性**。

**实例**

对节点向量 $U=\{0,0,0,1,2,3,4,4,5,5,5\}$，其定义的二次B样条曲线满足端点插值性，且由于节点4具有二重，因此也插值于控制顶点 $\mathbf P_5$。

**(7.3) B样条曲线的退化性质**

当节点向量的两个连续内部节点都是 $p$ 重（或者一个内部节点为 $p$ 重与其相邻的边界节点为 $p+1$ 重时），即

$$\{t_{j-1},\underbrace{t_j,\cdots,t_j}_{p\text{重}},\underbrace{t_{j+1},\cdots,t_{j+1}}_{p\text{重}},t_{j+2}\},$$

则 $p$ 次B样条曲线在区间 $[t_j,t_{j+1}]$ 上的多项式曲线段经参数变换

$$u=\frac{t-t_j}{t_{j+1}-t_j}$$

化为 $p$ 次Bezier曲线。

特别地，当 $n=p$ 时，且

$$U=\{\underbrace{0,\cdots,0}_{p+1\text{重}},\underbrace{1,\cdots,1}_{p+1\text{重}}\},$$

则 $p$ 次B样条曲线退化为相应控制顶点定义的 $p$ 次Bezier曲线。

**实例**

前述节点向量 $U=\{0,0,0,1,2,3,4,4,5,5,5\}$ 对应的二次B样条曲线在 $[4,5]$ 上为一条由 $\mathbf P_5,\mathbf P_6,\mathbf P_7$ 确定的二次Bezier曲线。

### de Boor算法

**de Boor算法目的：** 利用控制顶点的线性运算来计算B样条曲线上的点，几何意义明显，并且简单高效。

B样条曲线的de Boor算法，也称为B样条曲线的几何作图法，它是de Casteljau算法的推广。

对 $p$ 次B样条曲线

$$\mathbf P(t)=\sum_{j=0}^n\mathbf P_jN_{j,p}(t),\quad t\in[t_p,t_{n+1}],$$

若给出参数值 $t\in[t_i,t_{i+1}]\subset[t_p,t_{n+1}]$，目的是计算曲线上对应该参数的点 $\mathbf P(t)$。

利用B样条基函数的局部支集性与de Boor-Cox公式，可得

$$
\begin{aligned}
\mathbf P(t)&=\sum_{j=0}^n\mathbf P_jN_{j,p}(t)\\
&=\sum_{j=i-p}^i\mathbf P_jN_{j,p}(t)\\
&=\sum_{j=i-p}^i\mathbf P_j\left[\frac{t-t_j}{t_{j+p}-t_j}N_{j,p-1}(t)+\frac{t_{j+p+1}-t}{t_{j+p+1}-t_{j+1}}N_{j+1,p-1}(t)\right]\\
&=\sum_{j=i-p+1}^i\left[\frac{t_{j+p}-t}{t_{j+p}-t_j}\mathbf P_{j-1}+\frac{t-t_j}{t_{j+p}-t_j}\mathbf P_j\right]N_{j,p-1}(t)\\
&=\sum_{j=i-p+1}^i\mathbf P_j^{(1)}(t)N_{j,p-1}(t).
\end{aligned}
$$

这说明，在区间 $[t_i,t_{i+1}]$ 上，$p$ 次B样条曲线从形式上“降阶”为 $p-1$ 次B样条曲线。对任意的 $i-p+1\leq j\leq i$，新的控制顶点 $\mathbf P_j^{(1)}$ 落在原控制多边形的边 $\mathbf P_{j-1}\mathbf P_j$ 上，即将原控制多边形局部进行割角，从而形成新的控制多边形。

一直这样“降阶”下去，

$$
\begin{aligned}
\mathbf P(t)&=\sum_{j=i-p+1}^i\mathbf P_j^{(1)}(t)N_{j,p-1}(t)=\cdots\\
&=\sum_{j=i-p+k}^i\mathbf P_j^{(k)}(t)N_{j,p-k}(t)=\cdots=\mathbf P_i^{(p)}(t).
\end{aligned}
$$

最后 $p$ 次B样条曲线从形式上“降阶”为0次曲线（即一点）$\mathbf P_i^{(p)}(t)$，这就是我们要计算的曲线上的点 $\mathbf P(t)$，这就是B样条曲线的de Boor算法。

相对于将参数代入曲线表示式并进行求值计算，de Boor算法更简单快捷，只需对原相关的部分控制顶点进行线性运算即可。

**de Boor算法可总结为如下递归求值算法：**

$$
\begin{cases}
\mathbf P_j^{(0)}(t)=\mathbf P_j^{(0)}=\mathbf P_j,&j=i-p,i-p+1,\cdots,i,\\[4pt]
\mathbf P_j^{(k)}(t)=(1-\alpha_j^{(k)})\mathbf P_{j-1}^{(k-1)}(t)+\alpha_j^{(k)}\mathbf P_j^{(k-1)}(t),\\[4pt]
\alpha_j^{(k)}=\dfrac{t-t_j}{t_{j+p+1-k}-t_j},\\[4pt]
k=1,2,\cdots,p;\quad j=i-p+k,i-p+k+1,\cdots,i.
\end{cases}\tag{2.2}
$$

上标 $k$ 表示递推级数，每进行一级递推，控制顶点少一个，所得中间控制顶点都与参数 $t$ 有关。

控制顶点的递推关系（金字塔算法）可由如下的三角阵列形式表示：

$$
\begin{array}{ccccccc}
\mathbf P_{i-p}^{(0)}&&&&&&\\
&\mathbf P_{i-p+1}^{(1)}(t)&&&&&\\
\mathbf P_{i-p+1}^{(0)}&&\cdots&&&&\\
&\mathbf P_{i-p+2}^{(1)}(t)&&\mathbf P_{i-1}^{(p-1)}(t)&&&\\
\mathbf P_{i-p+2}^{(0)}&&\cdots&&\mathbf P_i^{(p)}(t)&&\\
\vdots&&&\mathbf P_i^{(p-1)}(t)&&&\\
\vdots&&\ddots&&&&\\
&\mathbf P_i^{(1)}(t)&&&&&\\
\mathbf P_i^{(0)}&&&&&&
\end{array}
$$

**实例：三次B样条曲线的de Boor算法**

计算三次B样条曲线上的点 $\mathbf P(t)$，其中 $t\in[t_i,t_{i+1}]$。利用de Boor算法，它们涉及到的节点向量为 $\{t_{i-2},t_{i-1},\cdots,t_{i+3}\}$，控制顶点按递归算法计算如下：

$$
\begin{aligned}
\mathbf P_{i-2}^{(1)}(t)&=\frac{t_{i+1}-t}{t_{i+1}-t_{i-2}}\mathbf P_{i-3}^{(0)}+\frac{t-t_{i-2}}{t_{i+1}-t_{i-2}}\mathbf P_{i-2}^{(0)},\\
\mathbf P_{i-1}^{(1)}(t)&=\frac{t_{i+2}-t}{t_{i+2}-t_{i-1}}\mathbf P_{i-2}^{(0)}+\frac{t-t_{i-1}}{t_{i+2}-t_{i-1}}\mathbf P_{i-1}^{(0)},\\
\mathbf P_i^{(1)}(t)&=\frac{t_{i+3}-t}{t_{i+3}-t_i}\mathbf P_{i-1}^{(0)}+\frac{t-t_i}{t_{i+3}-t_i}\mathbf P_i^{(0)}.
\end{aligned}
$$

$$
\begin{aligned}
\mathbf P_{i-1}^{(2)}(t)&=\frac{t_{i+1}-t}{t_{i+1}-t_{i-1}}\mathbf P_{i-2}^{(1)}(t)+\frac{t-t_{i-1}}{t_{i+1}-t_{i-1}}\mathbf P_{i-1}^{(1)}(t),\\
\mathbf P_i^{(2)}(t)&=\frac{t_{i+2}-t}{t_{i+2}-t_i}\mathbf P_{i-1}^{(1)}(t)+\frac{t-t_i}{t_{i+2}-t_i}\mathbf P_i^{(1)}(t).
\end{aligned}
$$

$$\mathbf P_i^{(3)}(t)=\frac{t_{i+1}-t}{t_{i+1}-t_i}\mathbf P_{i-1}^{(2)}(t)+\frac{t-t_i}{t_{i+1}-t_i}\mathbf P_i^{(2)}(t).$$

给出在节点区间 $[0,1]$ 上的一段三次B样条曲线，并采用de Boor算法求出点 $\mathbf P(\frac12)$。

图中从四个原控制顶点 $\mathbf P_0^{(0)},\mathbf P_1^{(0)},\mathbf P_2^{(0)},\mathbf P_3^{(0)}$ 开始，依次得到三个一级控制顶点 $\mathbf P_1^{(1)},\mathbf P_2^{(1)},\mathbf P_3^{(1)}$、两个二级控制顶点 $\mathbf P_2^{(2)},\mathbf P_3^{(2)}$，以及最后一个三级控制顶点 $\mathbf P_3^{(3)}(\frac12)=\mathbf P(\frac12)$。

### de Boor算法的退化

由B样条曲线的重节点性质可知，在上例中，当

$$t_{i-2}=t_{i-1}=t_i=0,\quad t_{i+1}=t_{i+2}=t_{i+3}=1$$

时，此参数区间上的三次B样条曲线退化为三次Bezier曲线。迭代过程中的系数都退化为 $1-t$ 和 $t$，从而de Boor算法退化为de Casteljau算法。

同理可知，当 $p$ 次B样条曲线的两个相邻内节点都为 $p$ 重，或者一个内节点为 $p$ 重其相邻的一个端点节点为 $p+1$ 重，或者为两端都为 $p+1$ 重节点构造的节点向量 $\{0,0,\cdots,0,1,1,\cdots,1\}$ 时，计算相应节点区间上B样条曲线对应点的de Boor算法就退化为de Casteljau算法（一般区间先作归一化参数变换）。

### 节点插入算法

设 $p$ 次B样条曲线

$$\mathbf P(t)=\sum_{j=0}^n\mathbf P_jN_{j,p}(t)$$

的节点向量为 $U=\{t_0,t_1,\cdots,t_{n+p+1}\}$。

现要在曲线定义域内的某个区间内插入一个新节点 $t^*\in[t_i,t_{i+1}]\subset[t_p,t_{n+1}]$，于是得到新的节点向量为

$$
\begin{aligned}
U^1&=\{t_0,t_1,\cdots,t_i,t^*,t_{i+1},\cdots,t_{n+p+1}\}\\
&=\{t_0^1,t_1^1,\cdots,t_i^1,t_{i+1}^1,\cdots,t_{n+p+2}^1\}.
\end{aligned}
$$

这组新的节点向量 $U^1$ 定义了一组新的基函数 $N^1_{j,p}(t)$（$j=0,1,\cdots,n+1$）。

要求插入节点后，曲线形状及连续性均保持不变，那么原B样条曲线可以用这组新的基函数与未知的新控制顶点 $\mathbf P_j^{(1)}$（$j=0,1,\cdots,n+1$）所表示为

$$\mathbf P(t)=\sum_{j=0}^{n+1}\mathbf P_j^{(1)}N^1_{j,p}(t).$$

利用B样条基函数的节点插入公式，这些未知控制顶点可以采用如下公式计算：

$$
\begin{cases}
\mathbf P_j^{(1)}=\mathbf P_j,&j=0,\cdots,i-p,\\[3pt]
\mathbf P_j^{(1)}=(1-\alpha_j)\mathbf P_{j-1}+\alpha_j\mathbf P_j,&j=i-p+1,\cdots,i,\\[3pt]
\alpha_j=\dfrac{t^*-t_j}{t_{j+p}-t_j},\\[4pt]
\mathbf P_j^{(1)}=\mathbf P_{j-1},&j=i+1,\cdots,n+1.
\end{cases}
$$

上述算法表明，插入一个新的节点，只需要计算 $p$ 个新的控制顶点即可。如果继续插入新节点，则每次把新的节点向量重新排序之后，重复上述算法过程。

**实例**

给定三次B样条曲线

$$\mathbf P(t)=\sum_{i=0}^{3}\mathbf P_iN_{i,3}(t),\quad t\in[0,1],$$

其节点向量为 $U=\{-3,-2,-1,0,1,2,3,4\}$，控制顶点为

$$\mathbf P_0=(0,0),\quad\mathbf P_1=\left(1,\frac52\right),\quad\mathbf P_2=(3,2),\quad\mathbf P_3=(4,0).$$

在区间 $[0,1]$ 内插入一个新的节点 $t^*=\frac12\in[0,1]$，于是得到新的节点向量为

$$U^1=\left\{-3,-2,-1,0,\frac12,1,2,3,4\right\}.$$

根据节点插入算法，得到新的控制顶点为

$$
\begin{aligned}
\mathbf P_0^{(1)}&=\mathbf P_0=(0,0),\\
\mathbf P_1^{(1)}&=(1-\alpha_1)\mathbf P_0+\alpha_1\mathbf P_1=\left(\frac56,\frac{25}{12}\right),&\alpha_1&=\frac{t^*-t_1}{t_4-t_1}=\frac56,\\
\mathbf P_2^{(1)}&=(1-\alpha_2)\mathbf P_1+\alpha_2\mathbf P_2=\left(2,\frac94\right),&\alpha_2&=\frac{t^*-t_2}{t_5-t_2}=\frac12,\\
\mathbf P_3^{(1)}&=(1-\alpha_3)\mathbf P_2+\alpha_3\mathbf P_3=\left(\frac{19}{6},\frac53\right),&\alpha_3&=\frac{t^*-t_3}{t_6-t_3}=\frac16,\\
\mathbf P_4^{(1)}&=\mathbf P_3=(4,0).
\end{aligned}
$$

由此原曲线表示为

$$\mathbf P(t)=\sum_{i=0}^{4}\mathbf P_i^{(1)}N_{i,3}^1(t),\quad t\in[0,1],$$

其中 $N_{i,3}^1(t)$（$i=0,\cdots,4$）为 $U^1$ 所定义的三次B样条基函数。

几何图示：插入新节点后，新的三个内部控制顶点分别位于原控制多边形的三条边上，首末控制顶点不变。曲线形状保持不变。

### 重复插入同一个节点

如果重复 $k$ 次（插入后重数不能超过 $p$）插入同一个节点 $t^*\in[t_i,t_{i+1}]$，可以将如上算法推广。

将插入后的节点向量设为 $U^k$，由其定义的 $p$ 次B样条基函数为 $N_{j,p}^k(t)$（$j=0,1,\cdots,n+k$）。

原B样条曲线可以用这组新的基函数与未知的新控制顶点 $\mathbf P_j^{(k)}$（$j=0,1,\cdots,n+k$）所表示：

$$\mathbf P(t)=\sum_{j=0}^{n+k}\mathbf P_j^{(k)}N_{j,p}^k(t).$$

因此得到插入一个 $k$ 重节点后计算控制顶点的递推算法（以下以原来不是节点的 $t^*$ 为例）：

$$
\begin{cases}
\mathbf P_j^{(0)}=\mathbf P_j,&j=0,1,\cdots,n,\\
\mathbf P_j^{(k)}=\mathbf P_j^{(k-1)},&j=0,1,\cdots,i-p+k-1,\\
\mathbf P_j^{(k)}=(1-\alpha_j^{(k)})\mathbf P_{j-1}^{(k-1)}+\alpha_j^{(k)}\mathbf P_j^{(k-1)},&j=i-p+k,\cdots,i,\\
\alpha_j^{(k)}=\dfrac{t^*-t_j}{t_{j+p-k+1}-t_j},\\[4pt]
\mathbf P_j^{(k)}=\mathbf P_{j-1}^{(k-1)},&j=i+1,\cdots,n+k,\\
k=1,2,\cdots,p.
\end{cases}
$$

当重复 $p$ 次插入同一个节点 $t^*\in(t_i,t_{i+1})$ 之后，可求出B样条曲线上的点 $\mathbf P(t^*)$，它就是 $p$ 级递推得到的最后一个点，这就是de Boor算法所得到的结果。因此de Boor算法可以看做节点插入算法的一个特殊结果。

### 节点插入算法的一些注记

1. 虽然插入节点可能改变了部分基函数的连续阶，但B样条曲线保持不变；
2. 当插入多个节点时，最后的结果与插入节点的先后顺序无关；
3. 节点插入算法是一个局部过程，仅与插入节点参数区间相关的控制顶点有关，而其余控制顶点保持不变；
4. 当对参数域中的内部节点经节点插入算法都变为 $p$ 重且两端节点为 $p+1$ 重后，$p$ 次B样条曲线退化为分段Bezier曲线；
5. 当插入节点处于B样条曲线参数域之外时，对曲线没有影响；
6. 当插入节点无限加密时，即节点间的最大步长趋向于零时，控制多边形序列将收敛到其定义的B样条曲线。

**实例**

对一条三次B样条曲线，在其参数域区间 $(t_3,t_4)$ 中插入两个节点 $t^*$ 和 $t^{**}$。无论先插入 $t^*$ 还是先插入 $t^{**}$，最终得到的控制多边形相同。图示分别给出了两种插入顺序中由四个原始控制顶点到五个、再到六个控制顶点的过程。

插入节点是一个变差缩减过程，是对控制多边形执行分段线性插值，因而是变差缩减的，同时也保持原控制多边形的凸性。

**(8) 平面B样条曲线的变差缩减性质**

对平面上的B样条曲线，此平面上的任意一条直线与曲线的交点个数不多于直线与其控制多边形的交点个数。

**(9) 平面B样条曲线的保凸性**

当B样条曲线的控制多边形是凸的，则所定义的B样条曲线也是凸的。

## B样条曲面

### 张量积型B样条基函数

设 $[a,b]\times[c,d]$ 为二维 $(u,v)$ 参数平面上的一个矩形区域，其中 $a,b,c,d$ 可以为有限实数，也可以为 $-\infty,+\infty$。对此矩形进行张量形式的剖分，即分别对 $u$ 轴和 $v$ 轴进行剖分，得到两组节点向量

$$
\begin{cases}
U=\{u_i\},&u_i\leq u_{i+1},\\
V=\{v_j\},&v_j\leq v_{j+1}.
\end{cases}
$$

利用de Boor-Cox公式，分别构造定义在节点向量 $U,V$ 上的 $p$ 次与 $q$ 次B样条基函数 $\{N_{i,p}(u)\}$ 和 $\{N_{j,q}(v)\}$。

按照张量的方式组合就可以得到**张量积型二元 $p\times q$ 次B样条基函数**

$$\{N_{i,p}(u)N_{j,q}(v)\}.$$

**实例（基函数图形）**

- 双一次张量积B样条基函数：$N_{i,1}(u)N_{j,1}(v)$，两个方向上均由一次山形函数生成。
- $1\times2$ 次张量积B样条基函数：$N_{i,1}(u)N_{j,2}(v)$，一个方向为一次，另一个方向为二次。
- 双二次张量积B样条基函数：$N_{i,2}(u)N_{j,2}(v)$，两个方向均为二次。
- $2\times3$ 次张量积B样条基函数：$N_{i,2}(u)N_{j,3}(v)$，两个方向的次数分别为2和3。

讲义进一步给出三个二次一元B样条基函数的图形，以及它们两两张量积所生成的九个双二次B样条基函数的图形，展示其不同的局部支集和峰值位置。

### 张量积型B样条基函数的性质

**(1) 非负性**

$$N_{i,p}(u)N_{j,q}(v)\geq0,$$

对一切满足条件的 $i,j,p,q,u,v$ 成立。

**(2) 局部支集性**

B样条基函数 $N_{i,p}(u)N_{j,q}(v)$ 满足

$$N_{i,p}(u)N_{j,q}(v)=0,\quad(u,v)\notin[u_i,u_{i+p+1})\times[v_j,v_{j+q+1}).$$

且B样条基函数 $N_{i,p}(u)N_{j,q}(v)$ 在上述区域内部大于零，因此 $[u_i,u_{i+p+1})\times[v_j,v_{j+q+1})$ 称为 $N_{i,p}(u)N_{j,q}(v)$ 的支集（或局部支集）。

除 $p=0$ 或 $q=0$ 外，一般来说，$N_{i,p}(u)N_{j,q}(v)$ 都是连续函数，因此其局部支集也可称为 $[u_i,u_{i+p+1}]\times[v_j,v_{j+q+1}]$。

对任意给定的节点区域 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 内，最多有 $(p+1)\times(q+1)$ 个 $p\times q$ 次B样条基函数是非零的，它们是

$$N_{k,p}(u)N_{l,q}(v),\quad k=i-p,\cdots,i;\quad l=j-q,\cdots,j.$$

**(3) 单位分解性**

如果节点区域 $[u_i,u_{i+1})\times[v_j,v_{j+1})$ 内定义了 $(p+1)\times(q+1)$ 个 $p\times q$ 次B样条基函数，则

$$
\sum_k\sum_lN_{k,p}(u)N_{l,q}(v)=\sum_{k=i-p}^{i}\sum_{l=j-q}^{j}N_{k,p}(u)N_{l,q}(v)=1,\quad(u,v)\in[u_i,u_{i+1})\times[v_j,v_{j+1}).
$$

**(4) 导数公式**

B样条基函数 $N_{i,p}(u)N_{j,q}(v)$ 的偏导数满足如下公式：

$$
\begin{aligned}
\frac{\partial}{\partial u}\left[N_{i,p}(u)N_{j,q}(v)\right]&=\frac{p}{u_{i+p}-u_i}N_{i,p-1}(u)N_{j,q}(v)-\frac{p}{u_{i+p+1}-u_{i+1}}N_{i+1,p-1}(u)N_{j,q}(v),\\
\frac{\partial}{\partial v}\left[N_{i,p}(u)N_{j,q}(v)\right]&=\frac{q}{v_{j+q}-v_j}N_{i,p}(u)N_{j,q-1}(v)-\frac{q}{v_{j+q+1}-v_{j+1}}N_{i,p}(u)N_{j+1,q-1}(v).
\end{aligned}
$$

### 张量积型B样条基函数的重节点性质

**(5.1) 重节点时基函数的连续阶性质**

若节点 $u_k\in[u_i,u_{i+p+1}]$ 为 $p_k$ 重节点，则基函数 $N_{i,p}(u)N_{j,q}(v)$ 的等参线 $N_{i,p}(u)N_{j,q}(v^*)$ 在 $u=u_k$ 点处是 $p-p_k$ 次连续可微的。

同样，若节点 $v_l\in[v_j,v_{j+q+1}]$ 为 $q_l$ 重节点，则基函数 $N_{i,p}(u)N_{j,q}(v)$ 的等参线 $N_{i,p}(u^*)N_{j,q}(v)$ 在 $v=v_l$ 点处是 $q-q_l$ 次连续可微的。

保证基函数的连续性，$N_{i,p}(u)N_{j,q}(v)$ 的支集内两方向上的内部节点重数最高只能取为 $p$ 和 $q$。

**(5.2) 重节点时基函数的插值性质**

当节点向量 $U$ 中的内节点 $u_i$ 为 $p$ 重且节点向量 $V$ 中的内节点 $v_j$ 为 $q$ 重时，则只有分别定义在

$$
\{u_{i-1},\underbrace{u_i,\cdots,u_i}_{p\text{重}},u_{i+1}\},\quad
\{v_{j-1},\underbrace{v_j,\cdots,v_j}_{q\text{重}},v_{j+1}\}
$$

上的一元 $p$ 次与 $q$ 次B样条函数所张成的基函数 $N_{i-1,p}(u)N_{j-1,q}(v)$ 在 $(u_i,v_j)$ 取值为1，其余所有 $p\times q$ 次张量积B样条基函数在 $(u_i,v_j)$ 取值都为0。

当节点向量 $U$ 中的端点节点 $u_i$ 的重数为 $p+1$ 而且节点向量 $V$ 中的端点节点 $v_j$ 的重数为 $q+1$ 时，则只有分别定义在

$$
\{u_{i-1},\underbrace{u_i,\cdots,u_i}_{p+1\text{重}}\}\quad\text{或}\quad\{\underbrace{u_i,\cdots,u_i}_{p+1\text{重}},u_{i+1}\},
$$

$$
\{v_{j-1},\underbrace{v_j,\cdots,v_j}_{q+1\text{重}}\}\quad\text{或}\quad\{\underbrace{v_j,\cdots,v_j}_{q+1\text{重}},v_{j+1}\}
$$

的一元 $p$ 次与 $q$ 次B样条函数所张成的 $p\times q$ 次基函数在 $(u_i,v_j)$ 取值为1，其余所有 $p\times q$ 次张量积B样条基函数在 $(u_i,v_j)$ 取值都为0。

**(5.3) 重节点时基函数的退化性质**

由节点向量

$$
\begin{aligned}
U&=\{\underbrace{0,\cdots,0}_{p+1\text{重}},\underbrace{1,\cdots,1}_{p+1\text{个}}\},\\
V&=\{\underbrace{0,\cdots,0}_{q+1\text{重}},\underbrace{1,\cdots,1}_{q+1\text{个}}\}
\end{aligned}
$$

所定义的 $p$ 次与 $q$ 次B样条基函数所张成的 $p\times q$ 次二元B样条基函数退化为 $p\times q$ 次张量积型的二元Bernstein基函数。

由节点向量

$$
\{u_{i-1},\underbrace{u_i,\cdots,u_i}_{p\text{重}},\underbrace{u_{i+1},\cdots,u_{i+1}}_{p\text{重}},u_{i+2}\},
$$

$$
\{v_{j-1},\underbrace{v_j,\cdots,v_j}_{q\text{重}},\underbrace{v_{j+1},\cdots,v_{j+1}}_{q\text{重}},v_{j+2}\}
$$

所定义一元 $p$ 次与 $q$ 次B样条函数，经张量所构造的 $(p+1)\times(q+1)$ 个 $p\times q$ 次基函数在区域 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上，经参数变换

$$s=\frac{u-u_i}{u_{i+1}-u_i},\quad t=\frac{v-v_j}{v_{j+1}-v_j}$$

后转换为 $p\times q$ 次张量积型的二元Bernstein基函数。

### 张量积型B样条曲面

**定义**

称参数曲面

$$
\mathbf P(u,v)=\sum_{i=0}^m\sum_{j=0}^n\mathbf P_{i,j}N_{i,p}(u)N_{j,q}(v),\quad(u,v)\in[u_p,u_{m+1}]\times[v_q,v_{n+1}],
$$

为一个 **$p\times q$ 次张量积型B样条曲面**，其中空间向量 $\mathbf P_{i,j}\in\mathbb R^3$ 称为控制顶点，$N_{i,p}(u)$ 和 $N_{j,q}(v)$ 分别为定义在节点向量

$$U=\{u_0,u_1,\cdots,u_{m+p+1}\},\quad V=\{v_0,v_1,\cdots,v_{n+q+1}\}$$

上的一元 $p$ 次和 $q$ 次B样条基函数，$i=0,1,\cdots,m$，$j=0,1,\cdots,n$。依次用直线段连接同行同列相邻两个控制顶点所得的 $m\times n$ 边折线网格称为**控制网格**。

### 双一次B样条曲面

当 $p=q=1$ 时，定义在节点向量

$$U=\{u_0,u_1,\cdots,u_{m+2}\},\quad V=\{v_0,v_1,\cdots,v_{n+2}\}$$

上的双一次B样条曲面为

$$\mathbf P(u,v)=\sum_{i=0}^m\sum_{j=0}^n\mathbf P_{i,j}N_{i,1}(u)N_{j,1}(v),\quad(u,v)\in[u_1,u_{m+1}]\times[v_1,v_{n+1}].$$

其定义在 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]\subset[u_1,u_{m+1}]\times[v_1,v_{n+1}]$ 上的曲面片为

$$
\begin{aligned}
\mathbf P(u,v)&=\sum_{k=i-1}^{i}\sum_{l=j-1}^{j}\mathbf P_{k,l}N_{k,1}(u)N_{l,1}(v)\\
&=\frac{u_{i+1}-u}{u_{i+1}-u_i}\frac{v_{j+1}-v}{v_{j+1}-v_j}\mathbf P_{i-1,j-1}+\frac{u_{i+1}-u}{u_{i+1}-u_i}\frac{v-v_j}{v_{j+1}-v_j}\mathbf P_{i-1,j}\\
&\quad+\frac{u-u_i}{u_{i+1}-u_i}\frac{v_{j+1}-v}{v_{j+1}-v_j}\mathbf P_{i,j-1}+\frac{u-u_i}{u_{i+1}-u_i}\frac{v-v_j}{v_{j+1}-v_j}\mathbf P_{i,j}.
\end{aligned}
$$

满足

$$
\begin{aligned}
\mathbf P(u_i,v_j)&=\mathbf P_{i-1,j-1},&\mathbf P(u_i,v_{j+1})&=\mathbf P_{i-1,j},\\
\mathbf P(u_{i+1},v_j)&=\mathbf P_{i,j-1},&\mathbf P(u_{i+1},v_{j+1})&=\mathbf P_{i,j}.
\end{aligned}
$$

即 $\mathbf P(u,v)$ 在 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上为插值于这四个控制顶点 $\mathbf P_{i-1,j-1},\mathbf P_{i-1,j},\mathbf P_{i,j-1},\mathbf P_{i,j}$ 的双一次多项式参数曲面片。

因此 $\mathbf P(u,v)$ 在整个参数域上为插值于所有控制顶点的分片双一次参数多项式曲面，即为其控制网面。

### 张量积型B样条曲面的性质

**(1) 几何不变性和仿射不变性**

由张量积型B样条基函数在B样条曲面的参数域上具有单位分解性可得。

**(2) 分片多项式参数曲面**

利用张量积型B样条基函数的局部性质，在每个参数域中的胞腔 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上，B样条曲面是一片关于参数 $u$ 和 $v$ 的 $p\times q$ 次多项式曲面

$$\mathbf P(u,v)=\sum_{k=i-p}^{i}\sum_{l=j-q}^{j}\mathbf P_{k,l}N_{k,p}(u)N_{l,q}(v),\quad(u,v)\in[u_i,u_{i+1}]\times[v_j,v_{j+1}].$$

本质上，B样条曲面是一个分片多项式参数曲面。

**(3) 等参线性质与边界性质**

当参数取为等参线 $v=v^*$ 和 $u=u^*$ 时，B样条曲面分别是 $p$ 次和 $q$ 次B样条曲线，即

$$
\mathbf P(u,v^*)=\sum_{i=0}^m\left[\sum_{j=0}^n\mathbf P_{i,j}N_{j,q}(v^*)\right]N_{i,p}(u),\quad u\in[u_p,u_{m+1}],
$$

$$
\mathbf P(u^*,v)=\sum_{j=0}^n\left[\sum_{i=0}^m\mathbf P_{i,j}N_{i,p}(u^*)\right]N_{j,q}(v),\quad v\in[v_q,v_{n+1}].
$$

特别地，当取为参数域的四条边界 $u=u_p,u=u_{m+1},v=v_q,v=v_{n+1}$ 时，B样条曲面的边界也是B样条曲线，其控制顶点分别由控制网格点的相应线性组合得到。

**(4) 凸包性质**

由张量积型的B样条基函数的非负性并在参数域上具有单位分解性，B样条曲面上的每一点都可以看作其控制顶点的凸组合，而组合系数就是其对应的基函数。

这说明，B样条曲面完全落在由其控制网格确定的凸包中。

例如，给定节点向量 $U=V=\{-3,-2,-1,0,1,2,3,4\}$，定义在该节点向量上的双三次B样条曲面与其控制网格的图形表明，曲面落于其控制网格的凸包里。

**(5) 强凸包性质**

利用如上的分片多项式参数曲面性质，在其参数域上的任一矩形区域 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上，B样条曲面为

$$\mathbf P(u,v)=\sum_{k=i-p}^i\sum_{l=j-q}^j\mathbf P_{k,l}N_{k,p}(u)N_{l,q}(v).$$

由于在区域 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上，$(p+1)\times(q+1)$ 个B样条基函数 $N_{k,p}(u)N_{l,q}(v)$（$k=i-p,\cdots,i;\ l=j-q,\cdots,j$）具有单位分解性与非负性，从而此片曲面上的每一点 $\mathbf P(u,v)$ 都是这 $(p+1)\times(q+1)$ 个控制顶点 $\mathbf P_{k,l}$（$k=i-p,\cdots,i;\ l=j-q,\cdots,j$）的凸组合，从而落在它们所构成的凸包中，这就是B样条曲面所谓的**强凸包性**。

**(6) 局部调整性质**

$p\times q$ 次B样条基函数 $N_{i,p}(u)N_{j,q}(v)$ 的局部支集为 $[u_i,u_{i+p+1}]\times[v_j,v_{j+q+1}]$，因此控制顶点 $\mathbf P_{i,j}$ 只对区域

$$([u_i,u_{i+p+1}]\times[v_j,v_{j+q+1}])\cap([u_p,u_{m+1}]\times[v_q,v_{n+1}])$$

上定义的B样条曲面有贡献。

调整控制顶点 $\mathbf P_{i,j}$，只影响B样条曲面在上述区域上相应的曲面片，而不影响其余部分曲面。

**(7) 偏导矢性质**

利用B样条基函数的导数公式，张量积型B样条曲面的一阶单向偏导矢为

$$
\begin{aligned}
\frac{\partial\mathbf P(u,v)}{\partial u}&=\sum_{i=1}^m\sum_{j=0}^n(\mathbf P_{i,j}-\mathbf P_{i-1,j})\frac{p}{u_{i+p}-u_i}N_{i,p-1}(u)N_{j,q}(v),\\
\frac{\partial\mathbf P(u,v)}{\partial v}&=\sum_{i=0}^m\sum_{j=1}^n(\mathbf P_{i,j}-\mathbf P_{i,j-1})\frac{q}{v_{j+q}-v_j}N_{i,p}(u)N_{j,q-1}(v).
\end{aligned}
$$

当 $v=v_q,u=u_p$ 时的边界曲线的偏导矢为（讲义此处采用起始节点附近为单节点的求和范围，原范围保留如下）：

$$
\begin{aligned}
\frac{\partial\mathbf P(u_p,v)}{\partial u}&=\sum_{i=1}^{p-1}\sum_{j=0}^n(\mathbf P_{i,j}-\mathbf P_{i-1,j})\frac{p}{u_{i+p}-u_i}N_{i,p-1}(u_p)N_{j,q}(v),\\
\frac{\partial\mathbf P(u,v_q)}{\partial v}&=\sum_{i=0}^m\sum_{j=1}^{q-1}(\mathbf P_{i,j}-\mathbf P_{i,j-1})\frac{q}{v_{j+q}-v_j}N_{i,p}(u)N_{j,q-1}(v_q).
\end{aligned}
$$

在参数 $(u_p,v_q)$ 处，曲面角点满足

$$
\mathbf P(u_p,v_q)=\sum_{i=0}^{p-1}\sum_{j=0}^{q-1}\mathbf P_{i,j}N_{i,p}(u_p)N_{j,q}(v_q),
$$

$$
\begin{aligned}
\frac{\partial\mathbf P(u_p,v_q)}{\partial u}&=\sum_{i=1}^{p-1}\sum_{j=0}^{q-1}(\mathbf P_{i,j}-\mathbf P_{i-1,j})\frac{p}{u_{i+p}-u_i}N_{i,p-1}(u_p)N_{j,q}(v_q),\\
\frac{\partial\mathbf P(u_p,v_q)}{\partial v}&=\sum_{i=0}^{p-1}\sum_{j=1}^{q-1}(\mathbf P_{i,j}-\mathbf P_{i,j-1})\frac{q}{v_{j+q}-v_j}N_{i,p}(u_p)N_{j,q-1}(v_q).
\end{aligned}
$$

**注（转录说明）：** 原讲义第255、256页中 $v$ 方向偏导的部分 $p,u$ 指标应为 $q,v$，此处已经订正。以上截短求和式不能直接推广至任意重端点或一次方向；一般情形可直接用前面的完整求和式计算边界偏导与角点。

### 双二次B样条曲面的实例

设节点向量为 $U=V=\{-2,-1,0,1,2,3\}$，其定义的双二次B样条曲面为

$$\mathbf P(u,v)=\sum_{i=0}^2\sum_{j=0}^2\mathbf P_{i,j}N_{i,2}(u)N_{j,2}(v),\quad(u,v)\in[0,1]\times[0,1].$$

其当 $v=0,u=0$ 时的边界曲线为

$$
\begin{aligned}
\mathbf P(u,0)&=\sum_{i=0}^2\frac12(\mathbf P_{i,0}+\mathbf P_{i,1})N_{i,2}(u),\\
\mathbf P(0,v)&=\sum_{j=0}^2\frac12(\mathbf P_{0,j}+\mathbf P_{1,j})N_{j,2}(v).
\end{aligned}
$$

这说明，曲面的边界 $\mathbf P(u,0)$ 是由节点向量 $U=\{-2,-1,0,1,2,3\}$ 和控制顶点

$$\frac12(\mathbf P_{0,0}+\mathbf P_{0,1}),\quad\frac12(\mathbf P_{1,0}+\mathbf P_{1,1}),\quad\frac12(\mathbf P_{2,0}+\mathbf P_{2,1})$$

所定义的二次B样条曲线；而边界曲线 $\mathbf P(0,v)$ 由节点向量 $V=\{-2,-1,0,1,2,3\}$ 和控制顶点

$$\frac12(\mathbf P_{0,0}+\mathbf P_{1,0}),\quad\frac12(\mathbf P_{0,1}+\mathbf P_{1,1}),\quad\frac12(\mathbf P_{0,2}+\mathbf P_{1,2})$$

所确定的二次B样条曲线。

对称地，可以得到其他两条边界曲线 $\mathbf P(u,1),\mathbf P(1,v)$ 也为相应控制顶点定义的二次B样条曲线。

在参数 $(0,0)$ 处，曲面角点 $\mathbf P(0,0)$ 满足

$$
\begin{aligned}
\mathbf P(0,0)&=\frac14(\mathbf P_{0,0}+\mathbf P_{0,1}+\mathbf P_{1,0}+\mathbf P_{1,1}),\\
\mathbf P_u(0,0)&=\frac12(\mathbf P_{1,1}+\mathbf P_{1,0}-\mathbf P_{0,1}-\mathbf P_{0,0}),\\
\mathbf P_v(0,0)&=\frac12(\mathbf P_{1,1}+\mathbf P_{0,1}-\mathbf P_{1,0}-\mathbf P_{0,0}).
\end{aligned}
$$

由此可以计算曲面在角点 $\mathbf P(0,0)$ 处的切平面。同理可得曲面在其它角点处的相关性质。

利用双二次Bezier曲面的性质，不难得到如上在 $[0,1]\times[0,1]$ 上表示的双二次B样条曲面 $\mathbf P(u,v)$ 恰好是以如下点阵为控制网格的双二次Bezier曲面：

$$
\begin{pmatrix}
\frac14(\mathbf P_{0,0}+\mathbf P_{0,1}+\mathbf P_{1,0}+\mathbf P_{1,1})&\frac12(\mathbf P_{1,0}+\mathbf P_{1,1})&\frac14(\mathbf P_{1,0}+\mathbf P_{1,1}+\mathbf P_{2,0}+\mathbf P_{2,1})\\[5pt]
\frac12(\mathbf P_{0,1}+\mathbf P_{1,1})&\mathbf P_{1,1}&\frac12(\mathbf P_{1,1}+\mathbf P_{2,1})\\[5pt]
\frac14(\mathbf P_{0,1}+\mathbf P_{0,2}+\mathbf P_{1,1}+\mathbf P_{1,2})&\frac12(\mathbf P_{1,1}+\mathbf P_{1,2})&\frac14(\mathbf P_{1,1}+\mathbf P_{1,2}+\mathbf P_{2,1}+\mathbf P_{2,2})
\end{pmatrix}.
$$

图示给出了该双二次B样条曲面和上述等价的双二次Bezier控制网格。

### B样条曲面的重节点性质

**(8.1) B样条曲面的连续阶性质**

当 $u$ 方向的节点 $u_k$ 为 $p_k$ 重，B样条曲面的等参线 $v=v^*$ 在 $u=u_k$ 点处的连续阶为 $p-p_k$。同样，当 $v$ 方向的某节点 $v_l$ 的重数为 $q_l$ 时，B样条曲面的等参线 $u=u^*$ 在 $v=v_l$ 点处的连续阶为 $q-q_l$。

**(8.2) B样条曲面的插值性质**

当节点向量 $U$ 中的内节点 $u_i$ 为 $p$ 重，且节点向量 $V$ 中的内节点 $v_j$ 为 $q$ 重时，由于只有基函数 $N_{i-1,p}(u)N_{j-1,q}(v)$ 在 $(u_i,v_j)$ 取值为1，其余所有基函数在 $(u_i,v_j)$ 取值都为0，则B样条曲面插值于该基函数对应的控制顶点 $\mathbf P_{i-1,j-1}$，且满足

$$\mathbf P(u_i,v_j)=\mathbf P_{i-1,j-1}.$$

如果某方向为边界节点，则要求该方向的重数为次数加1，并插值于对应的边界控制顶点。

当节点向量 $U$ 中的端点节点 $u_i$ 的重数为 $p+1$（或当 $u_i$ 为内节点时其重数为 $p$），而且节点向量 $V$ 中的端点节点 $v_j$ 的重数为 $q+1$ 时，则B样条曲面在 $(u_i,v_j)$ 处插值于相应基函数对应的控制顶点。

当 $u_i$ 与 $v_j$ 都是边界节点时，B样条曲面在 $(u_i,v_j)$ 处插值于控制网格的角点。

当节点向量 $U,V$ 的每一个端点节点都分别为 $p+1,q+1$ 重时，B样条曲面插值于它控制网格的四个角点

$$
\begin{aligned}
\mathbf P(u_0,v_0)&=\mathbf P_{0,0},&\mathbf P(u_0,v_{n+1})&=\mathbf P_{0,n},\\
\mathbf P(u_{m+1},v_0)&=\mathbf P_{m,0},&\mathbf P(u_{m+1},v_{n+1})&=\mathbf P_{m,n}.
\end{aligned}
$$

特别地，当 $U,V$ 都为准均匀节点向量时，

- B样条曲面插值于它控制网格的四个角点；
- 其等参线都是准均匀 $p$ 或 $q$ 次B样条曲线；
- 且其四条边界曲线恰是由控制网格四边所定义的准均匀 $p$ 或 $q$ 次B样条曲线。

**实例**

对于相同的控制顶点，分别定义在单节点向量

$$U=\{0,1,2,3,4,5,6,7,8\},\quad V=\{0,1,2,3,4,5,6\}$$

和具有重节点的

$$U=\{0,0,0,1,2,2,3,3,3\},\quad V=\{0,0,0,1,2,2,2\}$$

上的双二次B样条曲面。图示对比了两种节点向量下的曲面及控制网格：前者的边界一般不插值于控制网格边界，而后者具有端点插值性，并在 $u=2$ 的二重内部节点处降低连续阶。

**(8.3) B样条曲面的退化性质**

由节点向量

$$
\begin{aligned}
U&=\{\underbrace{0,\cdots,0}_{p+1\text{重}},\underbrace{1,\cdots,1}_{p+1\text{重}}\},\\
V&=\{\underbrace{0,\cdots,0}_{q+1\text{重}},\underbrace{1,\cdots,1}_{q+1\text{重}}\}
\end{aligned}
$$

定义的 $p\times q$ 次B样条曲面退化为 $p\times q$ 次张量积型Bezier曲面。

当内部节点出现

$$
\{u_{i-1},\underbrace{u_i,\cdots,u_i}_{p\text{重}},\underbrace{u_{i+1},\cdots,u_{i+1}}_{p\text{重}},u_{i+2}\},
$$

$$
\{v_{j-1},\underbrace{v_j,\cdots,v_j}_{q\text{重}},\underbrace{v_{j+1},\cdots,v_{j+1}}_{q\text{重}},v_{j+2}\}
$$

（如上述重节点为端点节点时要求重数为 $p+1$ 或 $q+1$），定义在胞腔 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]$ 上的 $p\times q$ 次B样条曲面片（经参数变换后）退化为 $p\times q$ 次的Bezier曲面片。

### B样条曲面的de Boor算法

对 $p\times q$ 次B样条曲面

$$\mathbf P(u,v)=\sum_{i=0}^m\sum_{j=0}^n\mathbf P_{i,j}N_{i,p}(u)N_{j,q}(v),$$

若给出参数 $(u,v)\in[u_k,u_{k+1}]\times[v_l,v_{l+1}]$，目的是计算其上一点 $\mathbf P(u,v)$。

利用张量积B样条基函数的局部支集性与de Boor-Cox公式，

$$
\begin{aligned}
\mathbf P(u,v)&=\sum_{i=0}^m\sum_{j=0}^n\mathbf P_{i,j}N_{i,p}(u)N_{j,q}(v)\\
&=\sum_{i=k-p}^k\sum_{j=l-q}^l\mathbf P_{i,j}N_{i,p}(u)N_{j,q}(v)\\
&=\sum_{i=k-p+1}^{k}\sum_{j=l-q+1}^{l}\left[\frac{u_{i+p}-u}{u_{i+p}-u_i}\frac{v_{j+q}-v}{v_{j+q}-v_j}\mathbf P_{i-1,j-1}\right.\\
&\qquad+\frac{u-u_i}{u_{i+p}-u_i}\frac{v_{j+q}-v}{v_{j+q}-v_j}\mathbf P_{i,j-1}\\
&\qquad+\frac{u_{i+p}-u}{u_{i+p}-u_i}\frac{v-v_j}{v_{j+q}-v_j}\mathbf P_{i-1,j}\\
&\qquad\left.+\frac{u-u_i}{u_{i+p}-u_i}\frac{v-v_j}{v_{j+q}-v_j}\mathbf P_{i,j}\right]N_{i,p-1}(u)N_{j,q-1}(v)\\
&=\sum_{i=k-p+1}^{k}\sum_{j=l-q+1}^{l}\mathbf P_{i,j}^{(1,1)}(u,v)N_{i,p-1}(u)N_{j,q-1}(v).
\end{aligned}
$$

这说明，在区域 $[u_k,u_{k+1}]\times[v_l,v_{l+1}]$ 上，$p\times q$ 次B样条曲面从形式上“降阶”为 $(p-1)\times(q-1)$ 次B样条曲面。

新的控制顶点为原控制网格中相关网格上的四个控制顶点的加权平均，其中“权”系数依赖于参数 $u$ 和 $v$。几何上，相当于将原控制网格局部进行割角，从而形成新的控制网格。

一直这样“降阶”下去，

$$
\begin{aligned}
\mathbf P(u,v)&=\sum_{i=k-p+1}^k\sum_{j=l-q+1}^l\mathbf P_{i,j}^{(1,1)}(u,v)N_{i,p-1}(u)N_{j,q-1}(v)=\cdots\\
&=\sum_{i=k-p+r}^k\sum_{j=l-q+s}^l\mathbf P_{i,j}^{(r,s)}(u,v)N_{i,p-r}(u)N_{j,q-s}(v)=\cdots\\
&=\mathbf P_{k,l}^{(p,q)}(u,v).
\end{aligned}
$$

最后 $p\times q$ 次B样条曲面从形式上“降阶”为 $0\times0$ 次曲面（即一点）$\mathbf P_{k,l}^{(p,q)}(u,v)$，这就是我们要计算的曲面上的点 $\mathbf P(u,v)$，这就是B样条曲面的de Boor算法。

相对于将参数代入曲面表示式并进行求值计算，de Boor算法更简单快捷，只需对原相关的部分控制顶点进行线性运算即可。

当如上公式中 $p,q$ 中的某一个先“降阶”到0次时，那么只需对另外一个相关参数进行降阶，此时就是B样条曲线的de Boor算法。

此外，我们还可以对两个参数分别采用B样条曲线的de Boor算法，即先将一个参数“降阶”到0次，然后再对另外一个参数“降阶”到0次，所得结果是相同的。

**de Boor算法总可表示为如下递归求值算法：**

$$
\mathbf P_{i,j}^{(0,0)}(u,v)=\mathbf P_{i,j}^{(0,0)}=\mathbf P_{i,j},\quad i=k-p,\cdots,k;\quad j=l-q,\cdots,l,
$$

$$
\begin{aligned}
\mathbf P_{i,j}^{(r,s)}(u,v)={}&(1-\alpha_i^{(r)})(1-\beta_j^{(s)})\mathbf P_{i-1,j-1}^{(r-1,s-1)}(u,v)\\
&+(1-\alpha_i^{(r)})\beta_j^{(s)}\mathbf P_{i-1,j}^{(r-1,s-1)}(u,v)\\
&+\alpha_i^{(r)}(1-\beta_j^{(s)})\mathbf P_{i,j-1}^{(r-1,s-1)}(u,v)\\
&+\alpha_i^{(r)}\beta_j^{(s)}\mathbf P_{i,j}^{(r-1,s-1)}(u,v),
\end{aligned}
$$

其中

$$
\alpha_i^{(r)}=\frac{u-u_i}{u_{i+p+1-r}-u_i},\quad\beta_j^{(s)}=\frac{v-v_j}{v_{j+q+1-s}-v_j},
$$

$$
\begin{aligned}
r&=1,2,\cdots,p,\quad s=1,2,\cdots,q,\\
i&=k-p+r,k-p+r+1,\cdots,k,\\
j&=l-q+s,l-q+s+1,\cdots,l.
\end{aligned}
$$

当B样条曲面退化为张量积型Bezier曲面时，de Boor算法也退化为de Casteljau算法。

**实例**

给定控制顶点

$$
\begin{aligned}
\mathbf P_{0,0}&=(1,0,0),&\mathbf P_{1,0}&=\left(2,0,\frac12\right),&\mathbf P_{2,0}&=(3,0,0),\\
\mathbf P_{0,1}&=\left(1,1,\frac12\right),&\mathbf P_{1,1}&=\left(2,1,\frac32\right),&\mathbf P_{2,1}&=\left(3,1,\frac12\right),\\
\mathbf P_{0,2}&=(1,2,0),&\mathbf P_{1,2}&=\left(2,2,\frac12\right),&\mathbf P_{2,2}&=(3,2,0)
\end{aligned}
$$

和节点向量 $U=V=\{-2,-1,0,1,2,3\}$，它们定义一张双二次B样条曲面 $\mathbf P(u,v)$。利用de Boor算法计算曲面上点 $\mathbf P(\frac12,\frac12)$ 的值。

由已知，利用de Boor算法，可得

$$
\begin{aligned}
\mathbf P_{1,1}^{(1,1)}&=\left(\frac74,\frac34,\frac{33}{32}\right),&\mathbf P_{1,2}^{(1,1)}&=\left(\frac74,\frac54,\frac{33}{32}\right),\\
\mathbf P_{2,1}^{(1,1)}&=\left(\frac94,\frac34,\frac{33}{32}\right),&\mathbf P_{2,2}^{(1,1)}&=\left(\frac94,\frac54,\frac{33}{32}\right),\\
\mathbf P_{2,2}^{(2,2)}&=\left(2,1,\frac{33}{32}\right).
\end{aligned}
$$

从而可得

$$\mathbf P\left(\frac12,\frac12\right)=\mathbf P_{2,2}^{(2,2)}=\left(2,1,\frac{33}{32}\right).$$

金字塔算法的控制顶点间递推关系：由九个零级控制顶点组成 $3\times3$ 控制网格，对每个小网格的四个点加权平均得到四个一级控制顶点 $\mathbf P_{1,1}^{(1,1)},\mathbf P_{2,1}^{(1,1)},\mathbf P_{1,2}^{(1,1)},\mathbf P_{2,2}^{(1,1)}$，构成 $2\times2$ 网格；再次进行加权平均，得到最后的曲面点 $\mathbf P_{2,2}^{(2,2)}$。图示给出具体的几何作图过程。

### B样条曲面的节点插入算法

我们将B样条曲线的节点插入算法以张量形式推广到B样条曲面上，给出B样条曲面的节点插入算法，也是B样条曲面的一个重要几何算法。

对 $p\times q$ 次B样条曲面

$$\mathbf P(u,v)=\sum_{i=0}^m\sum_{j=0}^n\mathbf P_{i,j}N_{i,p}(u)N_{j,q}(v),\quad(u,v)\in[u_p,u_{m+1}]\times[v_q,v_{n+1}],$$

在曲面的节点向量中插入节点，要求曲面保持不变。

**(1) 首先考虑 $u$ 方向插入节点，$v$ 方向节点向量不变的情况。**

对 $u$ 方向节点向量 $U=\{u_0,u_1,\cdots,u_{m+p+1}\}$ 中插入节点 $u^*\in[u_k,u_{k+1}]\subset[u_p,u_{m+1}]$ 后，新的节点向量记为

$$U^1=\{u_0^1,u_1^1,\cdots,u_{m+p+2}^1\},$$

其上定义的 $p$ 次B样条基函数记为 $N_{i,p}^1(u)$（$i=0,1,\cdots,m+1$），则 $u$ 方向增加一个 $p$ 次B样条基函数，因此增加 $n+1$ 个 $p\times q$ 次张量积型B样条基函数，那么曲面相应要增加 $n+1$ 个控制顶点。

设插入节点 $u^*$ 后，曲面由新的基函数与控制顶点表示为

$$\mathbf P(u,v)=\sum_{i=0}^{m+1}\sum_{j=0}^n\mathbf P_{i,j}^{(1,0)}N_{i,p}^1(u)N_{j,q}(v).$$

利用基函数的插入节点算法，新的控制顶点 $\mathbf P_{i,j}^{(1,0)}$ 可由如下方式确定：

$$
\begin{cases}
\mathbf P_{i,j}^{(1,0)}=\mathbf P_{i,j},&i=0,1,\cdots,k-p;\ j=0,1,\cdots,n,\\[3pt]
\mathbf P_{i,j}^{(1,0)}=(1-\alpha_i)\mathbf P_{i-1,j}+\alpha_i\mathbf P_{i,j},&i=k-p+1,\cdots,k;\ j=0,1,\cdots,n,\\[3pt]
\alpha_i=\dfrac{u^*-u_i}{u_{i+p}-u_i},\\[4pt]
\mathbf P_{i,j}^{(1,0)}=\mathbf P_{i-1,j},&i=k+1,\cdots,m+1;\ j=0,1,\cdots,n.
\end{cases}
$$

**(2) 再考虑 $v$ 方向插入节点，$u$ 方向节点向量不变的情况。**

对 $v$ 方向节点向量 $V=\{v_0,v_1,\cdots,v_{n+q+1}\}$ 中插入节点 $v^*\in[v_l,v_{l+1}]\subset[v_q,v_{n+1}]$ 后，新的节点向量记为

$$V^1=\{v_0^1,v_1^1,\cdots,v_{n+q+2}^1\},$$

其上定义的 $q$ 次B样条基函数记为 $N_{j,q}^1(v)$（$j=0,1,\cdots,n+1$），则 $v$ 方向增加一个 $q$ 次B样条基函数，因此增加 $m+1$ 个 $p\times q$ 次张量积型B样条基函数，那么曲面相应要增加 $m+1$ 个控制顶点。

设插入节点 $v^*$ 后，曲面由新的基函数与控制顶点表示为

$$\mathbf P(u,v)=\sum_{i=0}^m\sum_{j=0}^{n+1}\mathbf P_{i,j}^{(0,1)}N_{i,p}(u)N_{j,q}^1(v).$$

利用基函数的插入节点算法，新的控制顶点 $\mathbf P_{i,j}^{(0,1)}$ 可由如下方式确定：

$$
\begin{cases}
\mathbf P_{i,j}^{(0,1)}=\mathbf P_{i,j},&i=0,1,\cdots,m;\ j=0,1,\cdots,l-q,\\[3pt]
\mathbf P_{i,j}^{(0,1)}=(1-\beta_j)\mathbf P_{i,j-1}+\beta_j\mathbf P_{i,j},&i=0,1,\cdots,m;\ j=l-q+1,\cdots,l,\\[3pt]
\beta_j=\dfrac{v^*-v_j}{v_{j+q}-v_j},\\[4pt]
\mathbf P_{i,j}^{(0,1)}=\mathbf P_{i,j-1},&i=0,1,\cdots,m;\ j=l+1,\cdots,n+1.
\end{cases}
$$

**(3) 再考虑两个方向都插入节点的情况。**

设 $u,v$ 方向的节点向量分别插入节点

$$u^*\in[u_k,u_{k+1}]\subset[u_p,u_{m+1}],\quad v^*\in[v_l,v_{l+1}]\subset[v_q,v_{n+1}],$$

新的节点向量 $U^1,V^1$ 定义的 $p\times q$ 次张量积型B样条基函数增加 $m+n+3$ 个，曲面也就相应增加 $m+n+3$ 个控制顶点。

设插入节点 $u^*,v^*$ 后，曲面由新的基函数与控制顶点表示

$$\mathbf P(u,v)=\sum_{i=0}^{m+1}\sum_{j=0}^{n+1}\mathbf P_{i,j}^{(1,1)}N_{i,p}^1(u)N_{j,q}^1(v).$$

利用基函数的插入节点算法，新的控制顶点 $\mathbf P_{i,j}^{(1,1)}$ 可由如下方式确定。

当 $j=0,1,\cdots,l-q$ 时：

$$
\begin{cases}
\mathbf P_{i,j}^{(1,1)}=\mathbf P_{i,j},&i=0,1,\cdots,k-p,\\[3pt]
\mathbf P_{i,j}^{(1,1)}=(1-\alpha_i)\mathbf P_{i-1,j}+\alpha_i\mathbf P_{i,j},&i=k-p+1,\cdots,k,\\[3pt]
\mathbf P_{i,j}^{(1,1)}=\mathbf P_{i-1,j},&i=k+1,\cdots,m+1.
\end{cases}
$$

当 $j=l-q+1,l-q+2,\cdots,l$ 时：

$$
\begin{cases}
\mathbf P_{i,j}^{(1,1)}=(1-\beta_j)\mathbf P_{i,j-1}+\beta_j\mathbf P_{i,j},&i=0,1,\cdots,k-p,\\[4pt]
\begin{aligned}
\mathbf P_{i,j}^{(1,1)}={}&(1-\alpha_i)(1-\beta_j)\mathbf P_{i-1,j-1}+(1-\alpha_i)\beta_j\mathbf P_{i-1,j}\\
&+\alpha_i(1-\beta_j)\mathbf P_{i,j-1}+\alpha_i\beta_j\mathbf P_{i,j},
\end{aligned}&i=k-p+1,\cdots,k,\\[8pt]
\mathbf P_{i,j}^{(1,1)}=(1-\beta_j)\mathbf P_{i-1,j-1}+\beta_j\mathbf P_{i-1,j},&i=k+1,\cdots,m+1.
\end{cases}
$$

当 $j=l+1,l+2,\cdots,n+1$ 时：

$$
\begin{cases}
\mathbf P_{i,j}^{(1,1)}=\mathbf P_{i,j-1},&i=0,1,\cdots,k-p,\\[3pt]
\mathbf P_{i,j}^{(1,1)}=(1-\alpha_i)\mathbf P_{i-1,j-1}+\alpha_i\mathbf P_{i,j-1},&i=k-p+1,\cdots,k,\\[3pt]
\mathbf P_{i,j}^{(1,1)}=\mathbf P_{i-1,j-1},&i=k+1,\cdots,m+1.
\end{cases}
$$

其中

$$\alpha_i=\frac{u^*-u_i}{u_{i+p}-u_i},\quad\beta_j=\frac{v^*-v_j}{v_{j+q}-v_j},$$

$$i=k-p+1,k-p+2,\cdots,k;\quad j=l-q+1,l-q+2,\cdots,l.$$

**(4) 重复插入节点**

如在节点向量 $U$ 中重复 $r$ 次插入节点 $u^*\in(u_k,u_{k+1})\subset[u_p,u_{m+1}]$，在节点向量 $V$ 中重复 $s$ 次插入节点 $v^*\in(v_l,v_{l+1})\subset[v_q,v_{n+1}]$，则可按照如上方式逐步处理，在此省略细节。

**实例**

图中所示为一个双二次B样条曲面在参数区域 $[u_i,u_{i+1}]\times[v_j,v_{j+1}]\subset[u_p,u_{m+1}]\times[v_q,v_{n+1}]$ 上的曲面片及其相关控制网格。

当其在节点向量 $U$ 和 $V$ 中分别插入新的节点 $u^*\in(u_i,u_{i+1})$ 和 $v^*\in(v_j,v_{j+1})$ 后，控制网格在两个参数方向均得到细化，但曲面不变。

继续再次插入相同的节点 $u^*$ 和 $v^*$ 后，控制网格进一步细化，此时 $u^*$ 和 $v^*$ 都是二重节点，因此曲面插值于支集为

$$\{u_i,u^*,u^*,u_{i+1}\}\times\{v_j,v^*,v^*,v_{j+1}\}$$

的B样条基函数对应的控制顶点。

另一种情况，对 $U$ 和 $V$ 中已有节点 $u_i$ 和 $v_j$，我们对其再分别插入一次，得到新生成的控制网格。此时 $u_i$ 和 $v_j$ 都是二重节点，因此曲面插值于支集为

$$\{u_{i-1},u_i,u_i,u_{i+1}\}\times\{v_{j-1},v_j,v_j,v_{j+1}\}$$

的B样条基函数对应的控制顶点。

<!-- 转录说明：根据朱春钢《B样条曲线曲面》（2026年秋季）讲义，第1–348页。删除了重复的逐步演示页、目录、页眉页脚以及重复的图形演示；图形用文字描述，不保留图像和坐标轴刻度。公式重排为LaTeX。第17页三次基函数的u/t、分母括号及最后区间，第132页控制多边形边的下标，第229页双一次曲面求和的参数位置，第252页基函数次数，第255–256页v方向偏导指标，第293页降阶后求和下限，第329、338页v方向插值系数分母中的p/q，第335页j的枚举等明显排印问题已按相邻公式订正。端点取值、单节点情形等个别必要限定亦作标注或补充。性质的其余表述沿用原讲义，并未逐条作独立数学验证。 -->
