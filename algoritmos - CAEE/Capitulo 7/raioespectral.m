disp('Entre com a matriz A');
A=input('');
disp(A);
disp('Entre com a matriz B');
B=input('');
disp(B);
raioa=eigs(A);
raioa=abs(raioa);
maximoa=max(raioa);
disp('p(A)');
disp(maximoa);
raiob=eigs(B);
raiob=abs(raiob);
maximob=max(raiob);
disp('p(B)');
disp(maximob);
C=A+B;
disp(C);
raioc=eigs(C);
raioc=abs(raioc);
maximoc=max(raioc);
disp('p(C)');
disp(maximoc);