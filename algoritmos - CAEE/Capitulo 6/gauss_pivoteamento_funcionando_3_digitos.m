clear;
clc;
digits 3;
disp('Entre com a matriz A');
A=input('');
A1=A;
[m,n]=size(A);
nb=n+1;
disp('Entre com a matriz B');
B=input('');
B1=B;
A_exp=[A B];
for k = 1:n-1
    [big,i]=max(abs(A_exp(k:n,k)));
    aux=i+k-1;
    if aux~=k
        A_exp([k,aux],:)=A_exp([aux,k],:);
    end
    for i = k+1:n
        multiplicador=A_exp(i,k)/A_exp(k,k);
        multiplicador=vpa(multiplicador);
        A_exp(i,k:nb)=A_exp(i,k:nb)-multiplicador*A_exp(k,k:nb);
        A_exp(1,k:nb)=vpa(A_exp(1,k:nb));
    end
end
A_exp=vpa(A_exp);
matriz_final=zeros(n,1);
matriz_final(n)=A_exp(n,nb)/A_exp(n,n);
for i = n-1:-1:1
    matriz_final(i)=(A_exp(i,nb)-A_exp(i,i+1:n)*matriz_final(i+1:n))/A_exp(i,i);
    matriz_final(i)=vpa(matriz_final(i));
end
matriz_final=vpa(matriz_final);
disp('Com pivoteamento');
disp('Matriz escalonada');
disp(A_exp);
disp('Solu��o');
disp(matriz_final);
disp('Solu��o MatLab');
linsolve(A1,B1)

