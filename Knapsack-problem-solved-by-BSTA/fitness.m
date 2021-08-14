function fit = fitness(funfcn,State,w1)
m = size(State,1);
fit = zeros(m,1);
for i = 1:m
     [f,g] = feval(funfcn,State(i,:));  % State(i,:)算是myfun里面的参数x，剩下的3个参数缺省
%      fit(i,1) = f - w1*sum(max(0,g).^2,2);   %约束违反度小于0取0，大于0取约束违反度本身  sum（，2）是啥意思，
% 我觉得直接用max(0,g)^2即可 ，g（约束违反度）是一个标量，是一个可量化的指标
     fit(i,1) = f - w1*(max(0,g)^2);
end
