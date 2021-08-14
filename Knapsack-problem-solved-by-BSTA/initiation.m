function State = initiation(SE,n)
%initiation
State = zeros(SE,n);
for i=1:SE
    State(i,:) = randint(1,n,[0,1]); %产生的是一个1 * n维的矩阵，矩阵的元素或者是0或是1
end

