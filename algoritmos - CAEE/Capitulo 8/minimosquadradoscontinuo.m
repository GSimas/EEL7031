clear;
clc;

syms 't'
f=@(t) 23*(1-exp(-t/32.96));

disp('Entre com os extremos do intervalo');
disp('A');
a=input('');
disp('B');
b=input('');
disp('Entre com a ordem do polinomio interpolador');
n=input('');
n=n+1;

for j=1:n
    
    for i=1:n
        
        matriz_a(i,j)=(b.^(j+i-1)-a.^(j+i-1))/(j+i-1);
        
    end;
    
end;

integral=int(f,t);
int_b=subs(integral,b);
int_b=double(int_b);
int_a=subs(integral,a);
int_a=double(int_a);
diferenca=int_b-int_a;
matriz_b(1,1)=diferenca;

for k=2:n
    
    g=f;
    
    for i=2:k
        
        g=g*t;
        
    end;
    
    integral=int(g);
    int_b=subs(integral,b);
    int_b=double(int_b);
    int_a=subs(integral,a);
    int_a=double(int_a);
    diferenca=int_b-int_a;
    matriz_b(k,1)=diferenca;
    
end;

coeficientes=linsolve(matriz_a,matriz_b);
disp(coeficientes);
