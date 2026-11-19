# Bezier曲线曲面

## 曲线的参数表示

三维空间中的一条曲线如果可表示为关于**参数 $ t $** 的向量函数

\[
\mathbf{p}(t) = (x(t), y(t), z(t)), \quad t \in [a, b],
\]

则称为**曲线的参数表示**，$ [a,b] $ 称为曲线的**参数域**。给定曲线的一个具体参数表示形式，也称给定了一个曲线的参数化。**同一条曲线的参数化可能是不同的**。

例如，**螺旋线**可以表示为：

\[
\mathbf{p}(t) = (a\cos t,\ a\sin t,\ bt).
\]
**单位圆**可以表示为有理参数化形式

\[
\mathbf{p}(t) = \left( \frac{t^2 - 1}{t^2 + 1},\ \frac{2t}{t^2 + 1} \right), \quad t \in (-\infty, +\infty).
\]
**圆柱螺旋线**可以表示为参数化形式

\[
\mathbf{p}(t) = (\cos(t),\ \sin(t),\ t), \quad t \in [0, 4\pi].
\]
## 正则点与正则曲线

如果

\[
\dot{\mathbf{p}}(t_0) = (\dot{x}(t_0), \dot{y}(t_0), \dot{z}(t_0)) \neq \mathbf{0},
\]

则称曲线在 $ t = t_0 $ 处是**正则的**，点 $ \mathbf{p}(t_0) $ 称为**正则点**。

若曲线 $ \mathbf{p}(t) $ 的所有点都是正则点，就称曲线 $ \mathbf{p}(t) $ 为**正则曲线**。

非正则的点称为曲线的**奇点**。

## 曲线的弧长参数化表示

对于同一条曲线，它的参数化可能是不同的，而选择的**参数化不同其性质也不尽相同**。

而曲线自身的**弧长**是曲线本身的不变量，它与坐标系的选择无关，因此**取曲线的弧长作为参数来表示曲线具有非常重要的意义**。

给定空间中一条曲线 $ \mathbf{p}(t) = (x(t), y(t), z(t)) $，选定其上一点 $ \mathbf{p}_0 $ 作为计算弧长的起点（一般选为参数域的起点），那么曲线上的点与 $ \mathbf{p}_0 $ 间的弧长是一一对应的。

因此曲线 $ \mathbf{p}(t) $ 可以表示为以弧长为参数的参数曲线，这种表示方法称为**曲线的弧长参数化**。弧长称为**自然参数**。

利用反函数定理，一般参数 $ t $ 一定能转换成关于弧长的参数 $ t = r(s) $，因此 $ \mathbf{p}(t) $ 可**重新参数化**为弧长参数表示形式：

\[
\mathbf{p}(s) = \mathbf{p}(r(s)) = (x(s), y(s), z(s)).
\]

## 单位切向量

给定空间弧长参数化的曲线 $ \mathbf{p}(s) = (x(s), y(s), z(s)) $，利用曲线弧长的微分公式，在正则点处 $ \dfrac{ds}{dt} = |\dot{\mathbf{p}}| > 0 $。

设

\[
\mathbf{t} = \mathbf{t}(s) = \mathbf{p}'(s) = \frac{d\mathbf{p}}{ds} = \frac{d\mathbf{p}}{dt}\frac{dt}{ds} = \frac{\dot{\mathbf{p}}}{|\dot{\mathbf{p}}|},
\]

则 $ \mathbf{t} $ 为曲线 $ \mathbf{p}(s) $ 在弧长 $ s $ 处的**单位切向量**。

## 单位主法线向量

对

\[
\mathbf{t}^2 = \mathbf{t} \cdot \mathbf{t} = 1,
\]

两端对 $ s $ 求导，可得

\[
2\mathbf{t} \cdot \mathbf{t}' = 0.
\]

可知 $ \mathbf{t} $ 与 $ \mathbf{t}' $ 是垂直的。设

\[
\mathbf{n} = \mathbf{n}(s) = \frac{\mathbf{t}'}{|\mathbf{t}'|},
\]

即单位向量 $ \mathbf{n} $ 与 $ \mathbf{t} $ 互相垂直，称 $ \mathbf{n} $ 为曲线在该点处的**单位主法线向量**。




## 曲率与曲率向量

设

\[
k = k(s) = |\mathbf{t}'|
\]

称为曲线在该点处的**曲率**。

$ k $ 是**单位切向量关于弧长的扭转速率**，曲线在一点处的曲率等于此点与邻近点的切线向量之间的夹角关于弧长的变化率，也就是曲线在该点附近**切线方向改变的程度**，它反映了**曲线的弯曲程度**。

如果曲线在某点处的曲率愈大，表示曲线在该点附近切线方向改变的愈快，因此曲线在该点的弯曲程度愈大。

称 $ \rho = \dfrac{1}{k} $ 为**曲率半径**。向量

\[
\mathbf{t}' = k(s)\,\mathbf{n}, \tag{1.1}
\]

称为**曲率向量**。

