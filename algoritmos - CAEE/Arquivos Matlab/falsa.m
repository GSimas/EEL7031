%%Método da falsa posição%%
format long;
x=sym('x'); 
y=input('\n entre com a f(x) =');
a=input('\n entre com o limite inferior do intervalo=');
b=input('\n entre com o limite superior do intervalo=');
tol =input('\n entre com a tolerância=');
m=input('\n entre com o numero max de iteraçoes=');
fa=subs(y,a);
fb=subs(y,b);
i=0;
c=0;
x1=10;
x2=0;
while(fa*fb>0)
fprintf('\n entrar com um novo intervalo:\n');
a=input('\n entre com o novo limite inferior do intervalo=');
b=input('\n entre com o novo limite superior do intervalo=');
fa=subs(y,a);
fb=subs(y,b);
end
while (i<=m & c==0) 
fa=subs(y,a);
fb=subs(y,b);
x2=((a*fb)-(b*fa))/(fb-fa);
if (i~=0)
    if (abs(x2-x1)<tol)
        fprintf('Convergiu para x=%4.6f', x2);
        c=1;
    else
        c=0;
    end
end
f1=subs(y,x2);
if (c==0)
    if (f1*fb<0)
        a=x2;
    else
        b=x2;
    end
x1=x2;
i=i+1;
end
end
if(i<m)
fprintf('\n A exatidao  foi atingida com %2i iteraçoes e o valor de x eh %4.6f',i,x2);
else
    fprintf('\n A exatidao não foi atingida com %2i iteraçoes',m);
end