clear;
clc;
disp('Entre com a matriz A');
A=input('')
tamanho=size(A);
n=tamanho(1);
disp('Entre com a matriz B');
B=input('');
disp('Entre com a aproximação inicial');
aprox=input('');
x=aprox;
disp('Entre com o numero maximo de iterações');
iter=input('');
disp('Entre com um w');
w=input('');
num=0;

while num<iter
    
    for i=1:n    
        
        sum_0=0;    
        sum_1=0;
   
        for j=1:i-1
            
            sum_0=sum_0+A(i,j)*x(j);
         
        end;
    
        for j=i+1:n
            
            sum_1=sum_1+A(i,j)*aprox(j);
        
        end;
    
         x(i)=-sum_0-sum_1+B(i);
         x(i)=(w.*x(i))/A(i,i);
         x(i)=(1-w)*aprox(i)+x(i);
         aprox(i)=x(i);
         
         
    end;
    
    disp('Aproximação');
    disp(x);
    num=num+1;
    
end;

disp(x)