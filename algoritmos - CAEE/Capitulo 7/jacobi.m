clear;
clc;

disp('Entre com a matriz A');
A=input('');
El=A;

disp('Entre com a matriz B');
B=input('')

disp('Entre com a tolerância');
TOL=input('');

disp('Entre com a aproximação inicial');
aprox=input('')

n_aprox=size(aprox);
tam=size(A);
n=tam(1,1);

disp('Numero de iterações');
inter=input('');

if n~=n_aprox
    
    disp('Erro');
    disp('CTRL+C');
    system('pause');
    
end

tol_calc=100;
T=zeros(n);
C=B;
aprox_1=aprox;

for i=1:n
   
    for j=1:n
        
        T(i,j)=A(i,j)/A(i,i);
        
        if i==j
            
            T(i,j)=0;
        
        end
        
    end
    
    C(i)=B(i)/A(i,i);
end

T=-T;
disp('Matriz T')
disp(T);
disp('Matriz C');
disp(C);
num=0;

while num<inter
    
    aprox_1=T*aprox+C;
    norma_aprox_1=norm(aprox_1,2);
    norma_aprox=norm(aprox,2);
    tol_calc=norma_aprox_1-norma_aprox;
    aprox=aprox_1;;
    disp('Interação');
    disp(num)
    disp(aprox);
    num=num+1;
end;
disp(aprox);
x=linsolve(A,B);
disp(x);

