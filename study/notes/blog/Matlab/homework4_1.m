%20241012120-张艺严

%(1)

a = [5, 0.2, 0, -8, -0.7];
disp(logical (a));%将a进行逻辑运算时,非0元素为1,0元素为0

%(2)

a = [-1, 0.5, 0];
b = [-3.4, 3, -6];

disp('a < b:'); disp(a < b);
disp('a >= b:'); disp(a >= b);
disp('a == b:'); disp(a == b);
disp('a <= b:'); disp(a <= b);
disp('a <= 0:'); disp(a <= 0);

%(3)

A = [-5, 0, 1; 2.6, 1, 2; 0, 8, 1];
B = [4, 2.5, 0; 0, 6, 0; -1.2, 0, 1];
disp('A & B:'); disp(A & B);
disp('A | B:'); disp(A | B);
disp('~A:'); disp(~A);

%(4)本题实际上只需求A的特征值和特征向量

A = [1, 2, 3; 2, 1, 3; 3, 3, 6];
[P, D] = eig(A);
disp('特征向量矩阵 P ='); disp(P);
disp('特征值对角矩阵 D ='); disp(D);
disp('验证 P^-1*A*P ='); disp(inv(P)*A*P);

%(5)只需判断特两向量矩阵的秩

A = [1, 0; 2, 1];
[V, D] = eig(A);
disp('特征值:'); disp(diag(D));
disp('特征向量矩阵的秩:'); disp(rank(V));
if rank(V) == size(A, 1)
    disp('与对角矩阵相似');
else
    disp('与对角矩阵不相似');
end

%(6) 
%Matlab中如果矩阵是对称阵那么eig函数就可以保障一定返回正交阵
A = [1, 2, 4; 2, -2, 2; 4, 2, 1];
disp('A ='); disp(A);
[Q, Lambda] = eig(A);
disp('正交矩阵 Q ='); disp(Q);
disp('对角化结果 Q^T*A*Q ='); disp(Q'*A*Q);

%(7)
 
a1 = [1; 1; 2; 3];
a2 = [1; -1; 1; 1];
a3 = [1; 3; 4; 5];
a4 = [3; 1; 5; 7];
A = [a1, a2, a3, a4];
disp('向量组秩:'); disp(rank(A));
disp('向量个数:'); disp(size(A, 2));
if rank(A) < size(A, 2)
    disp('向量组线性相关');
else
    disp('向量组线性无关');
end