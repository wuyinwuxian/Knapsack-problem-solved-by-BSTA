function State = op_symmetry(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = randperm(n);  %�������[1:n], randperm(n,m)�������[1:n],��ѡ��ǰ���m��������n>=m
    a = R(1);
    b = R(2);          %ȡǰ�����������Ϊ�ԳƱ任��������ʼλ�ú���ֹλ��
    if a < b
        temp(a:b) = Best(b:-1:a);
    else
        temp(b:a) = Best(a:-1:b);
    end
    State(i,:) = temp;
end
