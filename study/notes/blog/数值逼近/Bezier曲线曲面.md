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







