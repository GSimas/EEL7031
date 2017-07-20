disp('Entre com a matriz:');
A=input('');
n=size(A);
n=n(1);
cont=0;

for i=1:n
    t=A(i,i);
    t=abs(t);
    sigma=0;
    for k=1:n
        temp=A(i,k);
        temp=abs(temp);
        sigma=sigma+temp;
    end;
    sigma=sigma-t;
    if t>sigma
        cont=cont+1;
    end;
end;
if cont==n
    disp('Matriz estritamente diagonal diagonal');
else 
    disp('Não é estritamente dominante diagonal');
end;