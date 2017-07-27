clear;
clc;

syms 'x'; 
syms 'y';
f1=@(x,y) sin(4*pi*x*y)-2*y-x;
f2=@(x,y) ((4*pi-1)/(4*pi))*(exp(2*x)-exp(1))+4*exp(1)*y.^2-2*exp(1)*x;

disp('Entre com a aproximação inicial');
p=input('');
p=p';
disp('Entre com a tolerancia');
tol_esp=input('');
tol=40;

v=[x,y];

jacobiana=jacobian([sin(4*pi*x*y)-2*y-x;((4*pi-1)/(4*pi))*(exp(2*x)-exp(1))+4*exp(1)*y.^2-2*exp(1)*x],v);

while tol>tol_esp
    
     for i=1:2
        
        for j=1:2
            
           func=inline(jacobiana(i,j),'x','y');
           valor=feval(func,p(1),p(2));
           valor=double(valor);
           matriz(i,j)=valor;
           
        end;
        
    end;
    
    y(1,1)=feval(f1,p(1),p(2));
    y(2,1)=feval(f2,p(1),p(2));
    y=double(y);
    
    p_ant=p;
    matriz=inv(matriz);
    p=p_ant-matriz*y;
    disp(p);
    
    diferenca=p_ant-p;
    diferenca=abs(diferenca);
    tol=norm(diferenca,inf);
    
end;
