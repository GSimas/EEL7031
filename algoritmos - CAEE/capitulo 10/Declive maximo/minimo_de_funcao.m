
clear;
clc;

syms 'x';
syms 'y';
syms 'z';



f1=100*(x^2-y)^2+(1-x)^2;
f2=100*(x^2-y)^2+(1-x)^2;


gradf1X=2*(200*x^3-200*x*y+x-1);
gradf1Y=-200*(x^2-y);


gradf2X=2*(-1+x+200*x^3-200*x*y);
gradf2Y=-200*(x^2-y);


fA=2*(f1*gradf1X+f2*gradf2X);
fB=2*(f1*gradf1Y+f2*gradf2Y);

fA=inline(fA,'x','y');
fB=inline(fB,'x','y');

g=(f1*f1)+(f2*f2);
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


while k<num_int

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
        
        alfa=alfa0
        
    end;
    
    if indice==2
        
        alfa=alfa1
        
    end;
    
    if indice==3
        
        alfa=alfa2
        
    end;
    
    if indice==4
        
        alfa=alfa3
        
    end;
    
    aprox=aprox-alfa*matriz_z;
    
    k=k+1;
end
