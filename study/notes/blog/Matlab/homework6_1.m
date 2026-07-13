%20241012120-张艺严

% (1) 已知根1、2、3，求多项式
roots1 = [1, 2, 3];
poly1 = poly(roots1);
syms x;
poly_expr1 = poly2sym(poly1, x);
disp('(1) 多项式:');
disp(poly_expr1);

% (2) 已知根1+i、1-i、0.5，求多项式
roots2 = [1+i, 1-i, 0.5];
poly2 = poly(roots2);
poly_expr2 = poly2sym(poly2, x);
disp('(2) 多项式:');
disp(poly_expr2);

% (3) 求x³+4x²-17x-60=0的根
coeffs3 = [1, 4, -17, -60];
roots3 = roots(coeffs3);
disp('(3) 方程的根:');
disp(roots3);

% (4) 求矩阵A的特征多项式
A = [1 2 0; 1 4 5; 5 2 4];
char_poly = poly(A);
char_poly_expr = poly2sym(char_poly, x);
disp('(4) 特征多项式:');
disp(char_poly_expr);

% (5) 多项式在1、2、3、4处的值及矩阵值
poly5 = @(t) 2*t.^4 + 4*t.^2 - 5*t;
vals_points = poly5([1, 2, 3, 4]);
M = [1 2; 3 4];
val_matrix = 2*M^4 + 4*M^2 - 5*M;
disp('(5) 在1、2、3、4处的值:');
disp(vals_points);
disp('(5) 对于矩阵M的值:');
disp(val_matrix);

% (6) 验证 Cayley-Hamilton 定理
A = [1 2 0; -1 3 -3; 5 2 4];
char_poly_A = poly(A);
result = polyvalm(char_poly_A, A);
disp('(6) Cayley-Hamilton 验证结果（应为零矩阵）:');
disp(result);

% (7) 展开多项式 (3x²+x+1)(x²-1)
poly7 = expand((3*x^2 + x + 1)*(x^2 - 1));
disp('(7) 展开后的多项式:');
disp(poly7);

% (8) 多项式除法：3x⁵+x⁴-3x³+2x+1 除以 x²+1
num = [3, 1, -3, 0, 2, 1];
den = [1, 0, 1];
[q, r] = deconv(num, den);
q_expr = poly2sym(q, x);
r_expr = poly2sym(r, x);
disp('(8) 商:');
disp(q_expr);
disp('(8) 余数:');
disp(r_expr);

% (9) 验证拉格朗日中值定理
f = @(t) 4*t.^3 - 5*t.^2 + t - 2;
a = 0; b = 1;
f_a = f(a); f_b = f(b);
slope = (f_b - f_a)/(b - a);
df = @(t) 12*t.^2 - 10*t + 1;
c = fzero(@(t) df(t) - slope, 0.5);
disp('(9) 满足 f''(c) = (f(b)-f(a))/(b-a) 的 c 值:');
disp(c);


% (10) 画图观察三个极限
figure('Name', '极限观察');
subplot(1,3,1);
x1 = linspace(-0.1, 0.1, 1000);
y1 = cos(1./x1);
plot(x1, y1); title('cos(1/x)');
xlabel('x'); ylabel('y'); grid on;
subplot(1,3,2);
x2_left = linspace(0.9, 0.999, 100);
x2_right = linspace(1.001, 1.1, 100);
y2_left = (x2_left.^2 - 1)./(x2_left - 1);
y2_right = 1./x2_right;
plot(x2_left, y2_left, 'b'); hold on;
plot(x2_right, y2_right, 'r');
title('f(x)'); xlabel('x'); ylabel('y'); grid on; hold off;
subplot(1,3,3);
x3 = linspace(-0.1, 0.1, 1000);
y3 = (1./x3).*sin(1./x3);
plot(x3, y3); title('(1/x)sin(1/x)');
xlabel('x'); ylabel('y'); grid on;