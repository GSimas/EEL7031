format long e
clear;
clc;

syms 'x'
f=@(x)exp(6*x)+3*((log(2))^2)*exp(2*x)-log(8)*exp(4*x)-(log(2)^3);
disp('Entre com a tolerância máxima');

TolMax=input('');
TolMax_2=TolMax;

derf=diff(f,x);

disp('Entre com o máximo número de interações');
n_max=input('');

disp('Entre com a aproximação inicial');
p=input('');

tol=100;
i=0;
po=linspace(0,100,100);

while tol>TolMax
    
    f_p=exp(6*p)+3*((log(2))^2)*exp(2*p)-log(8)*exp(4*p)-(log(2)^3);
    derv_f_p=(subs(derf,p));
    a=p-(f_p/derv_f_p);
    z=i+1;
    po(z)=p;
    tol=p-a;
    tol=abs(tol);
    
    if tol<TolMax
        
        break;
    end;
    
    p=a;
    i=i+1;
    
    if i==n_max
        
        break;
        
    end;
end;

disp(p);
disp(i);
i=0;
tol=100;
y=linspace(0,100,100);

while tol>TolMax_2
    
    z=i+1;
    y(z)=po(z)-((po(z+1)-po(z))^2)/(po(z+2)-2*po(z+1)+po(z));
    
    if z>1
        
        tol=y(z)-y(z-1);
        tol=abs(tol);
        
    end;
    
    i=i+1;
    
    if i==n_max;
        
        break;
        
    end;
    
end;

disp(y(z));
disp(i);