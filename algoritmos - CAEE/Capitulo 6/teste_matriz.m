clear;
clc;
disp('Entre com a matriz:');
A=input('');
n=size(A);
n=n(1);
cont=0;

determinante=det(A);
if determinante==0
    disp('Matriz Singular');
else
    disp('Matriz n�o singular');
end;

At=transpose(A);
if At==A
    disp('Sim�trica');
else
    disp('N�o sim�trica');
end;

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
    disp('Matriz estritamente diagonal dominante');
else 
    disp('N�o � estritamente dominante diagonal');
end;

[R,p]=chol(A);
if p==0
    disp('Matriz definida positivamente');
else 
    disp('Matriz n�o definida positivamente');
end;