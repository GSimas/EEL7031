%Crout
A=input('Insira a matriz A:  ')
c=size(A);
m=c(1,1);
n=m;
k=1;
i=0;
z=0;
soma=0;
for k=1:n
if k==1
    for i=1:n
          L(i,1)=A(i,1);
    end
    for j=1:n
          U(1,j)=A(1,j)/L(1,1);
    end
else
    for i=k:n
            for r=1:k-1
                soma=soma+L(i,r)*U(r,k);
            end
        L(i,k)=A(i,k)-soma;
        soma=0;
    end
    for j=k:n
        for r=1:k-1
            soma=L(k,r)*U(r,j);
        U(k,j)=(1/L(k,k))*(A(k,j)-soma);
        soma=0;
        end
    end
end
end
L
U