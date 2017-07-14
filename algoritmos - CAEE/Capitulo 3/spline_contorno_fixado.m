
disp('S(j)=a+b(x-x(j))+c(x-x(j))^2+d(x-x(j))^3');
disp('Entre com os x');
x=input('');
disp('Entre com os y');
y=input('');
disp('Entre com a derivada de x(0)');
derv_x0=input('');
disp('Entre com a derivada de x(n)');
derv_xn=input('');
tamanho_x=size(x);
tamanho_y=size(y);

if tamanho_x(2) == tamanho_y(2);
    
    n=tamanho_x(2);
    
    for i=1:n
        
        a(i)=y(i);
        
    end;
    
    for i=1:n-1
        
        h(i)=x(i+1)-x(i);
        
    end;
    
    alfa(1)=(3/h(i))*(a(2)-a(1))-3*derv_x0;
    alfa(n)=(3*derv_xn)-3*(a(n)-a(n-1))/h(n-1);
    
    for i=2:n-1
        
        alfa(i)=(3/h(i))*(a(i+1)-a(i))-(3/h(i-1))*(a(i)-a(i-1));
        
    end;
    
    l(1)=2*h(1);
    u(1)=0.5;
    z(1)=alfa(1)/l(1);
    
    for i=2:n-1
        
        l(i)=2*(x(i+1)-x(i-1))-h(i-1)*u(i-1);
        u(i)=h(i)/l(i);
        z(i)=(alfa(i)-h(i-1)*z(i-1))/l(i);
        
    end;
    
    l(n)=h(n-1)*(2-u(n-1));
    z(n)=(alfa(n)-h(n-1)*z(n-1))/l(n);
    c(n)=z(n);
    j=n-1;
    
    for i=1:n-1
       
        j=n-i;
        c(j)=z(j)-u(j)*c(j+1);
        b(j)=(a(j+1)-a(j))/h(j)-h(j)*(c(j+1)+2*c(j))/3;
        d(j)=(c(j+1)-c(j))/(3*h(j));
        
    end;
    
    disp('X');
    disp(x);
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
    
end;