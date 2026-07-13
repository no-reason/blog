%20241012120-张艺严

% (1)生成 3x3x2 的随机矩阵
A = rand(3, 3, 2);
disp('原始矩阵 A:');
disp(A);

diff_A_5 = diff(A, 5); 
disp('A 的 5 阶差分结果 (预期为空矩阵):');
disp(diff_A_5);


%(2)一维数据三次样条插值
x=0:pi/5:4*pi;
y=sin(x) .* exp(-x/10);

xi=0:pi/50:4*pi;

yi=interp1(x,y,xi,'spline');

figure;
plot(x,y,'ro',xi,yi,'b-');
title('三次样条插值');  
legend('原始数据点','三次样条插值曲线');
xlabel('x');ylabel('y');    

%(3)温度数据的按小时插值估算

t=1:12;
T=[5,8,9,15,25,29,31,30,22,25,27,24];

ti=1:0.1:12;
Ti=interp1(t,T,ti,'spline');

figure;

plot(t,T,'ko',ti,Ti,'r-');
title('(3)温度插值估算');
legend('实测温度','每隔0.1小时估算温度');
xlabel('时间（小时）');ylabel('温度');



%(4)二维网格温度曲面插值

Z = [82 81 80 82 84; 
     79 63 61 65 81; 
     84 84 82 85 86];
[X,Y]=meshgrid(1:5,1:3);
figure;
subplot(1,2,1);
surf(X,Y,Z);
title('原始粗糙温度分布面');
xlabel('X');
ylabel('Y');
zlabel('温度');

[Xi,Yi]=meshgrid(1:0.2:5,1:0.2:3);

Zi=interp2(X,Y,Z,Xi,Yi,'spline');

subplot(1,2,2);
surf(Xi,Yi,Zi);
title('插值后的平滑温度分布面');
xlabel('X');
ylabel('Y');
zlabel('温度');


%(5)两种方法作二次多项式拟合

x_data=0.1:0.1:1.0;
y_data=[1.987, 3.28, 6.16, 7.08, 7.34, 7.66, 9.58, 9.48, 9.30, 11.2];

%方法一:使用内置函数polyfit
p1=polyfit(x_data,y_data,2);
disp('(5) 方法一:使用内置函数polyfit拟合的二次多项式系数为:');
disp(p1);

%方法二:使用最小二乘法

x_mat=[(x_data').^2,(x_data'),ones(length(x_data),1)];
p2=x_mat\y_data';
disp('(5) 方法二:使用最小二乘法拟合的二次多项式系数为:');
disp(p2);

x_fit=0.1:0.01:1;
y_fit=polyval(p1,x_fit);
figure;
plot(x_data,y_data,'ko',x_fit,y_fit,'b-');
title('(5) 二次多项式拟合');
legend('原始数据点','拟合曲线');
xlabel('x');
ylabel('y');

% (6) 多项式拟合与欠拟合、过拟合现象对比

p_true = [1, -6, 5, -3]; 

x_val = 0:0.5:5; 
y_true = polyval(p_true, x_val);

noise = 3 * randn(size(y_true)); 
y_noisy = y_true + noise;

p_fit2 = polyfit(x_val, y_noisy, 2);
p_fit3 = polyfit(x_val, y_noisy, 3);
p_fit4 = polyfit(x_val, y_noisy, 4);

disp('【理论值】原始 3 次多项式系数:');
disp(p_true);
disp('【最佳拟合】带噪数据 3 次拟合系数:');
disp(p_fit3);
disp('【过拟合】带噪数据 4 次拟合系数:');
disp(p_fit4);

x_plot = 0:0.05:5; 
figure;
plot(x_val, y_noisy, 'k*', 'MarkerSize', 8, 'DisplayName', '带噪声实验数据');
hold on;

plot(x_plot, polyval(p_true, x_plot), 'k--', 'LineWidth', 1.5, 'DisplayName', '真实规律 (3次)');
plot(x_plot, polyval(p_fit2, x_plot), 'g-', 'LineWidth', 1.5, 'DisplayName', '2次拟合 (欠拟合)');
plot(x_plot, polyval(p_fit3, x_plot), 'r-', 'LineWidth', 1.5, 'DisplayName', '3次拟合 (最佳)');
plot(x_plot, polyval(p_fit4, x_plot), 'b-', 'LineWidth', 1.5, 'DisplayName', '4次拟合 (过拟合)');

title('(6) 含有噪声的数据拟合对比');
xlabel('x');
ylabel('y');
legend('Location', 'best');
grid on; 
hold off;

disp('3次拟合:阶数与原模型一致，能很好地抵抗噪声，拟合出数据的真实规律，系数与真实值最接近。');
disp('2次拟合:阶数不足（欠拟合），无法捕捉函数的三次拐点特征，存在较大偏差。');
disp('4次拟合:阶数偏高(过拟合),曲线为了试图穿过更多的异常噪声点,产生了不必要的扭曲，反而脱离了真实规律。');