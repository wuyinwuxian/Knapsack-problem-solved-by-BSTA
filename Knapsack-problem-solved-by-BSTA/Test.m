clear all
clc
warning  off

load mydata_23
global w c p n;     %w��������������c��������������p����ֵ��������n����Ʒ���������������ڼ��ص�����
%-------�����ͳ�ʼ��--------
SE = 20;
Interations = 2e3;
w1 = realmax; %��ϵ��
%-------------------------
tic
[Best,fBest,history] = Boolean_STA2(@(x) myfun(x,p,c,w),SE,n,Interations,w1);
toc
Best          % ��ѽ�
fBest         % ��ѽ��Ӧ���ܵļ�ֵ
[~,g] = myfun(Best,p,c,w);  %����Best��Լ��Υ����     
g              %Լ��Υ����
cg = c + g     %�ܵ�����
plot(history)  %��ֵ�仯����
