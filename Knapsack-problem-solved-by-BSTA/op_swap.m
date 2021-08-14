function State = op_swap(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    oldBest = Best;
    R = randperm(n);  %�������[1:n], randperm(n,m)�������[1:n],��ѡ��ǰ���m��������n>=m
    T  = R(1:2);      %ȡǰ�����������Ϊ���������������±�λ��
    S = fliplr(T);    %������������ҷ�ת
    oldBest(T) = oldBest(S);   %�ȼ��� oldBest([m n]) = oldBest([n m]),���ֽ�������matlab�������
    State(i,:) = oldBest;
end
