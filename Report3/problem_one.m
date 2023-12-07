clear
close all
clc

m=input('Enter no of rows: ');
n=input('Enter no of columns: ');
A = ones(m,n);
for i = 1:m
    for j = 1:n
        A(i,j) = input(sprintf('Enter position %d , %d: ',i,j));
    end
end
disp(A)

B=A.*A

odd=0;
even=0;

for i=1:m
    for j=1:n
        if mod(B(i,j),2) == 0
           
            even = even + 1;
        else
            odd = odd + 1;
           
        end
    end
end

C = B(mod(B,2)==0);
D = B(mod(B,2)==1);

disp('Even numbers Matrix C= ');
disp(C.');
disp('Odd numbers Matrix D=: ');
disp(D.');

disp('Total odd number')
disp(odd);
disp('Total even number')
disp(even);
