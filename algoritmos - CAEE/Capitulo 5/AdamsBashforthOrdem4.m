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

disp('Entre com a condi��o inicial');
valor(1)=input('');

%Runge Kutta Ordem 4-->iniciador do m�todo

for i=1:3
    
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
    k3=cos(2*c1)+sin(3*c1);         %ALTERAR
    k3=h*k3;
    c1=ponto(i+1);
    c2=valor(i)+k3;
    k4=cos(2*c1)+sin(3*c1);         %ALTERAR
    k4=h*k4;
    soma=k1+2*k2+2*k3+k4;
    valor(i+1)=valor(i)+soma/6;
    
end;

for i=4:n
    
    c1=ponto(i);
    c2=valor(i);
    funcA=cos(2*c1)+sin(3*c1);   %INSERIR FUN��O QUE USA 'I'
    c1=ponto(i-1);
    c2=valor(i-1);
    funcB=cos(2*c1)+sin(3*c1);    %INSERIR FUNCAO QUE USA 'I-1'
    c1=ponto(i-2);
    c2=valor(i-2);
    funcC=cos(2*c1)+sin(3*c1);%INSERIR FUN��O QUE USA 'I-2'
    c1=ponto(i-3);
    c2=valor(i-3);
    funcD=cos(2*c1)+sin(3*c1);%INSERIR FUN��O QUE USA 'I-3'
    valor(i+1)=valor(i)+h*(55*funcA-59*funcB+37*funcC-9*funcD)/24;
    
end

for i=1:n+1
    
    valor_correto(i)=0;
    
end;

for i=1:n+1
    
    t=ponto(i);
    valor_correto(i)=sin(2*t)/2-(1/3)*cos(3*t)+4/3;
 
end;

disp('Adams-Bashfort de 4 passos');
disp(valor);
disp('Valor correto');
disp(valor_correto);
plot(ponto,valor,ponto,valor_correto);