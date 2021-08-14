function [Best,fBest,history] = Boolean_STA2(funfcn,SE,n,Interations,w1)
%产生初始解
% Best = randint(1,n,[0,1]);  % matlab早期版本用这个
Best = randi([0,1],1,n);      % 产生的是一个1*n维的矩阵，矩阵的元素或者是0或者是1，是随机的。
fBest = fitness(funfcn,Best,w1);

history = zeros(Interations,1);
% iterations
for i = 1:Interations
    [Best,fBest] = shift(funfcn,Best,fBest,SE,n,w1);%利用shift算子产生新解，并更新最优解，下面同理，只是算子不同
    [Best,fBest] = swap(funfcn,Best,fBest,SE,n,w1);
    [Best,fBest] = symmetry(funfcn,Best,fBest,SE,n,w1);
    [Best,fBest] = substitute(funfcn,Best,fBest,SE,n,w1);
    history(i) = fBest;
end
