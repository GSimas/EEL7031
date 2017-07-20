clc;
clear;
disp('Insira a matriz A');
A=input('');
[m,n]=size(A);
fatores=zeros(n);
identidade=eye(n);
matriz_y=zeros(n,1);
matriz_resposta=zeros(n,1);
A1=A;
if m~=n
    disp('Erro: a matriz deve ser quadrada');                 
    disp('Aperte Crtl+C');
    system('pause');
end;
for k = 1:n-1
    for i = k+1:n
        multiplicador=A(i,k)/A(k,k);
        fatores(i,k)=multiplicador;                                       
        A(i,k:n)=A(i,k:n)-multiplicador*A(k,k:n);        
    end
end

matriz_L=fatores+identidade;
matriz_U=A(1:n,1:n);
Z=matriz_L*matriz_U;
disp('Matriz L');
disp(matriz_L);
disp('Matriz U');
disp(matriz_U);
A2=matriz_L*matriz_U;
disp(A2);