syms 'x';
func=@(x) x.^2; %Função
disp('Entre com o intervalo ');
intervalo=input('');
a=intervalo(1);
b=intervalo(2);
x0=(a+b)/2;
func_x0=subs(func,x0);
integral=(b-a)*func_x0;
disp('Integral');
disp(integral);
