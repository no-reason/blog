%20241012120-张艺严

%任务1
t = linspace(0, 10*pi, 1000);  % t从0到10π

x = exp(-0.2*t) .* cos(2*t);
y = exp(-0.2*t) .* sin(2*t);
z = t;

figure;
plot3(x, y, z, 'LineWidth', 2);
grid on;
axis equal;

%任务2

[x, y] = meshgrid(-5:0.1:5, -5:0.1:5);

r = sqrt(x.^2 + y.^2);
z = sin(pi * r);

figure;
mesh(x, y, z);

title('三维曲面: z = sin(\pi \sqrt{x^2 + y^2})');
xlabel('x'); ylabel('y'); zlabel('z');
colorbar;
grid on;


%任务3
u = linspace(0, 2*pi, 100);
v = linspace(0, 2*pi, 100);
[U, V] = meshgrid(u, v);

x = (1 + cos(U)) .* cos(V);
y = (1 + cos(U)) .* sin(V);
z = sin(U);

figure;
surf(x, y, z);
title('圆环面: x=(1+cosu)cosv, y=(1+cosu)sinv, z=sinu');
xlabel('x'); ylabel('y'); zlabel('z');
shading interp;  
colorbar;
grid on;
axis equal;