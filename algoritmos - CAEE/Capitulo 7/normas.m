disp('Entre com o vetor A');
A=input('');
tamanho=size(A);
n=tamanho(1);
sum=0;

for i=1:n
    sum=sum+A(i).*A(i);
end;

norma2=sqrt(sum);
A=abs(A);
maximo=max(A);
normainf=maximo;
disp('Norma 2');
disp(norma2);
disp('Norma infinita');
disp(normainf);
