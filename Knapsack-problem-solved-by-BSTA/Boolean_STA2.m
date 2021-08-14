function [Best,fBest,history] = Boolean_STA2(funfcn,SE,n,Interations,w1)
%������ʼ��
% Best = randint(1,n,[0,1]);  % matlab���ڰ汾�����
Best = randi([0,1],1,n);      % ��������һ��1*nά�ľ��󣬾����Ԫ�ػ�����0������1��������ġ�
fBest = fitness(funfcn,Best,w1);

history = zeros(Interations,1);
% iterations
for i = 1:Interations
    [Best,fBest] = shift(funfcn,Best,fBest,SE,n,w1);%����shift���Ӳ����½⣬���������Ž⣬����ͬ��ֻ�����Ӳ�ͬ
    [Best,fBest] = swap(funfcn,Best,fBest,SE,n,w1);
    [Best,fBest] = symmetry(funfcn,Best,fBest,SE,n,w1);
    [Best,fBest] = substitute(funfcn,Best,fBest,SE,n,w1);
    history(i) = fBest;
end
