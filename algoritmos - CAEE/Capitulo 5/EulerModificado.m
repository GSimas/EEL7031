format long

clear;
clc;

disp('Intervalo [a,b]');
disp('Entre com o "a"');
a=input('');
disp('Entre com o "b"');
b=input('');
disp('Entre com o numero de passos');
n=input('');
h=(b-a)/n;

for i=1:n+1
    
    disp(i);
    ponto(i)=a+(i-1)*h;
    disp(ponto(i));
    
end;

disp('Entre com a condição inicial');
valor(1)=input('');

for i=1:n;
    
    c1=ponto(i);
    c2=valor(i);
    func_a=c2-c1.^2+1;
    c1=ponto(i+1);
    c2=valor(i)+h*func_a;
    func=c2-c1.^2+1;
    func=func_a+func;
    func=func*h/2;
    valor(i+1)=valor(i);
    valor(i+1)=valor(i+1)+func;
    
end;

disp(valor);
