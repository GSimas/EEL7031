format long

syms 'x';
func=@(x) x.^2; %Função
disp('Entre com o intervalo ');
intervalo=input('');
a=intervalo(1);
b=intervalo(2);
x0=(a+b)/2;
func_x0=subs(func,x0);
func_a=subs(func,a);
func_b=subs(func,b);
integral=(b-a)*(func_a+4*func_x0+func_b);
integral=integral/6;
disp('Integral');
disp(integral);