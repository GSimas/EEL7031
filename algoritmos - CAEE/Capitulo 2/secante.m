clear;
clc;
disp('Entre com o polinômio')
poli=input('')
dominio=linspace(-5,5,1000);
imagem=polyval(poli,dominio);
plot(dominio,imagem);
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
    f_a=polyval(poli,a);
    f_b=polyval(poli,b);
    p=b-((f_b*(b-a))/(f_b-f_a));
    f_p=polyval(poli,p);
    produto_a=f_a*f_p;
    produto_b=f_b*f_p;
    
    if produto_a<0
        a=a;
        b=p;
    else
        a=p;
        b=b;
    end
    
    tol=abs(p-b);
    i=i+1;
    if i==n
        break;
    end;
end
disp(p);