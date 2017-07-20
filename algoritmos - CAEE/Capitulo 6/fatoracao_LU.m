clc;
clear;
disp('Insira a matriz A');
A=input('');
disp('Insira a matriz B');
B=input('');
[m,n]=size(A);
fatores=zeros(n);
identidade=eye(n);
matriz_y=zeros(n,1);
matriz_resposta=zeros(n,1);
n_e=n+1;                                                                   
A_exp=[A B];    
if m~=n
    disp('Erro: a matriz deve ser quadrada');                 
    disp('Aperte Crtl+C');
    system('pause');
end;
for k = 1:n-1
    for i = k+1:n
        multiplicador=A_exp(i,k)/A_exp(k,k);
        fatores(i,k)=multiplicador;                                       
        A_exp(i,k:n_e)=A_exp(i,k:n_e)-multiplicador*A_exp(k,k:n_e);        
    end
end

matriz_L=fatores+identidade;
matriz_U=A_exp(1:n,1:n);
Z=matriz_L*matriz_U;
matriz_y(n)=A_exp(n,n_e)/matriz_L(n,n);
disp(matriz_L);
disp(matriz_U);