% 20241012120-张艺严
f = @(x) 1./(1 + x.^2);
a = 0;
b = 1;
n = 250;
h = (b - a)/n;
% 精确值为 pi/4
I_exact = pi/4;
x = a:h:b;
% 矩形法，取每个小区间的左端点
I_rectangle = h*sum(f(x(1:n)));
% 梯形法
I_trapezoid = h*(f(x(1))/2 + sum(f(x(2:n))) + f(x(n+1))/2);
% 抛物线法，n 必须为偶数
I_parabola = h/3*(f(x(1)) + f(x(n+1)) + ...
    4*sum(f(x(2:2:n))) + 2*sum(f(x(3:2:n-1))));
err_rectangle = abs(I_rectangle - I_exact);
err_trapezoid = abs(I_trapezoid - I_exact);
err_parabola = abs(I_parabola - I_exact);
disp('精确值：');
disp(I_exact);
disp('矩形法及误差：');
disp(I_rectangle);
disp(err_rectangle);
disp('梯形法及误差：');
disp(I_trapezoid);
disp(err_trapezoid);
disp('抛物线法及误差：');
disp(I_parabola);
disp(err_parabola);
disp('结果显示在n=250时,抛物线法的误差最小，梯形法次之，矩形法误差最大。');