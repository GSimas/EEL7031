disp('Entre com a matriz A');
A=input('');
At=transpose(A);
if At==A
    disp('Simétrica');
else
    disp('Não simétrica');
end;