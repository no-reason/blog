%20241012120-张艺严

%(1)

z1 = 2*sin(85*pi/180)/(1+exp(2));
disp(z1);

%(2)

a = -3.0:0.1:3.0;
z2 = (exp(0.3*a)-exp(0.2*a))/2 .* sin(a+0.3);
disp(z2);

%(3)

A = [1 2 3; 2 1 2; 3 3 1];
[V, D] = eig(A);  % V是特征向量矩阵，D是特征值对角矩阵

result1 = A^1.5;

% 用特征分解计算 A^1.5
result2 = V * (D^1.5) * inv(V);

disp(result1);
disp(result2);
disp('验证相等性：');
disp(isequal(round(result1,10), round(result2,10)));

%(4)

A_f=[2 1 -5 1; 1 -3 0 -6; 2 0 -1 2; 1 4 -7 6];
b = [8; 9; -5; 0];
det_A=det(A_f);
for i =1 :4
    A_i=A_f;
    A_i(:,i)=b;
    x(i)=det(A_i)/det_A;
end
disp(x');