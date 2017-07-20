format long e
disp('Insira a matriz A');
A=input('');
A0=A;
disp('Insira a matriz B');
B=input('');
B0=B;
[m,n]=size(A);
if m~=n
    disp('Erro: a matriz deve ser quadrada');                              
    disp('Aperte Crtl+C');
    system('pause');
end;
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
disp('Solução MatLab');
linsolve(A0,B0)
