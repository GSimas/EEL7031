%%Metodo da Bissecçao%%
format long;
x=sym('x'); 
y=input('\n entre com a f(x) =');
a=input('\n entre com o limite inferior do intervalo=');
b=input('\n entre com o limite superior do intervalo=');
 tol =input('\n entre com a tolerância=');
l=input('\n entre com o numero max de iteraçoes=');
f0=subs(y,a);
f1=subs(y,b);
while(f0*f1>0)
fprintf('\n entrar com um novo intervalo:\n');
a=input('\n entre com o novo limite inferior do intervalo=');
b=input('\n entre com o novo limite superior do intervalo=');
f0=subs(y,a);
f1=subs(y,b);
end
x0=a;
x1=b;
x2=0;
ite=0;
fprintf('\n iterações      x     f(x) \n');
while (abs(f0)>tol | abs (f1)>tol)& (ite<l)
x2=(x0+x1)/2;
f2=subs(y,x2);
if (f2*f0<0)
x1=x2;
f1=f2;
else
x0=x2;
f0=f2;
end
ite=ite+1;
fprintf('%2.0f: %15.6f  %10.6f \n',ite,x2,f2);
end
if(ite<l)
fprintf('\n A exatidao  foi atingida com %2i iteraçoes e o valor de x eh %4.6f',ite,x2);
else
    fprintf('\n A exatidao não foi atingida com %2i iteraçoes',l);
end