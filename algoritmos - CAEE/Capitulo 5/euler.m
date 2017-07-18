format short;

clear;
clc;

disp('Intervalo [a,b]');
disp('Entre com o "a"');
a=input('');
disp('Entre com o "b"');
b=input('');
disp('Entre com o numero de passo');
h=input('');
n=(b-a)/h

for i=1:n+1
    
    ponto(i)=a+(i-1)*h;
    
end;

disp('Entre com a condição inicial');
valor(1)=input('');

for i=2:n+1
    
    c1=ponto(i-1);
    c2=valor(i-1);
    func=50/c2-50*c2;   %Aqui se define a funcao
    valor(i)=valor(i-1)+h*func;
    
end;

disp(valor);

for i=1:n+1
    
    t=ponto(i);
    valor_correto(i)=sqrt(1+exp(-100*t));

end;

plot(valor);
system('pause');
plot(valor_correto);