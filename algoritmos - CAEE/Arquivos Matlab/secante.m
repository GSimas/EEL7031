%%Método da Secante%%
format long;
x=sym('x'); 
y=input('\n entre com a f(x) =');
x0=input('\n entre com o primeiro valor inicial=');
x1=input('\n entre com o segundo valor inicial=');
t =input('\n entre com a tolerância=');
m=input('\n entre com o numero max de iteraçoes=');
f0=subs(y,x0);
f1=subs(y,x1);
i=0;
c=0;
x2=0;
while (i<=m & c==0) 
f0=subs(y,x0);
f1=subs(y,x1);
x2=x1-(f1*(x1-x0)/(f1-f0));
if (abs(x2-x1)<t)
    c=1;
else
    x0=x1;
    x1=x2;
    i=i+1;
    c=0;
end
end
if(i<m)
fprintf('\n A exatidao  foi atingida com %2i iteraçoes e o valor de x eh %4.6f',i,x2);
else
    fprintf('\n A exatidao não foi atingida com %2i iteraçoes',m);
end