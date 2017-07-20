clc;
clear;
disp('Insira a matriz A');
A=input('');
disp('Insira a matriz B');
B=input('');
[m,n]=size(A);
fatores=zeros(n);

if m~=n
    disp('Erro: a matriz deve ser quadrada');                              %Informa erro
    disp('Aperte Crtl+C');
    system('pause');
end;

n_e=n+1;                                                                   %Cria ordem da matriz expandida
A_exp=[A B];                                                               %Matriz expandida

for k = 1:n-1
    
    for i = k+1:n
        disp('---------------');
        disp(A_exp(k,k));
        if A_exp(k,k)== 0
            coluna=A_exp(k:n,k);
            [valor_maximo,linha_maxima]=max(coluna);
            temp=A_exp(k,:);
            A_exp(k,:)=A_exp(linha_maxima,:);
            A_exp(linha_maxima,:)=temp;
        end;
        disp(A_exp(k,k));
        disp(A_exp);
        multiplicador=A_exp(i,k)/A_exp(k,k);
        disp(multiplicador);
        fatores(i,k)=multiplicador;                                        %Guarda os multiplicadores para serem futuramente usados em fatoração LU
        A_exp(i,k:n_e)=A_exp(i,k:n_e)-multiplicador*A_exp(k,k:n_e);
        disp('---------------');
    end
    
end

A=A_exp(1:3,1:3);
matriz_final=zeros(n,1);
matriz_final(n)=A_exp(n,n_e)/A_exp(n,n);

for i = n-1:-1:1
    
    matriz_final(i)=(A_exp(i,n_e)-A_exp(i,i+1:n)*matriz_final(i+1:n))/A_exp(i,i);     %Atualiza as respostas
    
end

disp(matriz_final)
