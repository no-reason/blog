%20241012120-张艺严


%任务1
% 定义函数
y = @(x) x.^2 .* sin(x.^2 - x - 2);

% 使用 plot
x = linspace(-2, 2, 1000);
figure; plot(x, y(x)); 
title('plot: y = x^2 sin(x^2 - x - 2)');

% 使用 fplot
figure; fplot(y, [-2, 2]); 
title('fplot: y = x^2 sin(x^2 - x - 2)');

% 使用 ezplot
figure; ezplot(y, [-2, 2]); 
title('ezplot: y = x^2 sin(x^2 - x - 2)');


%任务2
% 原函数
f = @(x) 1 + log(x + 2);
g = @(x) (x.^2 + 1).^(1/3);
% 反函数：由 y = 1 + ln(x+2) 得 x = e^(y-1) - 2
finv = @(y) exp(y - 1) - 2;

% 反函数：由 y = (x^2+1)^(1/3) 得 x = ±√(y^3 - 1)

ginv_pos = @(y) sqrt(y.^3 - 1);   % 右半支
ginv_neg = @(y) -sqrt(y.^3 - 1);  % 左半支

figure;
fplot(f); hold on;
fplot(finv);
title('y = 1 + ln(x+2) 及其反函数');
hold off;


% 绘图
figure;
fplot(g); hold on;
fplot(ginv_pos);
fplot(ginv_neg);
title('y = (x^2+1)^(1/3) 及其反函数');
hold off;

%任务3
x = -10:0.5:10;
y = 2 * exp(-0.5 * x);

% 条形图
figure; bar(x, y); title('条形图');

% 填充图
figure; fill(x, y, 'b'); title('填充图');

% 阶梯图
figure; stairs(x, y); title('阶梯图');

% 脉冲图
figure; stem(x, y); title('脉冲图');


%任务4
% 定义曲线
f1 = @(x) sqrt(x);   % y^2 = x 的上半支
f2 = @(x) -sqrt(x);  % y^2 = x 的下半支
f3 = @(x) x.^2;      % y = x^2

% 找交点：解方程 x^2 = sqrt(x)，得 x=0 和 x=1
% 绘图
figure;
fplot(f1, [0, 1]); hold on;
fplot(f2, [0, 1]);
fplot(f3, [0, 1]);
fill([0, 1, 1, 0], [0, 1, 1, 0], 'b', 'FaceAlpha', 0.3); % 填充区域
title('y^2 = x 与 y = x^2 围成的图形');
hold off;

% 计算面积
syms x;
area = int(sqrt(x) - x^2, 0, 1);
disp(['围成图形的面积为: ', char(area)]);