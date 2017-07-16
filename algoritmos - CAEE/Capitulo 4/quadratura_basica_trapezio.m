syms 'x';
func=@(x) x.^2; %Função
disp('Entre com o intervalo ');
intervalo=input('');
a=intervalo(1);
b=intervalo(2);
func_a=subs(func,a);
func_b=subs(func,b);
integral=(b-a)*(func_a+func_b)/2;
disp('Integral');
disp(integral);