clear;
clc
disp('Entre com o vetor A');
A=input('');
tamanho=size(A);
n=tamanho(1);
sum=0;
x=zeros(n);
for j=1:n
    for i=1:n
        l=abs(A(i,j));
        sum=sum+l;
    end;
    
    x(j,1)=sum;
    sum=0;
end;
y=x(:,1);
maximo=max(y);
disp('Norma natural');
disp(maximo);