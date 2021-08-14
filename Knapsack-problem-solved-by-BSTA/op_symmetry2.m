function State = op_symmetry2(Best,SE,n)
State0 = op_symmetry(Best,SE,n);
State1 = zeros(SE^2,n);
for i = 1:SE
    State1(SE*(i-1)+1:SE*i,:)= op_symmetry(State0(i,:),SE,n);
end
R = randperm(SE^2+SE);
index = R(1:SE);
State2 = [State1;State0];
State = State2(index,:);