由上一节的推导可知 $ \mathbf{t}' $ 与 $ \mathbf{t} $ 垂直，且 $ \mathbf{n} = \dfrac{\mathbf{t}'}{|\mathbf{t}'|} $ 为单位向量，于是 $ \mathbf{t}' = |\mathbf{t}'|\,\mathbf{n} = k(s)\,\mathbf{n} $。可见曲率向量**指向主法线方向**，其模即为曲率 $ k $。


$
\begin{aligned}
&曲率就是单位切向量关于弧长的导数的模长\\
\end{aligned}
$

**曲率向量指向主法线方向，其模为曲率k。**


## 单位副法线向量与 Frenet 标架

向量

\[
\mathbf{b} = \mathbf{t} \times \mathbf{n} \tag{1.2}
\]

为与 $ \mathbf{t}, \mathbf{n} $ 垂直的单位向量，称为曲线在该点处的**单位副法线向量**。

由于 $ \mathbf{t} $ 与 $ \mathbf{n} $ 是互相垂直的单位向量，二者的叉积的模为 $ |\mathbf{t}|\,|\mathbf{n}|\sin\dfrac{\pi}{2} = 1 $，且同时垂直于 $ \mathbf{t} $ 与 $ \mathbf{n} $，因此 $ \mathbf{b} $ 也是单位向量。

三个单位向量

\[
\mathbf{t},\ \mathbf{n},\ \mathbf{b}
\]

就像直角坐标系中的 $ \mathbf{i}, \mathbf{j}, \mathbf{k} $ 一样，组成一个**右手系**，随着曲线上点的移动而改变，给出了曲线上点所决定的三个基本方向，称为 **Frenet 标架**或**运动标架**。


## Frenet-Serret 方程

向对三个基本量求导可得关系式

\[
\mathbf{t}' = k\mathbf{n}, \quad \mathbf{b}' = -\tau\mathbf{n}, \quad \mathbf{n}' = \tau\mathbf{b} - k\mathbf{t},
\]

称为曲线的 **Frenet-Serret 方程**，其矩阵形式为：

\[
\begin{pmatrix}
\mathbf{t}' \\
\mathbf{n}' \\
\mathbf{b}'
\end{pmatrix}
=
\begin{pmatrix}
0 & k & 0 \\
-k & 0 & \tau \\
0 & -\tau & 0
\end{pmatrix}
\begin{pmatrix}
\mathbf{t} \\
\mathbf{n} \\
\mathbf{b}
\end{pmatrix}.
\]

函数 $ \tau $ 称为**挠率**，表示曲线的副法向量关于弧长的变化率。挠率刻画了曲线的密切平面的变化程度，反映了曲线离开密切平面的快慢，即曲线的扭曲程度。对于平面曲线来说，由于密切平面就是曲线所在平面，其不发生改变，因此其挠率为 0。

## 曲率与挠率公式

对于一般参数化曲线 $ \mathbf{p}(t) $，其曲率公式与挠率公式为

\[
k = \frac{|\dot{\mathbf{p}} \times \ddot{\mathbf{p}}|}{|\dot{\mathbf{p}}|^{3}},
\]

\[
\tau = \frac{(\dot{\mathbf{p}}, \ddot{\mathbf{p}}, \dddot{\mathbf{p}})}{(\dot{\mathbf{p}} \times \ddot{\mathbf{p}})^2}.
\]

曲线 $ \mathbf{p}(t) $ 为平面曲线（即曲线挠率为 0）的充要条件为

\[
(\dot{\mathbf{p}}, \ddot{\mathbf{p}}, \dddot{\mathbf{p}}) = 0.
\]


## 曲线的参数连续性

> **定义**
>
> 参数曲线 $ \mathbf{p}(t) $ 在 $ t = t_0 $ 处为 **$ k $ 阶参数连续**（即 $ C^k $ 连续）当且仅当 $ \mathbf{p}(t) $ 的每个分量函数在 $ t = t_0 $ 处是 $ C^k $ 连续的，即
>
> \[
> \lim_{t \to t_0^+} \overset{(i)}{\mathbf{p}}(t) = \lim_{t \to t_0^-} \overset{(i)}{\mathbf{p}}(t), \quad i = 0, 1, \cdots, k, \tag{1.3}
> \]

其中 $ \overset{(i)}{\mathbf{p}}(t) $ 表示 $ \mathbf{p}(t) $ 关于参数 $ t $ 的 $ i $ 阶导数。如果对所有的 $ t \in [a, b] $，曲线 $ \mathbf{p}(t) $ 均 $ C^k $ 连续，则称它为关于参数 $ t $ 的 **$ C^k $ 连续曲线**。





## 曲线的几何连续性

由于每一段曲线通常是按照局部参数定义的 $ C^k $ 连续曲线，按如上定义，我们要构造参数连续的组合曲线，即满足一定参数连续的分段曲线，那么需要组合曲线找到一个合适的整体参数，使得组合曲线关于整体参数是连续的。但是满足要求的整体参数往往很难找到。因此选择与参数化无关的连续性条件有时是十分必要的，而几何连续性恰好满足这种要求。

> **定义**
>
> 如果参数曲线 $ \mathbf{p}(t) $ 在弧长参数化下曲线是 $ C^k $ 的，或者曲线存在一个局部正则的 $ C^k $ 参数表示，则称曲线 $ \mathbf{p}(t) $ 是 **$ k $ 阶几何连续**（即 **$ G^k $** 或 **$ GC^k $** 连续）的。

## 常用的低阶几何连续性条件

给定两条参数曲线

\[
\mathbf{p}_l(u), \quad u \in [u_0, u_1], \qquad \mathbf{p}_r(t), \quad t \in [t_0, b],
\]

则它们在点 $ \mathbf{p} $ 处的低阶几何连续条件如下：

1. 两段曲线在点 $ \mathbf{p} $ 处 **$ G^0 $ 连续**的充要条件为：在点 $ \mathbf{p} $ 处相连接，满足 $ \mathbf{p} = \mathbf{p}_l(u_1) = \mathbf{p}_r(t_0) $。

2. 两段曲线在点 $ \mathbf{p} $ 处 **$ G^1 $ 连续**的充要条件为：在点 $ \mathbf{p} $ 处 $ G^0 $ 连续，并且具有公共的单位切向量。

3. 两段曲线在点 $ \mathbf{p} $ 处 **$ G^2 $ 连续**的充要条件为：在点 $ \mathbf{p} $ 处 $ G^1 $ 连续，并且满足曲率值与主法向量皆连续，即曲率向量连续。





## 曲面的参数表示

三维空间中的一个曲面如果可以表示为关于**参数 $ u, v $** 的向量函数

\[
\mathbf{p}(u, v) = (x(u, v), y(u, v), z(u, v)), \quad (u, v) \in D,
\]

则称为**曲面的参数表示**。

参数 $ u, v $ 的取值范围 $ D \subset \mathbb{R}^2 $ 称为**参数域**，最常用的参数域取为 $ uv $ 平面上的一个矩形区域 $ D = [u_1, u_2] \times [v_1, v_2] $。

给定了曲面的一个具体参数表示形式，也就称给定了一个曲面的参数化，也决定了参数域 $ D $ 上的点与曲面上的点的对应关系。显然，曲面的参数化也不是唯一的。


## 等参线

如果固定一个参数，例如 $ v = v_0 $，那么 $ \mathbf{p}(u, v_0) $ 为单参数 $ u $ 的向量函数，它表示曲面上的一条曲线，称为**等参线**或 **$ u $ 曲线**。显然，曲面 $ \mathbf{p}(u, v) $ 上存在两族等参线，即一族 $ u $ 线与一族 $ v $ 线。




## 正则点

曲面上的点 $ \mathbf{p}(u_0, v_0) $ 处，沿 $ u, v $ 方向的切向量分别定义为

\[
\mathbf{p}_u(u_0, v_0) = \left. \frac{\partial \mathbf{p}(u, v_0)}{\partial u} \right|_{u = u_0}, \quad
\mathbf{p}_v(u_0, v_0) = \left. \frac{\partial \mathbf{p}(u_0, v)}{\partial v} \right|_{v = v_0},
\]

如果这两个切向量 $ \mathbf{p}_u(u_0, v_0), \mathbf{p}_v(u_0, v_0) $ 不共线，即

\[
\mathbf{p}_u(u_0, v_0) \times \mathbf{p}_v(u_0, v_0) \neq \mathbf{0},
\]

则称点 $ \mathbf{p}(u_0, v_0) $ 为曲面的**正则点**，否则称为**奇点**。
如果曲面上的所有点都是正则点，就称这样的参数化为**正则的**。


## 切平面与等距曲面

对曲面上的正则点 $ \mathbf{p}(u_0, v_0) $，过此点以向量

\[
\mathbf{e}(u_0, v_0) = \frac{\mathbf{p}_u(u_0, v_0) \times \mathbf{p}_v(u_0, v_0)}{\left| \mathbf{p}_u(u_0, v_0) \times \mathbf{p}_v(u_0, v_0) \right|}
\]

为法向量的平面称为曲面在 $ \mathbf{p}(u_0, v_0) $ 处的**切平面**。向量 $ \mathbf{e}(u_0, v_0) $ 称为**单位法向量**。

**可以验证，曲面上所有过点 $ \mathbf{p}(u_0, v_0) $ 的曲线在此点处的切线都落在切平面上。**

沿曲面 $ \mathbf{p}(u, v) $ 每一点的法向量方向移动的距离为 $ \alpha $（可正可负），得到的曲面称为 $ \mathbf{p}(u, v) $ 的**等距曲面**，方程为

(下面的r在工业界经常被称为offset)

\[
\mathbf{r}(u, v) = \mathbf{p}(u, v) + \alpha \mathbf{e}(u, v).
\]

## 法曲率

设 $ \mathbf{p}(t) = \mathbf{p}(u(t), v(t)) $ 为曲面 $ \mathbf{p}(u, v) $ 上过点 $ P $ 的一条曲线。做过点 $ P $ 的空间平面 $ C $，使 $ \mathbf{p}(t) $ 在 $ P $ 点处的切向量 $ \mathbf{p} $ 与曲面 $ \mathbf{p}(u, v) $ 在 $ P $ 点处的单位法向量 $ \mathbf{e} $ 落在平面 $ C $ 上。

设平面 $ C $ 与曲面 $ \mathbf{p}(u, v) $ 的交线为 $ r $。

称曲线 $ r $ 在点 $ P $ 的曲率为曲面 $ \mathbf{p}(u, v) $ 在 $ P $ 点关于方向 $ \mathbf{p} $ 的**法曲率**，记为 $ k_n $。

这个法曲率有一种更直观的理解：我拿手机拍照了记得吧照片整理一下

就是首先先有一个点然后再考虑这个点的切平面,考虑切平面上任意一个过该点的向量(这会对应一个过该点的曲线的切向量),考虑该向量和法向量所张成的平面.这样就会构成一个平面,这个平面与曲面会有一个交线,这个交线在该点处的曲率就是法曲率。


## 主曲率、Gauss 曲率与平均曲率

**曲面上一点沿不同的方向可能有不同的法曲率**，称使得 $ k_n $ 取极值的方向为**法曲率的主方向**，主方向是互相垂直的。

设 $ k_n $ 的最小、最大值为 $ k_{n_{\min}} $、$ k_{n_{\max}} $，称之为**主曲率**。

对

\[
K = k_{n_{\min}} \cdot k_{n_{\max}},
\]

\[
H = \frac{k_{n_{\min}} + k_{n_{\max}}}{2},
\]

称 $ K $ 为 **Gauss 曲率**（或总曲率，全曲率），称 $ H $ 为**平均曲率**（或中曲率）。

K为Guass曲率是和曲面本身的内在性质相关的，而H为平均曲率是和曲面在空间中的嵌入相关的。

K处处为零的直纹面是可展曲面

H=0代表着此处面积取极小值，曲率处处为零的曲面为极小曲面,是固定边界的所有曲面中表面积最小的(类似于肥皂膜、悬链面、螺旋面)

## 曲面的参数连续性

> **定义**
>
> 如果参数曲面 $ \mathbf{p}(u, v),\ (u, v) \in [u_0, u_1] \times [v_0, v_1] $ 与 $ \mathbf{q}(u, v),\ (u, v) \in [u_0, u_1] \times [v_1, v_2] $ 在公共边界 $ \mathbf{p}(u, v_1) = \mathbf{q}(u, v_1) $ 上满足
>
> \[
> \frac{\partial^{i+j}}{\partial u^i \partial v^j} \mathbf{p}(u, v_1-) = \frac{\partial^{i+j}}{\partial u^i \partial v^j} \mathbf{q}(u, v_1+), \quad i + j = 0, 1, \cdots, k,
> \]
>
> 则称它们在公共边界上具有 **$ k $ 阶参数连续性**（即 $ C^k $ 连续）。

## 曲面的几何连续性

> **定义**
>
> 对两个参数曲面，
>
> 1. 如果它们有公共的连续边界，则称它们在公共边界上具有 **$ 0 $ 阶几何连续**（即 $ G^0 $ 连续）；
>
> 2. 如果它们在公共边界上 $ G^0 $ 连续，并且它们在公共边界线上处处具有相同的切平面（或相同的曲面法线），则称它们沿公共边界具有 **$ 1 $ 阶几何连续性**（即 $ G^1 $ 连续）；
>
> 3. 如果它们在公共边界上 $ G^1 $ 连续，并且具有公共的主曲率，及在两个主曲率相等时具有公共的主方向，则称它们沿公共边界具有 **$ 2 $ 阶几何连续性**（即 $ G^2 $ 连续）。
## 曲线曲面的常用参数表示方式

一般情况下，参数曲线曲面也可表示为如下形式

\[
\mathbf{p}(t) = \sum_{i=1}^{n} \mathbf{b}_i f_i(t), \quad t \in [a, b],
\]

\[
\mathbf{p}(u, v) = \sum_{i \in I} \mathbf{b}_i f_i(u, v), \quad (u, v) \in D \subset \mathbb{R}^2,
\]

其中 $ \mathbf{b}_i \in \mathbb{R}^3 $ 称为**控制顶点**，实值函数 $ f_i(t), f_i(u, v) $ 称为**基函数**（或混合函数），$ I $ 为某个指标集。

一般来说，基函数需具有**非负性、线性无关性、单位分解性**等。控制顶点控制着曲线的形状，基函数在曲线构造中起到了最为重要的作用。

# 一元Bernstein基函数

(这部分第一章全都讲过了,这里就先不重复了，以后复习直接看第一章或者ppt吧)

# Bezier曲线

Bezier曲线是参数曲线,所以可能会有自交点


## Bézier曲线的定义

> **定义**
>
> 称参数曲线段
>
> \[
> \mathbf{P}(t) = \sum_{i=0}^{n} \mathbf{P}_i B_i^n(t), \quad t \in [0, 1],
> \]
>
> 为一条 $ n $ 次 **Bézier 曲线**，其中 $ B_i^n(t) $ 为 $ n $ 次 Bernstein 基函数，空间向量 $ \mathbf{P}_i \in \mathbb{R}^3 $ 称为**控制顶点**。依次用直线段连接相邻两个控制顶点所得的 $ n $ 边折线多边形称为**控制多边形**（或 Bézier 多边形）。

## Bézier曲线的性质

### (1) 端点插值性质

Bézier 曲线插值于首末两个控制顶点，即

\[
\mathbf{P}(0) = \mathbf{P}_0, \qquad \mathbf{P}(1) = \mathbf{P}_n.
\]

### (2) 几何不变性与仿射不变性

对 Bézier 曲线进行仿射变换，即采用线性变换 $ M $ 和平移 $ \mathbf{c} $ 作用，得到的新曲线为

\[
\begin{aligned}
\mathbf{P}^*(t) &= M\mathbf{P}(t) + \mathbf{c} = M\sum_{i=0}^{n} \mathbf{P}_i B_i^n(t) + \mathbf{c}\sum_{i=0}^{n} B_i^n(t) \\
&= \sum_{i=0}^{n} (M\mathbf{P}_i + \mathbf{c}) B_i^n(t) = \sum_{i=0}^{n} \mathbf{P}_i^* B_i^n(t),
\end{aligned}
\]

即 $ \mathbf{P}^*(t) $ 是由原控制顶点经相同的仿射变换后得到的新的控制顶点所构造的 Bézier 曲线。这说明，**Bézier 曲线的形状仅取决于控制顶点，而与坐标系的选取无关**，它是几何与仿射不变的。

### (3) 对称性质

如果颠倒控制顶点次序，即令 $ \mathbf{P}_i^* = \mathbf{P}_{n-i}\ (i = 0, 1, \cdots, n) $，那么这些新控制顶点定义的 Bézier 曲线为

\[
\begin{aligned}
\mathbf{P}^*(t) &= \sum_{i=0}^{n} \mathbf{P}_i^* B_i^n(t) = \sum_{i=0}^{n} \mathbf{P}_{n-i} B_i^n(t) \\
&= \sum_{i=0}^{n} \mathbf{P}_i B_{n-i}^n(t) = \sum_{i=0}^{n} \mathbf{P}_i B_i^n(1 - t) \\
&= \mathbf{P}(1 - t).
\end{aligned}
\]

这说明，这两条曲线的**形状完全相同但是参数化不同，曲线的方向相反**。这一性质也说明了由同一控制多边形定义的 Bézier 曲线是唯一的。

### (4) 凸包性质

对 $ n $ 次 Bézier 曲线

\[
\mathbf{P}(t) = \sum_{i=0}^{n} \mathbf{P}_i B_i^n(t), \quad t \in [0, 1],
\]

从 Bernstein 基函数的**非负性**和**单位分解性**可知，Bézier 曲线上的每一点 $ \mathbf{P}(t) $ 都是控制顶点 $ \mathbf{P}_i\ (i = 0, 1, \cdots, n) $ 的凸组合，而组合系数就是控制顶点对应的 Bernstein 基函数。在几何意义上：**Bézier 曲线完全落在由其控制多边形确定的凸包中**。

### (5) 导矢性质

利用 Bernstein 基函数求导公式，可得 $ n $ 次 Bézier 曲线的一阶导矢曲线（也称为一阶速端曲线）为

\[
\mathbf{P}'(t) = n \sum_{i=0}^{n-1} (\mathbf{P}_{i+1} - \mathbf{P}_i) B_i^{n-1}(t),
\]

这说明 $ \mathbf{P}'(t) $ 是一条 $ n - 1 $ 次 Bézier 曲线，其控制顶点是原控制多边形边矢量（或控制顶点的一阶差分）。进一步，$ n $ 次 Bézier 曲线的 $ r $ 阶导矢曲线（也称为 $ r $ 阶速端曲线）为

\[
\mathbf{P}^{(r)}(t) = \frac{n!}{(n-r)!} \sum_{i=0}^{n-r} \Delta^r \mathbf{P}_i B_i^{n-r}(t) = \frac{n!}{(n-r)!} \sum_{i=0}^{n-r} \nabla^r \mathbf{P}_{i+r} B_i^{n-r}(t),
\]

这说明 $ \mathbf{P}^{(r)}(t) $ 是一条 $ n - r $ 次 Bézier 曲线，其控制顶点是由原控制顶点 $ r $ 阶差分所确定。

### 端点导矢与曲率

在曲线端点处

\[
\mathbf{P}'(0) = n(\mathbf{P}_1 - \mathbf{P}_0), \qquad \mathbf{P}'(1) = n(\mathbf{P}_n - \mathbf{P}_{n-1}).
\]

这说明控制多边形的首尾两边 $ \mathbf{P}_1 - \mathbf{P}_0 $ 和 $ \mathbf{P}_n - \mathbf{P}_{n-1} $ 为曲线 $ \mathbf{P}(t) $ 在首末端点的切方向。

而

\[
\mathbf{P}^{(r)}(0) = \frac{n!}{(n-r)!}\Delta^r \mathbf{P}_0, \qquad \mathbf{P}^{(r)}(1) = \frac{n!}{(n-r)!}\nabla^r \mathbf{P}_n,
\]

这说明曲线 $ \mathbf{P}(t) $ 在首末端点处的 $ r $ 阶导矢分别由其前、后 $ r + 1 $ 个控制顶点所确定。

由一般参数化下曲线的曲率公式

\[
k = \frac{|\dot{\mathbf{p}} \times \ddot{\mathbf{p}}|}{|\dot{\mathbf{p}}|^3},
\]

曲线 $ \mathbf{P}(t) $ 在两个端点处的曲率分别为

\[
k(0) = \frac{(n-1)\left|\Delta \mathbf{P}_0 \times \Delta \mathbf{P}_1\right|}{n\left|\Delta \mathbf{P}_0\right|^3},
\]

\[
k(1) = \frac{(n-1)\left|\nabla \mathbf{P}_{n-1} \times \nabla \mathbf{P}_n\right|}{n\left|\nabla \mathbf{P}_n\right|^3}.
\]

### (6) 升阶性质

利用 Bernstein 基函数的升阶公式，一条 $ n $ 次 Bézier 曲线可以形式上升阶为 $ n + 1 $ 次的 Bézier 曲线

\[
\mathbf{P}(t) = \sum_{i=0}^{n} \mathbf{P}_i B_i^n(t) = \sum_{i=0}^{n+1} \mathbf{Q}_i B_i^{n+1}(t),
\]

升阶过程曲线保持不变，新的控制顶点满足

\[
\mathbf{Q}_i = \frac{i}{n+1}\mathbf{P}_{i-1} + \left(1 - \frac{i}{n+1}\right)\mathbf{P}_i, \quad i = 0, 1, \cdots, n+1, \qquad \mathbf{P}_{-1} = \mathbf{P}_{n+1} = \mathbf{0}.
\]

由于 $ \mathbf{Q}_0 = \mathbf{P}_0,\ \mathbf{Q}_{n+1} = \mathbf{P}_n $，因此升阶过程中两端的新控制顶点与原来相同。而当 $ 0 < i < n+1 $ 时，新控制顶点 $ \mathbf{Q}_i $ 是为控制多边形边 $ \mathbf{P}_{i-1}\mathbf{P}_i $ 上的一点，具体位置与 $ i $ 有关。几何上，新的控制多边形可以看做原控制多边形的一个“割角”过程。

设

\[
\mathbf{p}^{(0)} = (\mathbf{P}_0, \mathbf{P}_1, \cdots, \mathbf{P}_n)^T, \qquad \mathbf{p}^{(1)} = (\mathbf{Q}_0, \mathbf{Q}_1, \cdots, \mathbf{Q}_{n+1})^T.
\]

上升阶过程中控制顶点的关系可以表示为

\[
\mathbf{p}^{(1)} = T_{n+1}\mathbf{p}^{(0)},
\]

其中 $ T_{n+1} $ 称为**升阶算子**，它是一个 $ (n+2) \times (n+1) $ 阶矩阵

\[
T_{n+1} = \frac{1}{n+1}
\begin{pmatrix}
n+1 & 0 & 0 & \cdots & 0 & 0 \\
1 & n & 0 & \cdots & 0 & 0 \\
0 & 2 & n-1 & \cdots & 0 & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\
0 & 0 & 0 & \cdots & 2 & 0 \\
0 & 0 & 0 & \cdots & n & 1 \\
0 & 0 & 0 & \cdots & 0 & n+1
\end{pmatrix}.
\]

升阶 $ m $ 次后，$ n $ 次 Bézier 曲线形式上表示为 $ n + m $ 次 Bézier 曲线，新的控制顶点向量为

\[
\mathbf{p}^{(m)} = T_{n+m} \cdots T_{n+2} T_{n+1} \mathbf{p}^{(0)}.
\]

升阶过程不断进行下去，当 $ m \to \infty $ 时，控制多边形 $ \mathbf{p}^{(m)} $ 就收敛到原 Bézier 曲线。

在几何上：如果一条 Bézier 曲线的控制多边形按照升阶公式规则不断“割角”后，控制多边形收敛到此曲线。


### (7) 变差缩减性质（VD 性质）

对平面上的 Bézier 曲线，任一平面上的直线与 Bézier 曲线的交点个数不多于该直线与其控制多边形的交点个数。

### (8) 保凸性质

对平面上的 Bézier 曲线，如其控制多边形是凸的（指连接首末顶点构成的封闭多边形为凸的，相重边情况除外），则该 Bézier 曲线也是凸的。

### (9) 控制顶点的局部影响

移动 $ n $ 次 Bézier 曲线的控制顶点 $ \mathbf{P}_i $，将对整条曲线形状产生影响，且对参数 $ t = \frac{i}{n} $ 对应的点 $ \mathbf{P}\left(\frac{i}{n}\right) $ 影响最大。

## de Casteljau 算法

**目的：** 对 $ n $ 次 Bézier 曲线，对参数域中的某个参数 $ t \in [0, 1] $，希望给出简单、高效、几何特征明显的计算点 $ \mathbf{P}(t) $ 的方法。利用 Bernstein 基函数的递推公式，可知

$$
\begin{aligned}
\mathbf{P}(t) &= \sum_{i=0}^{n} \mathbf{P}_i B_i^n(t) \\
&= \mathbf{P}_0 (1 - t) B_0^{n-1}(t) + \sum_{i=1}^{n-1} \mathbf{P}_i \left[ (1 - t) B_i^{n-1}(t) + t B_{i-1}^{n-1}(t) \right] + \mathbf{P}_n t B_{n-1}^{n-1}(t) \\
&= \sum_{i=0}^{n-1} \left[ (1 - t)\mathbf{P}_i + t\mathbf{P}_{i+1} \right] B_i^{n-1}(t) \\
&= \sum_{i=0}^{n-1} \mathbf{P}_i^{(1)} B_i^{n-1}(t).
\end{aligned}
$$

如上公式说明，一条 $ n $ 次 Bézier 曲线从形式上“降阶”为 $ n - 1 $ 次 Bézier 曲线，新的控制顶点 $ \mathbf{P}_i^{(1)} $ 落在原控制多边形的边 $ \mathbf{P}_i\mathbf{P}_{i+1} $ 上，且将边都按比例 $ t : 1 - t $ 进行分割。

一直这样“降阶”下去，

\[
\mathbf{P}(t) = \sum_{i=0}^{n-1} \mathbf{P}_i^{(1)}(t) B_i^{n-1}(t) = \cdots = \sum_{i=0}^{n-k} \mathbf{P}_i^{(k)}(t) B_i^{n-k}(t) = \cdots = \mathbf{P}_0^{(n)}(t),
\]

最后 $ n $ 次 Bézier 曲线从形式上“降阶”为 $ 0 $ 次 Bézier 曲线（即一点）$ \mathbf{P}_0^{(n)}(t) $，这就是我们要求的曲线上的点 $ \mathbf{P}(t) $。

这就是 Bézier 曲线的 **de Casteljau 算法**，总结为如下递归求值算法：

$$
\begin{cases}
\mathbf{P}_i^{(0)}(t) \equiv \mathbf{P}_i^{(0)} = \mathbf{P}_i, & i = 0, 1, \cdots, n, \\[4pt]
\mathbf{P}_i^{(k)}(t) = (1 - t)\mathbf{P}_i^{(k-1)}(t) + t\mathbf{P}_{i+1}^{(k-1)}(t), & i = 0, 1, \cdots, n - k;\ k = 1, 2, \cdots, n.
\end{cases}
$$

在几何意义上：利用参数 $ t $，de Casteljau 算法就是在每一步的控制多边形的每一条边上，都按照比例 $ t : 1 - t $ 选择控制顶点而形成新的控制多边形，每做一级递推，控制多边形减少一条边，最后在只剩一条边的控制多边形上按照比例 $ t : 1 - t $ 选择的点就是所求点。

对 $ n $ 次 Bézier 曲线而言，进行 $ n $ 级递推后将得到所求结果。

## de Casteljau 算法的矩阵形式

设

$$
\mathbf{P}^{(0)} = (\mathbf{P}_0, \mathbf{P}_1, \cdots, \mathbf{P}_n)^T, \quad \mathbf{P}^{(k)}(t) = (\mathbf{P}_0^{(k)}, \mathbf{P}_1^{(k)}, \cdots, \mathbf{P}_{n-k}^{(k)})^T,
$$

则 de Casteljau 算法可表示为矩阵形式

$$
\mathbf{P}^{(k)}(t) = M_k(t) \cdots M_2(t) M_1(t) \mathbf{P}^{(0)},
$$

其中 $(n-k+1) \times (n-k+2)$ 阶矩阵 $M_k(t)$ 为

$$
M_k(t) =
\begin{pmatrix}
1-t & t & 0 & \cdots & 0 & 0 \\
0 & 1-t & t & \cdots & 0 & 0 \\
\vdots & \ddots & \ddots & \ddots & \ddots & \vdots \\
0 & 0 & \cdots & 1-t & t & 0 \\
0 & 0 & \cdots & 0 & 1-t & t
\end{pmatrix},
$$

## Bézier 曲线的分割方法

de Casteljau 算法也给出了 Bézier 曲线的分割方法。利用 de Casteljau 算法，计算 Bézier 曲线 $\mathbf{P}(t)$ 上的点 $\mathbf{P}(\tilde{t})$，该点把曲线分割为两条 $n$ 次 Bézier 曲线段：

1. 第一条曲线 $\mathbf{P}(t)$ 对应的参数域为 $t \in [0, \tilde{t}]$，其控制顶点是 Casteljau 算法对应三角阵列（金字塔算法）公式中上面边上的所有点

$$
\mathbf{P}_0^{(0)}, \mathbf{P}_0^{(1)}(\tilde{t}), \cdots, \mathbf{P}_0^{(n-1)}(\tilde{t}), \mathbf{P}_0^{(n)}(\tilde{t}).
$$

2. 第二条曲线 $\mathbf{P}(t)$ 对应的参数域为 $t \in [\tilde{t}, 1]$，其控制顶点是 Casteljau 算法对应三角阵列（金字塔算法）公式中下面边上的所有点

$$
\mathbf{P}_0^{(n)}(\tilde{t}), \mathbf{P}_1^{(n-1)}(\tilde{t}), \cdots, \mathbf{P}_{n-1}^{(1)}(\tilde{t}), \mathbf{P}_n^{(0)}.
$$

## Bézier 曲线的参数连续拼接

设 $n$ 次 Bézier 曲线 $\mathbf{P}(t)$ 和 $m$ 次 Bézier 曲线 $\mathbf{Q}(\hat{t})$ 分别定义为

$$
\mathbf{P}(t) = \sum_{i=0}^{n} \mathbf{P}_i B_i^n(t), \quad t \in [0, 1]
$$

$$
\mathbf{Q}(\hat{t}) = \sum_{i=0}^{m} \mathbf{Q}_i B_i^m(\hat{t}), \quad \hat{t} \in [0, 1].
$$

考虑曲线 $\mathbf{P}(t)$ 在 $t=1$ 处和曲线 $\mathbf{Q}(\hat{t})$ 在 $\hat{t}=0$ 处参数连续拼接的条件：

1. $C^0$ 连续条件：$\mathbf{P}_n = \mathbf{Q}_0$。
2. $C^1$ 连续条件：$C^0$ 连续且 $n(\mathbf{P}_n - \mathbf{P}_{n-1}) = m(\mathbf{Q}_1 - \mathbf{Q}_0)$。
3. $C^2$ 连续条件：$C^1$ 连续且

$$
n(n-1)(\mathbf{P}_n - 2\mathbf{P}_{n-1} + \mathbf{P}_{n-2}) = m(m-1)(\mathbf{Q}_2 - 2\mathbf{Q}_1 + \mathbf{Q}_0).
$$

## Bézier 曲线的几何连续拼接

1. $G^0$ 连续条件：$\mathbf{P}_n = \mathbf{Q}_0$，这与 $C^0$ 连续条件相同。
2. $G^1$ 连续条件：$G^0$ 连续且在连接点处具有同向的切向量，即存在正数 $\alpha > 0$，使得

$$
\Delta\mathbf{Q}_0 = \alpha \nabla\mathbf{P}_n.
$$

3. $G^2$ 连续条件：$G^1$ 连续且在连接点处具有相同的曲率矢，即满足两个条件：a) 密切平面重合或副法向量同向；b) 曲率相等。

