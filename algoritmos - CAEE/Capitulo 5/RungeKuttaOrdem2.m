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
c1=ponto(1);
c2=valor(1);
func=c2-c1.^2+1;

for i=1:n
    
    c1=ponto(i)+h/2;
    c2=valor(i)+(h*func)/2;
    func=c2-c1.^2+1;   %Aqui se define a funcao
    valor(i+1)=valor(i)+h*func;
    
end;

disp(valor);