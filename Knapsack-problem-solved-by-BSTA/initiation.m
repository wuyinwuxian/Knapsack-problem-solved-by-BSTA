function State = initiation(SE,n)
%initiation
State = zeros(SE,n);
for i=1:SE
    State(i,:) = randint(1,n,[0,1]); %��������һ��1 * nά�ľ��󣬾����Ԫ�ػ�����0����1
end