## 张量积型 Bernstein 基函数的定义

对 $m$ 与 $n$ 次的一元 Bernstein 基函数

$$
\{B_i^m(u)\}_{i=0}^{m}, \quad \{B_j^n(v)\}_{j=0}^{n},
$$

张量积型 $m \times n$ 次二元 Bernstein 基函数为

$$
B_{i,j}^{m,n}(u, v) = B_i^m(u) B_j^n(v), \quad i = 0, 1, \cdots, m, \ j = 0, 1, \cdots, n.
$$

这 $(m+1) \times (n+1)$ 个多项式线性无关，从而构成二元多项式空间 $\mathbb{P}_{m,n}^{(2)}$ 的一组基。
## 张量积型 Bernstein 基函数的性质

1. **非负性.** $B_{i,j}^{m,n}(u, v) \ge 0, \quad (u, v) \in [0, 1] \times [0, 1]$.

2. **单位分解性.**

$$
\sum_{i=0}^{m} \sum_{j=0}^{n} B_{i,j}^{m,n}(u, v) = \sum_{i=0}^{m} B_i^m(u) \sum_{j=0}^{n} B_j^n(v) \equiv 1.
$$

3. **角点性质.** 在参数域 $[0,1] \times [0,1]$ 的四个角点，分别只有一个基函数取值为 $1$，其余全部为 $0$，即

