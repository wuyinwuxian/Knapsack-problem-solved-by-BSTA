clear all
clc
warning  off

load mydata_23
global w c p n;     %w（重量向量），c（背包容量），p（价值向量），n（物品个数）都是来自于加载的数据
%-------参数和初始化--------
SE = 20;
Interations = 2e3;
w1 = realmax; %罚系数
%-------------------------
tic
[Best,fBest,history] = Boolean_STA2(@(x) myfun(x,p,c,w),SE,n,Interations,w1);
toc
Best          % 最佳解
fBest         % 最佳解对应的总的价值
[~,g] = myfun(Best,p,c,w);  %计算Best的约束违反度     
g              %约束违反度
cg = c + g     %总的重量
plot(history)  %价值变化曲线
