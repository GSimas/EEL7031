clear;
clc;
syms 'x';
f=@(x) x^3-0.22*x+0.9068;
disp('Entre com a tolerância máxima');
TolMax=input('');
derf=diff(f,x);
disp('Entre com o máximo número de interações');
n_max=input('');
disp('Entre com a aproximação inicial');
p=input('');
tol=100;
i=0;
while tol>TolMax
    f_p=subs(f,p);
    derv_f_p=subs(derf,p);
    a=p-(f_p/derv_f_p);
    tol=abs(a-p);
    if tol<TolMax
        break;
    end;
    p=a;
    i=i+1;
    if i==n_max
        break;
    end;
end;
disp(a);
disp(p);