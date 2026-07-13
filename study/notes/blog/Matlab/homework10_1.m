% 20241012120-张艺严
syms x t a n x0 V0 real
%% (1) 解代数方程
eq1 = x*2^x - 1 == 0;
sol1 = solve(eq1, x);
eq2 = x == 3*sin(x) + 1;
% 该方程没有简单的解析解，分别在三个区间内求数值解
sol2_1 = vpasolve(eq2, x, [-2, -1]);
sol2_2 = vpasolve(eq2, x, [-1, 0]);
sol2_3 = vpasolve(eq2, x, [2, 3]);
disp('(1) 代数方程的解：');
disp(sol1);
disp('第二个方程没有简单的解析解，分别在三个区间内求数值解')
disp([sol2_1; sol2_2; sol2_3]);
%% (2) 解线性方程组
syms x1 x2 x3 x4
eqs1 = [x1 - x2 + x3 - x4 == 1,
        x1 - x2 - x3 + x4 == 1,
        x1 - x2 - 2*x3 + 2*x4 == -1/2];
sol_sys1 = solve(eqs1, [x1, x2, x3, x4]);
eqs2 = [x1 - x2 + 4*x3 - 2*x4 == 0,
        x1 - x2 - x3 + 2*x4 == 0,
        3*x1 + x2 + 7*x3 - 2*x4 == 0,
        x1 - 3*x2 - 12*x3 + 6*x4 == 0];
sol_sys2 = solve(eqs2, [x1, x2, x3, x4]);
disp('(2) 线性方程组的解：');
disp(sol_sys1);       % 空结构体表示方程组无解
disp('空结构体表示方程组无解');
disp(sol_sys2);
disp('表示该方程只有零解');
%% (3) 求微分方程的通解
syms y(x)
ode1 = diff(y, x, 2) + 3*diff(y, x) + exp(x) == 0;
sol_ode1 = dsolve(ode1);
ode2 = diff(y, x, 2) - exp(2*y)*diff(y, x) == 0;
sol_ode2 = dsolve(ode2);
disp('(3) 微分方程的通解：');
disp(sol_ode1);
disp(char(sol_ode2));  %解决莫名换行的问题
%% (4) 求给定初值问题的解
ode3 = x^2 + 2*x*y - y^2 + (y^2 + 2*x*y - x^2)*diff(y, x) == 0;
sol_ivp1 = dsolve(ode3, y(1) == 1);
syms z(t)
ode4 = diff(z, t, 2) + 2*n*diff(z, t) + a^2*z == 0;
dz = diff(z, t);
cond4 = [z(0) == x0, dz(0) == V0];
sol_ivp2 = dsolve(ode4, cond4);
disp('(4) 初值问题的解：');
disp(sol_ivp1);
disp(sol_ivp2);
