clear;
clc;

disp('Entre com a matriz A');
A=input('');

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

D=zeros(n);
L=zeros(n);
U=zeros(n);

for i=1:n
    
    for j=1:n
        
        if i==j
            D(i,i)=A(i,i)
        end
        
        if i>j
            L(i,j)=-A(i,j)
        end
        
        if j>i
            U(i,j)=-A(i,j)
        end;
        
    end;
    
end;

inv_d=inv(D);
sum=L+U;
T=inv_d*sum
C=inv_d*B;
num=0;

while num<inter
    
    aprox_1=T*aprox+C;
    norma_aprox_1=norm(aprox_1,2);
    norma_aprox=norm(aprox,2);
    tol_calc=norma_aprox_1-norma_aprox;
    aprox=aprox_1;;
    
    if tol_calc<TOL
        break;
    
    end;
    num=num+1;
end;

disp('Aproximação')
disp(aprox)