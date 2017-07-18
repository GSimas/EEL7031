format short;

clear;
clc;

disp('Intervalo [a,b]');
disp('Entre com o "a"');
a=input('');
disp('Entre com o "b"');
b=input('');
disp('Entre com o passo');
h=input('');
n=(b-a)/h;

for i=1:n+1
    
    ponto(i)=a+(i-1)*h;
    
end;

disp('Entre com a condição inicial');
valor(1)=input('');

for i=1:n
    
    c1=ponto(i);
    c2=valor(i);     
    k1=-5*c2+5*c1.^2+2*c1;          %ALTERAR
    k1=h*k1;
    c1=ponto(i)+h/2;
    c2=valor(i)+k1/2;
    k2=-5*c2+5*c1.^2+2*c1;          %ALTERAR
    k2=h*k2;
    c1=ponto(i)+h/2;
    c2=valor(i)+k2/2;
    k3=-5*c2+5*c1.^2+2*c1;          %ALTERAR
    k3=h*k3;
    c1=ponto(i+1);
    c2=valor(i)+k3;
    k4=-5*c2+5*c1.^2+2*c1;          %ALTERAR
    k4=h*k4;
    soma=k1+2*k2+2*k3+k4;
    valor(i+1)=valor(i)+soma/6;
    
end;

for i=1:n+1
    
    valor_correto(i)=0;
    
end;

for i=1:n+1
    
    varind=ponto(i);
    valor_correto(i)=varind.^2+(1/3)*exp(-5*varind);
 
end;

disp(valor);
disp(valor_correto);