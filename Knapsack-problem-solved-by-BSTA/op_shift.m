function State = op_shift(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = randperm(n);  %随机打乱[1:n], randperm(n,m)随机打乱[1:n],并选择前面的m个，所以n>=m
    a = R(1);
    b = R(2);    %取前面的两个数作为左移操作的起始位置和终止位置
    if a < b
        temp(a:b) = temp([a+1:b,a]);
    else
        temp(b:a) = temp([b+1:a,b]);
    end
    State(i,:) = temp;
end
