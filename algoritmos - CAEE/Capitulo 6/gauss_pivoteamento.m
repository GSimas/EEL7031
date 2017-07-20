format long e
disp('Insira a matriz A');
A=input('');
disp('Insira a matriz B');
B=input('');
[m,n]=size(A);
fatores=zeros(n);
n_e=n+1;                                                                   
A_exp=[A B];                                                               
a1=A;
b1=B;
for k = 1:n-1
    coluna=A_exp(1:n,k);
    [valor_maximo,linha_maxima]=max(coluna);
    temp=A_exp(1,1:n_e);
    A_exp(1,1:n_e)=A_exp(linha_maxima,1:n_e);
    A_exp(linha_maxima,1:n_e)=temp;
    for i = k+1:n
        multiplicador=A_exp(i,k)/A_exp(k,k);
        fatores(i,k)=multiplicador;                                        
        A_exp(i,k:n_e)=A_exp(i,k:n_e)-multiplicador*A_exp(k,k:n_e);        
    end
end
matriz_final=zeros(n,1);
matriz_final(n)=A_exp(n,n_e)/A_exp(n,n);
for i = n-1:-1:1
    matriz_final(i)=(A_exp(i,n_e)-A_exp(i,i+1:n)*matriz_final(i+1:n))/A_exp(i,i);    
end
disp(A_exp);
disp('Solução encontrada');
disp(matriz_final)
disp('Solução MatLab');
linsolve(a1,b1)