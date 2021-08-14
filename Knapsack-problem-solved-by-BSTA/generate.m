function [w,p,c] = generate(n)
c = 0;
w = zeros(1,n);
p = zeros(1,n);
for i = 1:n
    w(1,i) = randint(1,1,[5,20]);
    p(1,i) = randint(1,1,[50,100]);
    c = c + w(1,i);
end
c = c/2;