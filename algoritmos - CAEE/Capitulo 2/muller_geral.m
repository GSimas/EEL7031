
clear;
clc;
disp('Entre com o polin�mio');
f=input('');
disp('Entre com a toler�ncia m�xima');
TolMax=input('');
disp('Entre com o m�ximo n�mero de intera��es');
n_max=input('');
disp('Entre com a aproxima��o inicial 0');
a0=input('');
disp('Entre com a aproxima��o inicial 1');
a1=input('');
disp('Entre com a aproxima��o inicial 2');
a2=input('');
tol=100;
i=0;
while tol>TolMax
    p_a0=polyval(f,a0);
    p_a1=polyval(f,a1);
    p_a2=polyval(f,a2);
    c=p_a2;
    b=(((a0-a2)^2)*(p_a1-p_a2)-((a1-a2)^2)*(p_a0-p_a2))/((a0-a2)*(a1-a2)*(a0-a1));
    a=((a1-a2)*(p_a0-p_a2)-(a0-a2)*(p_a1-p_a2))/((a0-a2)*(a1-a2)*(a0-a1));
    p=a2-(2*c)/(b+sign(b)*sqrt(b*b-4*a*c));
    a0=a1;
    a1=a2;
    a2=p;
    tol=abs(a2-a1);
    i=i+1;
    if i==n_max
        break;
    end;
end;
disp(p);
    