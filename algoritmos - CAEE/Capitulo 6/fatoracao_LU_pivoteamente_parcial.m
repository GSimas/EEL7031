%Este � o algorito da fatora��o LU. Esta fatora��o � bem simples, sendo que
%a base dela � o algoritmo da elimina��o Gaussina (escalonamento). Por�m,
%uma diferen�a importante � que a fatora��o LU armazena os multiplos
%valores dos multiplicadores numa matriz, aqui denominada fatores e depois
%realiza a soma da matriz fatores com a matriz identidade, obtendo assim, a
%matriz L (triangular inferior), sendo que a matriz U representa a matriz A
%escladona.
%Este script, por ser baseado em gauss com pivoteamento, j� possui uma
%estrat�gia de pivoteamento.
%LUx=B, por�m faremos y=UX, e resolveremos Ly=B, e ent�o resolveremos Ux=y


%Parte A=parte em que as matrizes  A e B ser�o inicializadas, al�m de as
%matrizes "fatores", que guardar� os multiplicadores , "identidade", 
%"matriz_y" e "matriz_resposta" tamb�m ser� inicializada
%Al�m disso, tamb�m haver� a informa��o do erro
%(
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
n_e=n+1;                                                                   %Cria ordem da matriz expandida
A_exp=[A B];    

if m~=n
    disp('Erro: a matriz deve ser quadrada');                 
    disp('Aperte Crtl+C');
    system('pause');
end;
%)

%Parte B=triangulariza��o da Matriz A em matriz U e cria��o da matriz L a
%partir dos multiplicadores
%(
for k = 1:n-1
    
    %Parte B.1
    %Escolha do pivo adequado, realizada de maneira bem b�sica, apenas
    %checando o valor m�ximo da coluna em que o pivo ser� escolhiodo e
    %realizando a permuta.
    %(
    coluna=A_exp(1:n,k);
    [valor_maximo,linha_maxima]=max(coluna)
    temp=A_exp(1,1:n_e);
    A_exp(1,1:n_e)=A_exp(linha_maxima,1:n_e);
    A_exp(linha_maxima,1:n_e)=temp;
    %)
    
    %Parte B.2
    %Triangulariza��o da matriz e cria��o das matrizes L e U
    %(
    for i = k+1:n
        multiplicador=A_exp(i,k)/A_exp(k,k);
        fatores(i,k)=multiplicador;                                        %Guarda os multiplicadores para serem futuramente usados em fatora��o LU
        A_exp(i,k:n_e)=A_exp(i,k:n_e)-multiplicador*A_exp(k,k:n_e);        %Atualiza as linhas
    end
    %)
end
%)

%Parte C=cria��o da matriz U, alem de ser feito a solu��o dos sistemas
%Ly=B e Ux=y
%(
matriz_L=fatores+identidade;
matriz_U=A_exp(1:n,1:n);
Z=matriz_L*matriz_U;
matriz_y(n)=A_exp(n,n_e)/matriz_L(n,n);

for i = n-1:-1:1
    
    matriz_y(i)=(A_exp(i,n_e)-matriz_L(i,i+1:n)*matriz_y(i+1:n))/matriz_L(i,i);     %Atualiza as respostas
    
end

matrz_resposta(n)=matriz_y(n)/matriz_U(n,n);

for i = n-1:-1:1
    
    matriz_resposta(i)=( matriz_y(i)-matriz_U(i,i+1:n)*matriz_resposta(i+1:n))/matriz_U(i,i);     %Atualiza as respostas
    
end

disp(matriz_resposta);