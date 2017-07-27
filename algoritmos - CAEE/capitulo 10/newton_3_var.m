clear;
clc;

syms 'x'; 
syms 'y';
syms 'z';
f=@(x,y,z) x.^2+y-37;
g=@(x,y,z) x-y.^2-5;
h=@(x,y,z) x+y+z-3;

disp('Entre com a aproximação inicial');
p=input('');
p=p';
disp('Entre com a tolerancia');
tol_esp=input('');
tol=40;

v=[x,y,z];

jacobiana=jacobian([x.^2+y-37; x-y.^2-5;x+y+z-3],v);

while tol>tol_esp
    
     for i=1:3
        
        for j=1:3
            
           func=inline(jacobiana(i,j),'x','y','z');
           valor=feval(func,p(1),p(2),p(3));
           valor=double(valor);
           matriz(i,j)=valor;
           
        end;
        
    end;
    
    y(1,1)=feval(f,p(1),p(2),p(3));
    y(2,1)=feval(g,p(1),p(2),p(3));
    y(3,1)=feval(h,p(1),p(2),p(3));
    y=double(y);
    
    p_ant=p;
    matriz=inv(matriz);
    p=p_ant-matriz*y;
    disp(p);
    
    diferenca=p_ant-p;
    diferenca=abs(diferenca);
    tol=norm(diferenca,inf);
    
end;
