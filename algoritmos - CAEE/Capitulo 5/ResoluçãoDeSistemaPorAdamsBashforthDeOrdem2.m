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
w(1)=input('');
disp('Entre com o valor da derivada de 0');
w(2)=input('');
funcao_a(1)=w(1);
funcao_b(2)=w(2);
tempo(1)=0;

for i=2:2
    
   funcao_a(i)=funcao_a(i-1)+(h/4)*(funcao_b(i-1)+3*(funcao_b(i-1)+(2/3)*h*funcao_b(i-1)));
   funcao_b(i)=funcao_b(i-1)+(h/4)*((-16.085*sin( funcao_a(i-1))+3*(-16.085*sin( funcao_a(i-1))+(2/3)*h*-16.085*sin( funcao_a(i-1)))));   
   tempo(i)=(i-1)*h;
   
end;

for j=3:n+1
    
    funcao_a(j)=funcao_a(j-1)+(h/2)*(3*funcao_b(j-1)-funcao_b(j-2));
    funcao_b(j)=funcao_b(j-1)+(h/2)*(3*-16.085*sin(funcao_a(j-1))-(-16.085*sin(funcao_a(j-2))));
    tempo(j)=(j-1)*h;
    var=tempo(j);
    var=mod(var,0.5);
   
    if var==0
       
       disp(tempo(j));
       disp(funcao_a(j));
       
    end;
    
end;
