format short

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
    func1=cos(2*c1)+sin(3*c1); %ALTERAR                                                     %Função
    c1=ponto(i)+(2/3)*h;
    c2=valor(i)+(2/3)*h*func1;
    func2=cos(2*c1)+sin(3*c1); %ALTERAR
    func=func1+3*func2;
    func=h*func/4;
    valor(i+1)=valor(i)+func;
    
end;

for i=1:n+1
    
    valor_correto(i)=0;
    
end;

for i=1:n+1
    
    varind=ponto(i);
    valor_correto(i)=0.5*sin(2*varind)-(1/3)*cos(3*varind)+4/3;
 
end;

disp(valor);
disp(valor_correto);