$$
B_{i,j}^{m,n}(0,0) =
\begin{cases}
1, & i = j = 0 \\
0, & i \ne 0 \text{ 或 } j \ne 0,
\end{cases}
\qquad
B_{i,j}^{m,n}(1,0) =
\begin{cases}
1, & i = m,\ j = 0 \\
0, & i \ne m \text{ 或 } j \ne 0,
\end{cases}
$$

$$
B_{i,j}^{m,n}(0,1) =
\begin{cases}
1, & i = 0,\ j = n \\
0, & i \ne 0 \text{ 或 } j \ne n,
\end{cases}
\qquad
B_{i,j}^{m,n}(1,1) =
\begin{cases}
1, & i = m,\ j = n \\
0, & i \ne m \text{ 或 } j \ne n.
\end{cases}
$$

4. **递推公式.** 对 $i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n$，

$$
\begin{aligned}
B_{i,j}^{m,n}(u, v) &= \left[ (1 - u)B_i^{m-1}(u) + uB_{i-1}^{m-1}(u) \right] B_j^n(v), \\
B_{i,j}^{m,n}(u, v) &= B_i^m(u) \left[ (1 - v)B_j^{n-1}(v) + vB_{j-1}^{n-1}(v) \right], \\
B_{i,j}^{m,n}(u, v) &= \left[ (1 - u)B_i^{m-1}(u) + uB_{i-1}^{m-1}(u) \right] \cdot \\
&\quad \left[ (1 - v)B_j^{n-1}(v) + vB_{j-1}^{n-1}(v) \right].
\end{aligned}
$$

