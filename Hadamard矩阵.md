# Hadamard矩阵
$
\begin{aligned}
&def1:Hadamard阵是每个元素都是\pm 1,且任意两行正交的矩阵\\
&i.e.H_nH_n^T=nI\\
&t_1:Hadamard矩阵在所有元素模长\leq 1的矩阵中具有最大行列式\\
&且det(H_n)=n^{\frac{n}{2}}\\
&证明:\\
&引理:(Hadaamrd不等式)\\
&设矩阵A=(e_1,e_2,\cdots e_n)\\
&其中e_1,\cdots e_n为列向量\\
&则|det A|^2\leq \Pi _{i=1}^{n}||e_i||^2\\
&证明：\\
&对e_1,\cdots e_n做Schmidt正交化\\
&设(\xi _1,\xi _2,\cdots \xi _n)=(e_1,e_2,\cdots e_n)R\\
&其中R为上三角阵,且R的对角元为<\xi _i,e_i>\\
&\Rightarrow |detA|^2=det(A^TA)\\
&=det C^TB^TBC=det C^TC=(det C)^2\\
&=\Pi _{i=1}^{n}|<\xi _i,e_i>|^2\\
&\leq \Pi _{i=1}^{n}\sum_{j=1}^{n}|<\xi _j,e_i>|^2\\
&= \Pi _{i=1}^{n}|e_i|^2\\
&故知Hadamard不等式成立\\
&故显然有原命题成立\\
\\
&t_2:Sylvester构造法(由H_n构造H_{2n}):\\
&H_{2n}=\begin{bmatrix}
H_n&&H_n\\
H_n&&-H_n\\
\end{bmatrix}\\
&t_3:Williamson构造法:\\
&如果存在4个可交换的𝑘 × 𝑘矩阵𝐴, 𝐵, 𝐶,𝐷使得\\
&A^2+B^2+C^2+D^2=4kI\\
&则以下为Hadamard阵:\\
&𝐻_{4𝑘} =\begin{bmatrix}
−𝐴&& 𝐵&&C&&D\\
𝐵 &&A&&D&&C\\
C&&-D&&A&&B\\
D&&C&&-B&&A\\
\end{bmatrix}\\
&\\
&有关Hadamard矩阵的Williamson构造\\
&我们经常可以见到以下两个行列式计算问题\\
&(1)\begin{vmatrix}
a&&b&&c&&d\\
-b&&a&&-d&&c\\
-c&&d&&a&&-b\\
-d&&-c&&b&&a\\
\end{vmatrix}\\
&(2)\begin{vmatrix}
a&&b&&c&&d\\
b&&a&&d&&c\\
c&&d&&a&&b\\
d&&c&&b&&a\\
\end{vmatrix}
&对于(1)其计算直接为Hadamard矩阵的行列式计算\\
&对于(2)我们令C=\begin{vmatrix}
1&&1&&1&&1\\
1&&1&&-1&&-1\\
1&&-1&&1&&-1\\
1&&-1&&-1&&1\\
\end{vmatrix}\\
&则BC=pqrs|C|\\
&\Rightarrow |B|=pqrs\\
&其中\begin{cases}
p=a+b+c+d\\
q=a+b-c-d\\
r=a-b+c-d\\
s=a-b-c+d\\
\end{cases}\\
&
&t_4:若H_n为Hadamard矩阵,则n=1,2或者n\equiv 0 \pmod 4\\
&(其逆命题为Hadamard猜想)\\
&证明:下面证明当n\geq 3时n\equiv 0 \pmod 4\\
&不妨设Hadamard阵𝐻_n第一行都为1\\& (否则做行交换, 列交换, 行乘−1,
列乘−1, 总可变成如上形式)\\
&由第二行与第一行正交可知\sum_{i=1}^{n}h_{2i}=0\\
&故知第二行中1的个数与-1的个数相等\\
&故知2|n\\
&不妨设h_{2j}=1,j=1,2,\cdots \frac{n}{2}\\
&(否则仍然可做交换是的h_{2j}=1)\\
&则由第一行与第三行内积为0，第二行与第三行内积为0可知\\
&\begin{cases}
&\sum_{j=1}^{\frac{n}{2}}h_{3j}+\sum_{j=\frac{n}{2}+1}^{n}h_{3j}=0\\
&\sum_{j=1}^{\frac{n}{2}}h_{3j}-\sum_{j=\frac{n}{2}+1}^{n}h_{3j}=0
\end{cases}\\
&\Rightarrow \sum_{j=1}^{\frac{n}{2}}h_{3j}=0\\
&故有2|\frac{n}{2}\\
&i.e. n\equiv 0 \pmod 4\\
\end{aligned}
$