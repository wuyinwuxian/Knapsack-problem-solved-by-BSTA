function [Best,fBest] = shift(funfcn,Best,fBest,SE,n,w1)
State = op_shift2(Best,SE,n);  %����op_shift2����SE����
[newBest,fGBest] = selection(funfcn,State,w1);  %�����op_shift2���Ӳ�����SE������õ�һ���⣬��������ͬ��
if fGBest > fBest   %��ĸ��²��ԣ�ֻ���ܸ��õ�
    Best = newBest;
    fBest = fGBest;
end