clear;
clc;
disp('Entre com o polinomio');
poli=input('');
disp('Entre com o vetor a esquerda do intervalo');
a=input('');
disp('Entre com o vetor a direita do intervalo');
b=input('');
disp('Entre com a tolerância');
TOL=input('');
disp('Entre com o máximo número de interações')
n=input('');
i=0;

while i<n
    
    p_a=polyval(poli,a);
    p_b=polyval(poli,b);
    produto=p_a*p_b;
    
    if produto>0
        
        disp('Intervalo incorreto')
        break;
        
    end
   
    p=(a+b)/2;
    p_p=polyval(poli,p);
    produto_a=p_p*p_a;
    produto_b=p_p*p_b;
    
    if produto_a<0
        
        a=a;
        b=p;
        
    else
        
        if produto_b<0
            
            a=p;
            b=b;
            
        else
            
            dip('Intervalo incorreto');
            break;
            
        end
        
    end
    
    i=i+1;
    
    if i>n
        
        break;
        
    end
    
    if abs(p_a-p_p)<TOL
        
        break;
        
    end;
   if abs(p_b-p_p)<TOL
       
        break;
        
    end;
end

disp('Raiz:');
disp(p);
disp('Tolerância: ');
disp(TOL);
disp('Interações necessárias:  ');
disp(i);
disp('Erro');
disp(abs(p_b-p_p));
