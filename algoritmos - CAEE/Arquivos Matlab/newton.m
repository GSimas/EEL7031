%%M�todo de Newton-Raphson%%
format long;
x=sym('x'); 
y=input('\n entre com a f(x) =');
y1=diff(y,x);
x0=input('\n entre com o valor inicial=');
t =input('\n entre com a toler�ncia=');
m=input('\n entre com o numero max de itera�oes=');
fx=subs(y,x0);
f1x=subs(y1,x0);
i=0;
c=0;
x1=0;
while (i<=m & c==0) 
fx=subs(y,x0);
f1x=subs(y1,x0);
x1=x0-(fx/f1x);
if (abs(x1-x0)<t)
    c=1;
else
    x0=x1;
    i=i+1;
    c=0;
end
end
if(i<m)
fprintf('\n A exatidao  foi atingida com %2i itera�oes e o valor de x eh %4.6f',i,x1);
else
    fprintf('\n A exatidao n�o foi atingida com %2i itera�oes',m);
end