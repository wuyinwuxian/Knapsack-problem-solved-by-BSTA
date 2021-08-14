function [Best,fBest] = shift(funfcn,Best,fBest,SE,n,w1)
State = op_shift2(Best,SE,n);  %利用op_shift2产生SE个解
[newBest,fGBest] = selection(funfcn,State,w1);  %找这次op_shift2算子产生的SE个中最好的一个解，其他算子同理
if fGBest > fBest   %解的更新策略，只接受更好的
    Best = newBest;
    fBest = fGBest;
end