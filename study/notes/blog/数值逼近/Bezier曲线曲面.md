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

