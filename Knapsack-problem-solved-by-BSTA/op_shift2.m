function State = op_shift2(Best,SE,n)
State0 = op_shift(Best,SE,n);
State1 = zeros(SE^2,n);
for i = 1:SE
    State1(SE*(i-1)+1:SE*i,:)= op_shift(State0(i,:),SE,n);
end
R = randperm(SE^2+SE);   %�������[1:SE^2+SE], randperm(n,m)�������[1:n],��ѡ��ǰ���m��������n>=m
index = R(1:SE);   %ѡ���е�SE��
State2 = [State1;State0];
State = State2(index,:);

%�ܽ᣺�����������ӻ��ڵ�ǰBest����SE���⣬�ٻ�����SE����ͨ���������Ӳ���SE^2���⣬����������е�
%SE+SE^2���������ѡSE�����أ�  R = randperm(SE^2+SE);   index = R(1:SE);��������������ѡSE������������ͬ��
