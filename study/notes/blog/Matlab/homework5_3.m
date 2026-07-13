%20241012120-张艺严

% 任务1
figure('Name', '正弦余弦曲线');

x = linspace(0, 2*pi, 100);
y_sin = sin(x);
y_cos = cos(x);

sin_line = plot(x, y_sin, 'Color', 'blue', 'LineWidth', 2, 'DisplayName', 'sin(x)');
hold on;
cos_line = plot(x, y_cos, 'Color', 'red', 'LineWidth', 2, 'DisplayName', 'cos(x)');

text(pi/2, 1, 'sin(x)最大值', 'Color', 'blue', 'HorizontalAlignment', 'center');
text(pi, -1, 'cos(x)最小值', 'Color', 'red', 'HorizontalAlignment', 'center');
text(3*pi/4, sin(3*pi/4), '\leftarrow sin(x)', 'Color', 'blue');
text(pi/4, cos(pi/4), '\leftarrow cos(x)', 'Color', 'red');

title('正弦函数与余弦函数');
xlabel('x');
ylabel('y');
legend;
grid on;

hold off;


% 任务2
figure('Name', '子图示例');

% 第一个子图：正弦曲线
subplot(2, 1, 1);  
x1 = linspace(0, 2*pi, 100);
y1 = sin(x1);
plot(x1, y1, 'Color', 'green', 'LineWidth', 2);
title('正弦函数 sin(x)');
xlabel('x');
ylabel('sin(x)');
grid on;
annotation('textarrow', [0.3, 0.4], [0.8, 0.75], 'String', '周期2\pi');

legend;
% 第二个子图：余弦曲线
subplot(2, 1, 2);  
x2 = linspace(0, 2*pi, 100);
y2 = cos(x2);
plot(x2, y2, 'Color', 'red', 'LineWidth', 2);
title('余弦函数 cos(x)');
xlabel('x');
ylabel('cos(x)');
grid on;
annotation('textarrow', [0.55, 0.65], [0.38, 0.34], 'String', '周期2\pi');

legend;

% 调整子图间距
sgtitle('正弦曲线与余弦曲线（子图展示）');