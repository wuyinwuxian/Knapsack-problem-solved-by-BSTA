function State = op_substitute(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = ceil(n*rand);       %ceil的作用是向正方向舍入，向上取整，所以R=[1:n]之间的一个随机整数，作为我们要替换的下标
    temp(R) = 1 - temp(R);  %0变1,1变0的过程，也可以用取反
    State(i,:) = temp;
end