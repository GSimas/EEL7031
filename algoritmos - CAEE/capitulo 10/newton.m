clear;
clc;

disp('Entre com a previsão inicial');
p=input('');
p=p';
tam_p=size(p);
n=tam_p(2);
disp('Entre com a tolerancia');
tol_esp=input('');
tol=40;
%Tem que mudar caso a caso

while tol>tol_esp
    
    c1=p(1,1);
    c2=p(2,1);
    c3=p(3,1);
    
    
    %Monta Y---->DEVE SER ALTERADO
    
    y(1,1)=3*c1-cos(c2*c3)-0.5;
    y(2,1)=c1.^2-81*(c2+0.1).^2+sin(c3)+1.06;
    y(3,1)=exp(-c1*c2)+20*(c3)+(1/3)*(10*pi-3);
    
    
    %Monta a jacobiana do sistema-->DEVE SER ALTERADO
    
    jacobiana(1,1)=3;
    jacobiana(1,2)=c3*sin(c2*c3);
    jacobiana(1,3)=c2*sin(c2*c3);
    
    jacobiana(2,1)=2*c1;
    jacobiana(2,2)=-162*(c2+0.1);
    jacobiana(2,3)=cos(c3);
    
    jacobiana(3,1)=-c2*exp(-c1*c2);
    jacobiana(3,2)=-c1*exp(c1*c2);
    jacobiana(3,3)=20;
    
    %Resolve P(i)=P(i-1)-J^-1*F
    
    jacobiana=inv(jacobiana);
    p_ant=p;

    p=p-jacobiana*y
    diferenca=p_ant-p;
    diferena=abs(diferenca);
    tol=norm(diferenca,inf);

    
end;

disp(p);