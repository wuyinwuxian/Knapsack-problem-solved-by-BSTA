function [f,g] = myfun(x,p,c,w)
f = sum(x.*p);   %���ֵ�ܺ�
g = sum(x.*w) -c;  %��Լ��Υ���ȣ�Լ��Υ����Ϊ������Υ��






