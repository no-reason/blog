% 20241012120-张艺严
%% (1) 三种表示方法的区别
disp('(1) 三种表示方法：');
disp('数值表达式：x 必须预先赋值，计算结果为数值。');
disp('字符串表达式：仅保存文本，不能直接参与代数运算。');
disp('符号表达式：x 为符号变量，可进行符号运算。');
syms x y
f_sym = 3*x^2 + 5*x + 2;
disp('f 的符号表达式为：');
disp(f_sym);
%% (2) 求矩阵 A 的行列式、逆和特征值
syms a11 a12 a13 a21 a22 a23 a31 a32 a33
A = [a11, a12, a13;
     a21, a22, a23;
     a31, a32, a33];
det_A = det(A);
inv_A = inv(A);            
eig_A = eig(A);
disp('(2) det(A) =');
disp(det_A);
disp('A 的逆矩阵 =');
disp(inv_A);
disp('A 的特征值为：');
disp(eig_A);
%% (3) 因式分解
p3 = x^4 - 5*x^3 + 5*x^2 + 5*x - 6;
disp('(3) 因式分解结果：');
disp(factor(p3));
%% (4) 合并同类项
p4 = (x + 1)^3 + (x - 1)^2 + 5*x - 6;
disp('(4) 合并同类项结果：');
disp(expand(p4));
%% (5) 求 (x+1)^6 的展开式
disp('(5) (x+1)^6 的展开式：');
disp(expand((x + 1)^6));
%% (6) 求有理式的分子和分母
f6 = 1/(x^3 - 1) + 1/(x^2 + y + 1) + 1/(x + y + 1) + 8;
[numerator, denominator] = numden(combine(f6));

disp('(6) 通分后的分子为：');
disp(numerator);
disp('通分后的分母为：');
disp(denominator);