5. **升阶公式.** 对 $i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n$，

$$
\begin{aligned}
B_{i,j}^{m,n}(u, v) &= \left[ \frac{i+1}{m+1} B_{i+1}^{m+1}(u) + \left( 1 - \frac{i}{m+1} \right) B_i^{m+1}(u) \right] B_j^n(v), \\
B_{i,j}^{m,n}(u, v) &= B_i^m(u) \left[ \frac{j+1}{n+1} B_{j+1}^{n+1}(v) + \left( 1 - \frac{j}{n+1} \right) B_j^{n+1}(v) \right], \\
B_{i,j}^{m,n}(u, v) &= \left[ \frac{i+1}{m+1} B_{i+1}^{m+1}(u) + \left( 1 - \frac{i}{m+1} \right) B_i^{m+1}(u) \right] \cdot \\
&\quad \left[ \frac{j+1}{n+1} B_{j+1}^{n+1}(v) + \left( 1 - \frac{j}{n+1} \right) B_j^{n+1}(v) \right].
\end{aligned}
$$

6. **导函数递推公式.** 对 $i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n$，

$$
\frac{\partial}{\partial u} B_{i,j}^{m,n}(u, v) = (B_i^m(u))' B_j^n(v) = m \left[ B_{i-1}^{m-1}(u) - B_i^{m-1}(u) \right] B_j^n(v),
$$

