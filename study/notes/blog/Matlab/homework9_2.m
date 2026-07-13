% 20241012120-张艺严
syms x t a real
%% (1) 求极限
L1 = limit(log(sin(x))/(pi - 2*x)^2, x, pi/2);
L2 = limit(5*x^2/(1 - x^2) + 2^(1/x), x, inf);

disp('(1) 极限：');
disp(L1);
disp(L2);
%% (2) 求导数
f1 = (1 - sqrt(t))/(1 + sqrt(t));
df1 = diff(f1, t);
df1_at_4 = subs(df1, t, 4);

y = exp(x)*cos(x);
d4y = diff(y, x, 4);

F = [a,x^2,1/x;
     exp(a*x), log(x), sin(x)];
dFdx = diff(F, x);

disp('(2) 导数：');
disp(df1_at_4);
disp(d4y);
disp('df/dx =');
disp(dFdx);
%% (3) 求不定积分
I1 = int(sin(2*x)/sqrt(1 + sin(x)^2), x);
I2 = int(1/sqrt(x^2 + 5), x);
disp('(3) 不定积分：');
disp(I1);
disp(I2);

%% (4) 求定积分。
I3 = 2*int(sqrt(sin(x)^3-sin(x)^5), x, 0, pi/2);
I4 = int(exp(x^2/2), x, 0, 1);

disp('(4) 定积分：');
disp(I3);
disp(I4);
