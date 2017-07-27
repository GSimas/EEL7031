clear;
clc;

format long

syms 'x';
syms 'y';
syms 'z';

%----
%Definição das funções
%----

f1=@(x,y) log(x.^2+y.^2)-sin(x*y)-log(2)-log(pi);
f2=@(x,y) exp(x-y)+cos(x*y);

%---

disp('Entre com a aproximação inicial');
p=input('');
p=p';
disp('Entre com a tolerancia');
tol_esp=input('');
tol=40;

v=[x,y];

jacobiana=jacobian([log(x.^2+y.^2)-sin(x*y)-log(2)-log(pi);exp(x-y)+cos(x*y)],v);

for i=1:2
        
    for j=1:2
            
        func=inline(jacobiana(i,j),'x','y');
        valor=feval(func,p(1),p(2));
        valor=double(valor);
        matriz_a(i,j)=valor;
           
    end;
        
end;

matriz_f(1,1)=feval(f1,p(1),p(2));
matriz_f(2,1)=feval(f2,p(1),p(2));

while tol>tol_esp
    
    matriz_f_ant=matriz_f;
    p_ant=p;
    matriz_a_ant=matriz_a;
    matriz_a_inv=inv(matriz_a);
    p=p_ant-matriz_a_inv*matriz_f;
    
    
    %Atualiza matriz f
    
    matriz_f(1,1)=feval(f1,p(1),p(2));
    matriz_f(2,1)=feval(f2,p(1),p(2));
    
    %Calculo da nova matriz A
    disp('Loop');
    s=p-p_ant;
    s_t=s';
    norma_s=norm(s,2);
    tol=norma_s
    dif_f=matriz_f-matriz_f_ant;
    matriz_a=matriz_a_ant+(dif_f-matriz_a_ant*s)*s_t/norma_s;
    
end

disp(p);
    