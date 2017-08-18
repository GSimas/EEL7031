% Produto Interno entre vetores
A=input('Insira o vetor A:  ')
B=input('Insira o vetor B:  ')
c=length(A);
d=length(B);
er=1;   %%flag de erro
k=0;
if c==d
    er=0;
    for i=1:c
    k=k+(A(i)*B(i));
    end
    Resultado=k
    
end
if er==1
    ('Vetores de ordem diferente')
end
    