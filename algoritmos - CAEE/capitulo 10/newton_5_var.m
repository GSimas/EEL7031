clear;
clc;

syms 'a'; 
syms 'b';
syms 'c';
syms 'd';
syms 'e';

f1=@(a,b,c,d,e) 4*a^2+3*b-4*d-b^3;
f2=@(a,b,c,d,e) a-3*c+4*d-5*b+8;
f3=@(a,b,c,d,e) 0.25*a-4*c+3*b+b-1+3*e^2;
f4=@(a,b,c,d,e) a-b^2-5+c^2-2*d+2*a;
f5=@(a,b,c,d,e) 3*c^2+3*b+7*b^2-7*c+4*d+b-9;

disp('Entre com a aproximação inicial');
p=input('');
p=p';
disp('Entre com a tolerancia');
tol_esp=input('');
tol=40;

v=[a,b,c,d,e];

jacobiana=jacobian([4*a^2+3*b-4*d-b^3;a-3*c+4*d-5*b+8;0.25*a-4*c+3*b+b-1+3*e^2;a-b^2-5+c^2-2*d+2*a;3*c^2+3*b+7*b^2-7*c+4*d+b-9],v);
cont=1;
while tol>tol_esp
    
     for i=1:5
        
        for j=1:5
            
           func=inline(jacobiana(i,j),'a','b','c','d','e');
           valor=feval(func,p(1),p(2),p(3),p(4),p(5));
           valor=double(valor);
           matriz(i,j)=valor;
           
        end;
        
    end;
    
    y(1,1)=feval(f1,p(1),p(2),p(3),p(4),p(5));
    y(2,1)=feval(f2,p(1),p(2),p(3),p(4),p(5));
    y(3,1)=feval(f3,p(1),p(2),p(3),p(4),p(5));
    y(4,1)=feval(f4,p(1),p(2),p(3),p(4),p(5));
    y(5,1)=feval(f5,p(1),p(2),p(3),p(4),p(5));
    y=double(y);
    
    p_ant=p;
    matriz=inv(matriz);
    p=p_ant-matriz*y;
    
    diferenca=p_ant-p;
    diferenca=abs(diferenca);
    tol=norm(diferenca,inf);
    cont=cont+1;
end;

disp(p);
disp(cont);