$$
\frac{\partial}{\partial v} B_{i,j}^{m,n}(u, v) = B_i^m(u) (B_j^n(v))' = n B_i^m(u) \left[ B_{j-1}^{n-1}(v) - B_j^{n-1}(v) \right].
$$

而

$$
\frac{\partial^{k+r}}{\partial u^k \partial v^r} B_{i,j}^{m,n}(u, v) = (B_i^m(u))^{(k)} (B_j^n(v))^{(r)}
$$

可以由如上两个公式逐步推出。

7. **积分等值性.** 对 $i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n$，

$$
\int_0^1 \int_0^1 B_{i,j}^{m,n}(u, v) \, du \, dv = \frac{1}{(m+1)(n+1)}.
$$

## 张量积型 Bézier 曲面

### 定义

称参数曲面

$$
\mathbf{P}(u, v) = \sum_{i=0}^{m} \sum_{j=0}^{n} \mathbf{P}_{i,j} B_{i,j}^{m,n}(u, v), \quad (u, v) \in [0, 1] \times [0, 1], \tag{4.1}
$$

为 $m \times n$ 次 **Bézier 曲面**，其中 $B_{i,j}^{m,n}(u, v) = B_i^m(u) B_j^n(v)$ 为张量积型 Bernstein 基函数，空间向量 $\mathbf{P}_{i,j} \in \mathbb{R}^3$ 称为**控制顶点**，$i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n$。依次用直线段连接同行同列相邻两个控制顶点所得的 $m \times n$ 边折线网格称为**控制网格**（或 **Bézier 网**）。
**(这里的图是什么意思，这里没有看明白)**
**切矢可以直接拿线性组合算是什么意思**

