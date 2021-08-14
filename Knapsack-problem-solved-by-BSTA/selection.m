function  [Best,fBest] = selection(funfcn,State,w1)
fit = fitness(funfcn,State,w1);
[fGBest,index] = max(fit);
fBest = fGBest;
Best = State(index,:);

