function [Stagnation,row1,flag2,temp1,Best,fBest] = storage(Best,fBest,n,ma,flag1,flag2,temp1,row1,Stagnation)
%存储满足条件的停滞解
if norm(Stagnation(size(Stagnation,1),1:n)-Best) == 0
    flag1 = flag1+1;
else 
    flag1 = 1;
    Stagnation(size(Stagnation,1)+1,:) = [Best,fBest,flag1];
end
if(Stagnation(:,n+2) > ma)
    temp1(row1,1:n) = Best;
    temp1(row1,n+1) = fBest;
    row1 = row1+1;
    flag2 = 1;
    l = length(Stagnation(:,n+1));
    stochastic = randperm(l);
    Best = Stagnation(stochastic(1,1),1:n);
    fBest = Stagnation(stochastic(1,1),n+1);
end