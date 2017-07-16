format long

syms 'x';
f=@(x) x;                %Declara função
disp('Entre com o A');
a=input('');
disp('Entre com o B');
b=input('');
disp('Tol');
tol=input('');
int=quadadaptativa(f,a,b,tol);
disp(int);