clear;
clc;

disp('Entre com os valores de x');
x=input('');
var=size(x);
tam_x=var(2);
disp('Entre com os valores de y');
y=input('');
var=size(y);
tam_y=var(2);

if tam_x~=tam_y
    
    disp('Erro. Tamanhos incompativeis');
    disp('Encerre o programa');
    system('pause');
    
end;

disp('Entre com a ordem do polinomio de aproximação');
n=input('');
n=n+1;

for  j=1:n
    
    for i=1:n
    
        sum=0;
        
        for cont=1:tam_x
 
            x_x=x(cont);
            x_x=x_x.^(j+i-2);
            sum=sum+x_x;
            
        end;
        
        coef(i,j)=sum;
        
    end;
    
end;


for cont=1:n
    
    prod=0;
    
    for i=1:tam_x
        
        x_x=x(i);
        x_x=x_x^(cont-1);
        y_y=y(i);
        prod=prod+y_y*x_x;
        
    end;
    
    b(cont,1)=prod;
    
end;

disp(coef);
disp(b);

coeficientes=linsolve(coef,b);
coeficientes=coeficientes';
disp(coeficientes);

for i=1:n
    
    var(n)=polyval(coeficientes,x(n));
    
end;


