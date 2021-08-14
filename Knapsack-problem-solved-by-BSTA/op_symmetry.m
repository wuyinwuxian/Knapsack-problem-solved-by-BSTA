function State = op_symmetry(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = randperm(n);  %随机打乱[1:n], randperm(n,m)随机打乱[1:n],并选择前面的m个，所以n>=m
    a = R(1);
    b = R(2);          %取前面的两个数作为对称变换操作的起始位置和终止位置
    if a < b
        temp(a:b) = Best(b:-1:a);
    else
        temp(b:a) = Best(a:-1:b);
    end
    State(i,:) = temp;
end
