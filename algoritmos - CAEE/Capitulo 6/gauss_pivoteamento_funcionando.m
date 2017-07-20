clear;
clc;
format short
disp('Entre com a matriz A');
A=input('');
A1=A;
[m,n]=size(A);
if m~=n
    disp('Matriz deve ser quadrada'); 
end
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
        A_exp(i,k:nb)=A_exp(i,k:nb)-multiplicador*A_exp(k,k:nb);
    end
end
matriz_final=zeros(n,1);
matriz_final(n)=A_exp(n,nb)/A_exp(n,n);
for i = n-1:-1:1
    matriz_final(i)=(A_exp(i,nb)-A_exp(i,i+1:n)*matriz_final(i+1:n))/A_exp(i,i);
end
disp('Com pivoteamento');
disp('Matriz escalonada');
disp(A_exp);
disp('Solução');
disp(matriz_final);
disp('Solução MatLab');
linsolve(A1,B1)
A=A1;
B=B1;
disp('Resultados SEM pivoteamento');
n_e=n+1;                                                                   
A_exp=[A B];                                                               
for k = 1:n-1
    for i = k+1:n
        multiplicador=A_exp(i,k)/A_exp(k,k);
        fatores(i,k)=multiplicador;                                        
        A_exp(i,k:n_e)=A_exp(i,k:n_e)-multiplicador*A_exp(k,k:n_e);        
    end
end
A=A_exp(1:n,1:n);
matriz_final=zeros(n,1);
matriz_final(n)=A_exp(n,n_e)/A_exp(n,n);
for i = n-1:-1:1
    matriz_final(i)=(A_exp(i,n_e)-A_exp(i,i+1:n)*matriz_final(i+1:n))/A_exp(i,i);     
    end
disp(A_exp);
disp('Solução encontrada');
disp(matriz_final)
