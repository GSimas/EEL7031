disp('Entre com a matriz A');
A=input('');
At=transpose(A);
if At==A
    disp('Sim�trica');
else
    disp('N�o sim�trica');
end;