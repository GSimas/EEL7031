%Multiplicação entre matrizes
A=input('Insira a matriz A:  ')
B=input('Insira a matriz B:  ')
c=size(A);
d=size(B);
t=c(1,1);
u=d(1,2);
o=c(1,2);
p=d(1,1);
er=1;
if o==p
    er=0;
    for i=1:t
        for j=1:u
        r=0;
        for k=1:o
            r=r+(A(i,k)*B(k,j));
        end
        S(i,j)=r;
        end
    end
end
    Resultado=S
    
if er==1
    ('Matrizes incompatíveis')
end
    