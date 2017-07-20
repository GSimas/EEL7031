clc;
clear;
disp('Digite a matriz A, definida positiva');
A=input('');
n=size(A);
n=n(1);
L(1,1)=sqrt(A(1,1));
for j=2:n
    L(j,1)=A(j,1)/L(1,1);
end;
for i=2:n-1
    temp1=0;
    for k=1:i-1
        temp1=temp1+((L(i,k)).^2);
    end;
    temp1=A(i,i)-temp1;
    L(i,i)=sqrt(temp1);
    for j=i+1:n
        temp1=0;
        for k=1:i-1
            temp1=temp1+L(j,k)*L(i,k);
        end;
        temp1=A(j,i)-temp1;
        temp1=temp1/L(i,i);
        L(j,i)=temp1;
    end;
end;
temp=zeros(1);
for k=1:n-1;
    temp=temp+(L(n,k)*L(n,k));
end;
k=A(n,n)- temp;
temp=sqrt(k);
L(n,n)=temp;
disp('Matriz L')
disp(L);
Lt=transpose(L);
disp('Matriz L');
disp(Lt);

        