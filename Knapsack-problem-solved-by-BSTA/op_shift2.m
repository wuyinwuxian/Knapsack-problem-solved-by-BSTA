function State = op_shift2(Best,SE,n)
State0 = op_shift(Best,SE,n);
State1 = zeros(SE^2,n);
for i = 1:SE
    State1(SE*(i-1)+1:SE*i,:)= op_shift(State0(i,:),SE,n);
end
R = randperm(SE^2+SE);   %随机打乱[1:SE^2+SE], randperm(n,m)随机打乱[1:n],并选择前面的m个，所以n>=m
index = R(1:SE);   %选其中的SE个
State2 = [State1;State0];
State = State2(index,:);

%总结：利用左移算子基于当前Best产生SE个解，再基于这SE个解通过左移算子产生SE^2个解，最后在这所有的
%SE+SE^2个解中随机选SE个返回，  R = randperm(SE^2+SE);   index = R(1:SE);这两句就是在随机选SE个，其他算子同理
