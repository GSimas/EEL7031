disp('Entre com os x');
x=input('');
disp('Entre com os y');
y=input('');
tam=size(x);
n=tam(2);

erro_y=0;

for i=1:n
    
    minimo(i)=0.4067+1.15488*x(i)+0.0348*x(i).^2;
    erro_prov=minimo(i)-y(i);
    erro_prov=erro_prov.^2;
    erro_y=erro_y+erro_prov;
    
end;

disp(erro_y);