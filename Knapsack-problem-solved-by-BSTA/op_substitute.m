function State = op_substitute(Best,SE,n)
State = zeros(SE,n);
for i = 1:SE
    temp = Best;
    R = ceil(n*rand);       %ceil�������������������룬����ȡ��������R=[1:n]֮���һ�������������Ϊ����Ҫ�滻���±�
    temp(R) = 1 - temp(R);  %0��1,1��0�Ĺ��̣�Ҳ������ȡ��
    State(i,:) = temp;
end