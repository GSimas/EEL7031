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

%Runge Kutta Ordem 4-->iniciador do método

for i=1:2
    
    c1=ponto(i);
    c2=valor(i);     
    k1=cos(2*c1)+sin(3*c1);          %ALTERAR
    k1=h*k1;
    c1=ponto(i)+h/2;
    c2=valor(i)+k1/2;
    k2=cos(2*c1)+sin(3*c1);          %ALTERAR
    k2=h*k2;
    c1=ponto(i)+h/2;
    c2=valor(i)+k2/2;
    k3=cos(2*c1)+sin(3*c1);          %ALTERAR
    k3=h*k3;
    c1=ponto(i+1);
    c2=valor(i)+k3;
    k4=cos(2*c1)+sin(3*c1);          %ALTERAR
    k4=h*k4;
    soma=k1+2*k2+2*k3+k4;
    valor(i+1)=valor(i)+soma/6;
    
end;

for i=3:n
    
    c1=ponto(i);
    c2=valor(i);
    funcA=cos(2*c1)+sin(3*c1);   %INSERIR FUNÇÃO QUE USA 'I'
    c1=ponto(i-1);
    c2=valor(i-1);
    funcB=cos(2*c1)+sin(3*c1);   %INSERIR FUNCAO QUE USA 'I-1'
    c1=ponto(i-2);
    c2=ponto(i-2);
    funcC=cos(2*c1)+sin(3*c1);%INSERIR FUNCAO QUE USA 'I-2'
    valor(i+1)=valor(i)+h*(23*funcA-16*funcB+5*funcC)/12;
    
end

for i=1:n+1
    
    valor_correto(i)=0;
    
end;
for i=1:n+1
    
    t=ponto(i);
    valor_correto(i)=t+1/(1-t);
 
end;

disp('Adams-Bashfort de 3 Passos');
disp(valor);
