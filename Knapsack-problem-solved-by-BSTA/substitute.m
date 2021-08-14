function [Best,fBest] = substitute(funfcn,Best,fBest,SE,n,w1)
State = op_substitute2(Best,SE,n);
[newBest,fGBest] = selection(funfcn,State,w1);
if fGBest > fBest
    Best = newBest;
    fBest = fGBest;
end