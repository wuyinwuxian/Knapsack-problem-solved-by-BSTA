function State = op_swap(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    oldBest = Best;
    R = randperm(n);  %随机打乱[1:n], randperm(n,m)随机打乱[1:n],并选择前面的m个，所以n>=m
    T  = R(1:2);      %取前面的两个数作为交换操作的两个下标位置
    S = fliplr(T);    %将数组从左向右翻转
    oldBest(T) = oldBest(S);   %等价于 oldBest([m n]) = oldBest([n m]),这种交换方法matlab是允许的
    State(i,:) = oldBest;
end
