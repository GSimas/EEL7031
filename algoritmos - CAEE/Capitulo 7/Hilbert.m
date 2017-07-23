clear;
clc;

digits 4

format short

disp('Entre com a ordem')
n=input('')
for i=1:n
    for j=1:n
        k=i+j-1;
        A(i,j)=1/k;
    end;
end;
disp('H:');
disp(A);
disp('Inversa:');
Ainv=inv(A);
disp(Ainv);
Alinha=inv(Ainv);
disp('A^-1^-1');
disp(Alinha);
B=A-Alinha;
norma=norm(B,inf);
disp('Norma infinita');
disp(norma);