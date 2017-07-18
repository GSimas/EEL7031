clear;
clc;
 
disp('Entre com o passo');
h=input('');

disp('Entre com a extremidade A');
A=input('');

disp('Entre com a extremidade B');
B=input('');

n=(B-A)/h;

disp('Entre com o valor de 0(0)');
aprox_teta(1)=input('');

disp('Entre com o valor da derivada de 0');
aprox_del_teta(1)=input('');

tempo(1)=0;


for i=2:n
    
    if i<3
    
        func_teta_a(i)=aprox_del_teta(i-1);
        func_teta_b(i)=(aprox_del_teta(i-1)+(h/2)*func_teta_a(i-1));
        teta(i)=aprox_teta(i-1)+h*func_teta_b(i-1);
    
        func_del_teta_a(i)=-16.35*sin(aprox_teta(i-1));
        func_del_teta_b(i)=-16.35*sin(aprox_teta(i-1)+(h/2)*func_del_teta_a(i-1));
        del_teta(i)=aprox_del_teta(i-1)+h*func_del_teta_b(i-1);
    
        aprox_teta(i)=teta(i);
        aprox_del_teta(i)=del_teta(i);
    
        tempo(i)=(i-1)*h;
  
    end
    
    if i>2
        
        func_teta_a(i)=aprox_del_teta(i-1);
        aprox_teta(i)=aprox_teta(i-1)+(h/2)*(3*aprox_del_teta(i-1)-aprox_del_teta(i-2));
        
        func_del_teta_a(i)=-16.35*sin(aprox_teta(i-1));
        aprox_del_teta(i)=aprox_del_teta(i-1)+(h/2)*(3*func_del_teta_a(i-1)-func_del_teta_a(i-2));
        
        tempo(i)=(i-1)*h;
        
    end
        
end

plot(tempo,aprox_teta)





