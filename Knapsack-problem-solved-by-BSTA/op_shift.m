function State = op_shift(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = randperm(n);  %�������[1:n], randperm(n,m)�������[1:n],��ѡ��ǰ���m��������n>=m
    a = R(1);
    b = R(2);    %ȡǰ�����������Ϊ���Ʋ�������ʼλ�ú���ֹλ��
    if a < b
        temp(a:b) = temp([a+1:b,a]);
    else
        temp(b:a) = temp([b+1:a,b]);
    end
    State(i,:) = temp;
end
