function [Best,fBest,temp2] = findmax(Best,fBest,flag2,temp1,n)
if(flag2 == 1)
    [index,y] = find(temp1==max(temp1(:,n+1)));
    if( fBest < temp1(index(1,1),n+1))
        temp2 = temp1;
    else
        temp2 = [Best,fBest];
    end
else
    temp2 = [Best,fBest];
end
