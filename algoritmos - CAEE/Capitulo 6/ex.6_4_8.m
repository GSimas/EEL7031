disp('Entre com a matriz A');
A=input('');
disp('Digite até qual matriz deseja calcular');
n=input('');
Aorg=A;
for i=1:n
    disp(i);
    disp('A(i)');
    A=Aorg*A;
end