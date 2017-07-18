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

for i=1:3
    
    c1=ponto(i);
    c2=valor(i);     
    k1=-5*c2+5*c1.^2+2*c1;          %ALTERAR
    k1=h*k1;
    c1=ponto(i)+h/2;
    c2=valor(i)+k1/2;
    k2=-5*c2+5*c1.^2+2*c1;         %ALTERAR
    k2=h*k2;
    c1=ponto(i)+h/2;
    c2=valor(i)+k2/2;
    k3=-5*c2+5*c1.^2+2*c1;         %ALTERAR
    k3=h*k3;
    c1=ponto(i+1);
    c2=valor(i)+k3;
    k4=-5*c2+5*c1.^2+2*c1;        %ALTERAR
    k4=h*k4;
    soma=k1+2*k2+2*k3+k4;
    valor(i+1)=valor(i)+soma/6;
    
end;

for i=4:n
    
    %Gera Adams-Bashfort
    
    c1=ponto(i);
    c2=valor(i);
    funcA=-5*c2+5*c1.^2+2*c1;   %INSERIR FUNÇÃO QUE USA 'I'
    c1=ponto(i-1);
    c2=valor(i-1);
    funcB=-5*c2+5*c1.^2+2*c1;   %INSERIR FUNCAO QUE USA 'I-1'
    c1=ponto(i-2);
    c2=valor(i-2);
    funcC=-5*c2+5*c1.^2+2*c1;%INSERIR FUNÇÃO QUE USA 'I-2'
    c1=ponto(i-3);
    c2=valor(i-3);
    funcD=-5*c2+5*c1.^2+2*c1;%INSERIR FUNÇÃO QUE USA 'I-3'
    valor(i+1)=valor(i)+h*(55*funcA-59*funcB+37*funcC-9*funcD)/24;
    
    %Gera Adams-Moulton
    
    c1=ponto(i+1);
    c2=valor(i+1);
    funcA=-5*c2+5*c1.^2+2*c1;                     %INSERIR FUNÇÃO QUE USA 'I'
    c1=ponto(i);
    c2=valor(i);
    funcB=-5*c2+5*c1.^2+2*c1; 
    c1=ponto(i-1);
    c2=valor(i-1);
    funcC=-5*c2+5*c1.^2+2*c1;
    c1=ponto(i-2);
    c2=valor(i-2);
    funcD=-5*c2+5*c1.^2+2*c1; 
    valor(i+1)=valor(i)+(9*funcA+19*funcB-5*funcC+funcD)*h/24;
        
end

for i=1:n+1
    
    valor_correto(i)=0;
    
end;

for i=1:n+1
    
    t=ponto(i);
    valor_correto(i)=t.^2+exp(-5*t)/3;
 
end;

disp('Valor Obtido');
disp(valor);
disp('Valor correto');
disp(valor_correto);
