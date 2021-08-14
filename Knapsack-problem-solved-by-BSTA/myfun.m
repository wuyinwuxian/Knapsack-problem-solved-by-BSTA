function [f,g] = myfun(x,p,c,w)
f = sum(x.*p);   %求价值总和
g = sum(x.*w) -c;  %求约束违反度，约束违反度为负代表不违反