角点的切平面只和自己和相邻的两个切有关而且就是这三个围成的平面?
### 性质 

1. **角点插值性质.** Bézier 曲面插值其控制网格的四个角点，即

$$
\mathbf{P}(0, 0) = \mathbf{P}_{0,0}, \quad \mathbf{P}(0, 1) = \mathbf{P}_{0,n}, \quad \mathbf{P}(1, 0) = \mathbf{P}_{m,0}, \quad \mathbf{P}(1, 1) = \mathbf{P}_{m,n}.
$$

2. **几何不变性和仿射不变性.** 由张量积型 Bernstein 基函数的单位分解性可知。

3. **凸包性质.** 由张量积型 Bernstein 基函数的非负性和单位分解性，可知张量积型 Bézier 曲面位于其控制顶点的凸包内。

4. **等参线性质与边界性质.** 当参数取为等参线 $v = v^*$ 和 $u = u^*$ 时，曲面分别是 $m$ 次和 $n$ 次 Bézier 曲线，即

$$
\mathbf{P}(u, v^*) = \sum_{i=0}^{m} \left( \sum_{j=0}^{n} \mathbf{P}_{i,j} B_j^n(v^*) \right) B_i^m(u), \quad u \in [0, 1],
$$

$$
\mathbf{P}(u^*, v) = \sum_{j=0}^{n} \left( \sum_{i=0}^{m} \mathbf{P}_{i,j} B_i^m(u^*) \right) B_j^n(v), \quad v \in [0, 1].
$$

当取为参数域的四条边界 $u = 0, u = 1, v = 0, v = 1$ 时，Bézier 曲面的边界恰好是由控制网格的四条边界控制多边形所决定的四条 Bézier 曲线，即

$$
\mathbf{P}(u, 0) = \sum_{i=0}^{m} \mathbf{P}_{i,0} B_i^m(u), \qquad \mathbf{P}(u, 1) = \sum_{i=0}^{m} \mathbf{P}_{i,n} B_i^m(u),
$$

$$
\mathbf{P}(0, v) = \sum_{j=0}^{n} \mathbf{P}_{0,j} B_j^n(v), \qquad \mathbf{P}(1, v) = \sum_{j=0}^{n} \mathbf{P}_{m,j} B_j^n(v).
$$

5. **导矢性质.** 张量积型 Bézier 曲面的 $(k, l)$ 阶导矢为

$$
\begin{aligned}
\frac{\partial^{k+l}}{\partial u^k \partial v^l} \mathbf{P}(u, v) &= \sum_{i=0}^{m} \sum_{j=0}^{n} \mathbf{P}_{i,j} (B_i^m(u))^{(k)} (B_j^n(v))^{(l)} \\
&= \frac{m! \, n!}{(m-k)! \, (n-l)!} \sum_{i=0}^{m-k} \sum_{j=0}^{n-l} \Delta^{k,l} \mathbf{P}_{i,j} B_i^{m-k}(u) B_j^{n-l}(v),
\end{aligned}
$$

特别地，曲面关于单参数的偏导矢为

$$
\frac{\partial^k}{\partial u^k} \mathbf{P}(u, v) = \frac{m!}{(m-k)!} \sum_{i=0}^{m-k} \sum_{j=0}^{n} \Delta^{k,0} \mathbf{P}_{i,j} B_i^{m-k}(u) B_j^n(v),
$$

$$
\frac{\partial^l}{\partial v^l} \mathbf{P}(u, v) = \frac{n!}{(n-l)!} \sum_{i=0}^{m} \sum_{j=0}^{n-l} \Delta^{0,l} \mathbf{P}_{i,j} B_i^m(u) B_j^{n-l}(v).
$$

6. **边界与角点切矢性质.** 曲面在 $u = 0$、$v = 0$ 两条边界上的切矢为

$$
\frac{\partial}{\partial u}\mathbf{P}(0, v) = m \sum_{j=0}^{n} (\mathbf{P}_{1,j} - \mathbf{P}_{0,j}) B_j^n(v),
$$

$$
\frac{\partial}{\partial v}\mathbf{P}(u, 0) = n \sum_{i=0}^{m} (\mathbf{P}_{i,1} - \mathbf{P}_{i,0}) B_i^m(u),
$$

在其它边界上的切矢 $\frac{\partial}{\partial u}\mathbf{P}(u, 0)$、$\frac{\partial}{\partial v}\mathbf{P}(0, v)$ 可以类似推出，在此不再一一列出。

曲面在角点上的切矢分别为

$$
\mathbf{P}_u(0, 0) = m(\mathbf{P}_{1,0} - \mathbf{P}_{0,0}), \quad \mathbf{P}_u(1, 0) = m(\mathbf{P}_{m,0} - \mathbf{P}_{m-1,0}),
$$

$$
\mathbf{P}_u(0, 1) = m(\mathbf{P}_{1,n} - \mathbf{P}_{0,n}), \quad \mathbf{P}_u(1, 1) = m(\mathbf{P}_{m,n} - \mathbf{P}_{m-1,n}),
$$

$$
\mathbf{P}_v(0, 0) = n(\mathbf{P}_{0,1} - \mathbf{P}_{0,0}), \quad \mathbf{P}_v(1, 0) = n(\mathbf{P}_{m,1} - \mathbf{P}_{m,0}),
$$

$$
\mathbf{P}_v(0, 1) = n(\mathbf{P}_{0,n} - \mathbf{P}_{0,n-1}), \quad \mathbf{P}_v(1, 1) = n(\mathbf{P}_{m,n} - \mathbf{P}_{m,n-1}),
$$

$$
\mathbf{P}_{uv}(0, 0) = mn(\mathbf{P}_{1,1} - \mathbf{P}_{1,0} - \mathbf{P}_{0,1} + \mathbf{P}_{0,0}),
$$

$$
\mathbf{P}_{uv}(1, 0) = mn(\mathbf{P}_{m,1} - \mathbf{P}_{m,0} - \mathbf{P}_{m-1,1} + \mathbf{P}_{m-1,0}),
$$

$$
\mathbf{P}_{uv}(0, 1) = mn(\mathbf{P}_{1,n} - \mathbf{P}_{1,n-1} - \mathbf{P}_{0,n} + \mathbf{P}_{0,n-1}),
$$

$$
\mathbf{P}_{uv}(1, 1) = mn(\mathbf{P}_{m,n} - \mathbf{P}_{m,n-1} - \mathbf{P}_{m-1,n} + \mathbf{P}_{m-1,n-1}).
$$

由曲面在一点处的单位法向量公式，

$$
\mathbf{e}(u, v) = \frac{\mathbf{P}_u(u, v) \times \mathbf{P}_v(u, v)}{\left| \mathbf{P}_u(u, v) \times \mathbf{P}_v(u, v) \right|},
$$

张量积型 Bézier 曲面在四个角点处的法向量（即为切平面的法向量）仅与该控制顶点在两个方向的一阶差分有关。

例如，曲面在 $\mathbf{P}(0,0)$ 点处的法向量垂直于向量 $\mathbf{P}_{1,0} - \mathbf{P}_{0,0}$ 与 $\mathbf{P}_{0,1} - \mathbf{P}_{0,0}$，其切平面是 $\mathbf{P}_{0,0}$、$\mathbf{P}_{1,0}$、$\mathbf{P}_{0,1}$ 三点所决定的平面。在其它三个角点结论类似。

7. **升阶性质.** $m \times n$ 次 Bézier 曲面可在形式上升阶为 $(m+1) \times n$ 次、$m \times (n+1)$ 次或 $(m+1) \times (n+1)$ 次曲面

$$
\begin{aligned}
\mathbf{P}(u, v) &= \sum_{i=0}^{m} \sum_{j=0}^{n} \mathbf{P}_{i,j} B_i^m(u) B_j^n(v) \\
&= \sum_{i=0}^{m+1} \sum_{j=0}^{n} \left( \alpha_i \mathbf{P}_{i-1,j} + (1 - \alpha_i)\mathbf{P}_{i,j} \right) B_i^{m+1}(u) B_j^n(v) \\
&= \sum_{i=0}^{m} \sum_{j=0}^{n+1} \left( \beta_j \mathbf{P}_{i,j-1} + (1 - \beta_j)\mathbf{P}_{i,j} \right) B_i^m(u) B_j^{n+1}(v) \\
&= \sum_{i=0}^{m+1} \sum_{j=0}^{n+1} \mathbf{P}_{i,j}^{*} B_i^{m+1}(u) B_j^{n+1}(v),
\end{aligned}
$$

其中对 $i = 0, 1, \cdots, m+1,\ j = 0, 1, \cdots, n+1$

$$
\begin{aligned}
\mathbf{P}_{i,j}^{*} &= \alpha_i \beta_j \mathbf{P}_{i-1,j-1} + \alpha_i (1 - \beta_j)\mathbf{P}_{i-1,j} \\
&\quad + (1 - \alpha_i)\beta_j \mathbf{P}_{i,j-1} + (1 - \alpha_i)(1 - \beta_j)\mathbf{P}_{i,j}, \\
\alpha_i &= \frac{i}{m+1}, \quad \beta_j = \frac{j}{n+1},
\end{aligned}
$$

升阶公式说明，张量积型 Bézier 曲面升阶可采取“张量积”的方式进行，可对参数 $u$ 和 $v$ 分别进行，而且升阶结果与升阶两个参数的顺序无关。

类似地，可以得到升多阶的公式。当两个方向次数都升阶趋于无穷时，控制网格收敛到原 Bézier 曲面。


7. **de Casteleljau 算法.** 利用张量积型 Bernstein 基函数的递推公式，计算张量积 Bézier 曲面上一点 $\mathbf{P}(u, v)$ 也可由递归方法计算

$$
\begin{aligned}
\mathbf{P}(u, v) &= \sum_{i=0}^{m} \sum_{j=0}^{n} \mathbf{P}_{i,j} B_i^m(u) B_j^n(v) \\
&= \sum_{i=0}^{m} \sum_{j=0}^{n} \mathbf{P}_{i,j} \left[ (1 - u)B_i^{m-1}(u) + uB_{i-1}^{m-1}(u) \right] \left[ (1 - v)B_j^{n-1}(v) + vB_{j-1}^{n-1}(v) \right] \\
&= \sum_{i=0}^{m-1} \sum_{j=0}^{n-1} \left[ (1 - u)(1 - v)\mathbf{P}_{i,j} + (1 - u)v\mathbf{P}_{i,j+1} + u(1 - v)\mathbf{P}_{i+1,j} \right. \\
&\qquad \left. + uv\mathbf{P}_{i+1,j+1} \right] B_i^{m-1}(u) B_j^{n-1}(v) \\
&= \sum_{i=0}^{m-1} \sum_{j=0}^{n-1} \mathbf{P}_{i,j}^{(1,1)}(u, v) B_i^{m-1}(u) B_j^{n-1}(v),
\end{aligned}
$$

这样 $m \times n$ 次 Bézier 曲面从形式上“降阶”为 $(m-1) \times (n-1)$ 次 Bézier 曲面，新的控制顶点由原控制网格中的空间四边形的四个顶点线性组合而成，且对每一个空间四边形网格，组合系数是相同的。

一直进行下去，有

$$
\begin{aligned}
\mathbf{P}(u, v) &= \sum_{i=0}^{m-1} \sum_{j=0}^{n-1} \mathbf{P}_{i,j}^{(1,1)}(u, v) B_i^{m-1}(u) B_j^{n-1}(v) \\
&= \cdots \\
&= \sum_{i=0}^{m-r} \sum_{j=0}^{n-s} \mathbf{P}_{i,j}^{(r,s)}(u, v) B_i^{m-r}(u) B_j^{n-s}(v) \\
&= \cdots \\
&= \mathbf{P}_{0,0}^{(m,n)}(u, v),
\end{aligned}
$$

即 $m \times n$ 次 Bézier 曲面从形式上“降阶”为 $0 \times 0$ 次曲面（即一点）$\mathbf{P}_{0,0}^{(m,n)}(u, v)$，这就是我们要求的点 $\mathbf{P}(u, v)$。

这就是张量积 Bézier 曲面的 **de Casteljau 算法**，总结如下：

$$
\begin{cases}
\mathbf{P}_{i,j}^{(0,0)}(u, v) = \mathbf{P}_{i,j}^{(0,0)} = \mathbf{P}_{i,j}, & i = 0, 1, \cdots, m,\ j = 0, 1, \cdots, n, \\[4pt]
\mathbf{P}_{i,j}^{(r,s)}(u, v) = (1 - u)(1 - v)\mathbf{P}_{i,j}^{(r-1,s-1)}(u, v) + (1 - u)v\mathbf{P}_{i,j+1}^{(r-1,s-1)}(u, v) \\
\qquad\qquad\qquad + u(1 - v)\mathbf{P}_{i+1,j}^{(r-1,s-1)}(u, v) + uv\mathbf{P}_{i+1,j+1}^{(r-1,s-1)}(u, v), \\
\qquad\qquad\qquad r = 1, 2, \cdots, m, \quad s = 1, 2, \cdots, n, \\
\qquad\qquad\qquad i = 0, 1, \cdots, m - r, \quad j = 0, 1, \cdots, n - s.
\end{cases}
$$