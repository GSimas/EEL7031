
clear;
clc;

format short

syms 'x';
syms 'y';

g=100*(x^2-y)^2+(1-x)^2;
fA=2*g*2*(200*x^3-200*x*y*x-1); 
fB=2*g*-200*(x^2-y);
g=g*g;

fA=inline(fA,'x','y');
fB=inline(fB,'x','y');

g=inline(g,'x','y');

disp('Entre com a aproximação inicial');
aprox=input('');
aprox_ant=aprox;
disp('Numero de variaveis');
num_var=input('');
disp('Numero maximo de iterações');
num_int=input('');
disp('Tolerancia');
tol_esp=input('');
tol_cal=50;
k=1;

while tol_cal>tol_esp
    
    aprox_ant=aprox;
    g1=feval(g,aprox(1),aprox(2));
    matriz_z(1)=feval(fA,aprox(1),aprox(2));
    matriz_z(2)=feval(fB,aprox(1),aprox(2));
    
    z0=norm(matriz_z,2);
    
    if z0==0
      
        disp('Gradiente nulo');
        disp(aprox);
        break;
        
    end;
 
    
    matriz_z=matriz_z/z0;
    alfa1=0;
    alfa3=1;
    var=aprox-alfa3*matriz_z;
    g3=feval(g,var(1),var(2));
    
    while g3>g1
        
        
        alfa3=alfa3/2;
        var=aprox-alfa3*matriz_z;
        g3=feval(g,var(1),var(2));
        
        if tol_esp/2>alfa3
            
            disp('Minimo encontrado');
            disp(aprox);
            break;
            
        end;
        
    end;
    
    alfa2=alfa3/2;
    var=aprox-alfa2*matriz_z;
    g2=feval(g,var(1),var(2));
    
    h1=(g2-g1)/alfa2;
    h2=(g3-g2)/(alfa3-alfa2);
    h3=(h2-h1)/alfa3;
    
    alfa0=0.5*(alfa2-h1/h2);
    var=aprox-alfa0*matriz_z;
    g0=feval(g,var(1),var(2));
    
    matriz_g(1)=g0;
    matriz_g(2)=g1;
    matriz_g(3)=g2;
    matriz_g(4)=g3;
    
    [elemento,indice]=min(matriz_g);
    
    if indice==1
        
        alfa=alfa0;
        
    end;
    
    if indice==2
       
        alfa=alfa1;
        
    end;
    
    if indice==3
        
        alfa=alfa2;
        
    end;
    
    if indice==4
        
        alfa=alfa3;
        
    end;
    aprox_ant=aprox
    g_linha=matriz_g(indice);
    aprox=aprox-alfa*matriz_z;
    diferenca=aprox-aprox_ant;
    diferenca=abs(diferenca);
    tol_cal=norm(diferenca,2);
        matriz_z(1)=feval(fA,aprox(1),aprox(2));
    matriz_z(2)=feval(fB,aprox(1),aprox(2));
    
    z0=norm(matriz_z,2);
  
    
    k=k+1;
end

disp(aprox);
