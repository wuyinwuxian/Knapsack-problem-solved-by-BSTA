function fit = fitness(funfcn,State,w1)
m = size(State,1);
fit = zeros(m,1);
for i = 1:m
     [f,g] = feval(funfcn,State(i,:));  % State(i,:)����myfun����Ĳ���x��ʣ�µ�3������ȱʡ
%      fit(i,1) = f - w1*sum(max(0,g).^2,2);   %Լ��Υ����С��0ȡ0������0ȡԼ��Υ���ȱ���  sum����2����ɶ��˼��
% �Ҿ���ֱ����max(0,g)^2���� ��g��Լ��Υ���ȣ���һ����������һ����������ָ��
     fit(i,1) = f - w1*(max(0,g)^2);
end
