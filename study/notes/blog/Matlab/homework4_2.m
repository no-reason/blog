%20241012120-张艺严

A = [1, 2, 3, 4; 3, 4, 5, 6; 5, 6, 7, 8; 7, 8, 9, 0];

%(1)

disp(A(1, 2));

disp(A(:, 3));

disp(A(1:3, [2, end]));

disp(A');

disp(fliplr(A));
disp(flipud(A));

disp(rot90(A, -1));

disp(reshape(A, 2, 4, 2));

disp(triu(A, -1));

disp(diag(diag(A, 2), 2));

disp(zeros(size(A)));
disp(ones(size(A)));

I2 = eye(2);
disp([A, [zeros(1, 2); I2; zeros(1, 2)]]);

%将小于等于3的元素换成0.5，大于3小于等于6的元素换成1，大于6的元素换成8.5
A_modified = A;
A_modified(A_modified <= 3) = 0.5;
A_modified((A_modified > 3) & (A_modified <= 6)) = 1;
A_modified(A_modified > 6) = 8.5;
disp(A_modified);

disp(A(:, [2, 4]));

%(2)

n = 1000;
random_nums = rand(1, n);
coins = round(random_nums);
heads = sum(coins);
prob = heads / n;
fprintf('投%d次，正面%d次，概率 = %.4f\n', n, heads, prob);

%(3)

disp(eye(3));
disp(diag([1, 2, 3]));