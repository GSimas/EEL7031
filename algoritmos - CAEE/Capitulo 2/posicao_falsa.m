clear;
clc;
syms 'x';
f=@(x) -x^3-cos(x);
disp('Entre com o valor esquerdo do intervalo');
a=input('');
disp('Entre com o valor direito do intervalo');
b=input('');
disp('Entre com a tolerancia maxima');
TOL=input('');
disp('Entre com o número máximo de execuções');
n=input('');
tol=100;
i=0;

while tol>TOL
    
    f_a=subs(f,a);
    f_b=subs(f,b);
    p=b-((f_b*(b-a))/(f_b-f_a));
    f_p=subs(f,p);
    produto_a=f_a*f_p;
    produto_b=f_b*f_p;
    
    if produto_b<0
        a=p;
        b=b;
    end
    
    if produto_a<0
        
        a=a;
        b=p;
        
    end
    
    i=i+1;
    disp(p)
    
    if i==n
        
        break;
        
    end;
    
end