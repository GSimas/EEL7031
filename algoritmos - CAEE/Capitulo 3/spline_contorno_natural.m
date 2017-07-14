clear;
clc;

disp('Entre com os x"s');
x=input('');
disp('Entre com os y"s');
y=input('');

tam_xx=size(x);
tam_yy=size(y);

if tam_yy(2)==tam_xx(2);

    n=tam_xx(2);
    
    for cont=1:n
        
        a(cont)=y(cont);
        
    end;
    
    for cont=1:n-1
        
        h(cont)=x(cont+1)-x(cont);
        
    end;
    
    for cont=2:n-1
        
        alfa(cont)=(3/h(cont))*(a(cont+1)-a(cont))-(3/h(cont-1))*(a(cont)-a(cont-1));
        
    end;
    
    l(1)=1;
    u(1)=0;
    z(1)=0;
    
    for cont=2:n-1
        
        l(cont)=2*(x(cont+1)-x(cont-1))-h(cont-1)*u(cont-1);
        u(cont)=h(cont)/l(cont);
        z(cont)=(alfa(cont)-h(cont-1)*z(cont-1))/l(cont);
        
    end;
    
    l(n)=1;
    z(n)=0;
    c(n)=0;
    
    for cont=1:n-1
        
        j=n-cont;
        c(j)=z(j)-u(j)*c(j+1);
        b(j)=(a(j+1)-a(j))/h(j)-h(j)*(c(j+1)+2*c(j))/3;
        d(j)=(c(j+1)-c(j))/(3*h(j));
        
    end;

    disp('A');
    disp(a);
    disp('B');
    disp(b);
    disp('C');
    disp(c);
    disp('D');
    disp(d);

else 
    
    disp('Erro');
    system('pause');
    
end;
