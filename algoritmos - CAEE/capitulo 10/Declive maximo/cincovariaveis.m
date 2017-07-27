clear;
clc;

syms 'a'; 
syms 'b';
syms 'c';
syms 'd';
syms 'e';

f1=4*a^2+3*b-4*d-b^3;
f2= a-3*c+4*d-5*b+8;
f3=0.25*a-4*c+3*b+b-1+3*e^2;
f4=a-b^2-5+c^2-2*d+2*a;
f5= 3*c^2+3*b+7*b^2-7*c+4*d+b-9;

gradf1a=8*a;
gradf1b=3-3*b^2;
gradf1c=0;
gradf1d=-4;
gradf1e=0;

gradf2a=1;
gradf2b=-5;
gradf2c=-3;
gradf2d=4;
gradf2e=0;

gradf3a=0.25;
gradf3b=4;
gradf3c=-4;
gradf3d=0;
gradf3e=6*e

gradf4a=3;
gradf4b=-2*b;
gradf4c=2*c;
gradf4d=-2;
gradf4e=0;

gradf5a=0;
gradf5b=4+14*b;
gradf5c=6*c-7;
gradf5d=4;
gradf5e=0;

fA=2*(f1*gradf1a+f2*gradf2a+f3*gradf3a+f4*gradf4a+f5*gradf5a);
fB=2*(f1*gradf1b+f2*gradf2b+f3*gradf3b+f4*gradf4b+f5*gradf5b);
fC=2*(f1*gradf1c+f2*gradf2c+f3*gradf3c+f4*gradf4c+f5*gradf5c);
fD=2*(f1*gradf1d+f2*gradf2d+f3*gradf3d+f4*gradf4d+f5*gradf5d);
fE=2*(f1*gradf1e+f2*gradf2e+f3*gradf3e+f4*gradf4e+f5*gradf5e);

fA=inline(fA,'a','b','c','d','e');
fB=inline(fB,'a','b','c','d','e');
fC=inline(fC,'a','b','c','d','e');
fD=inline(fD,'a','b','c','d','e');
fE=inline(fE,'a','b','c','d','e');

g=(f1*f1)+(f2*f2)+(f3*f3)+(f4*f4)+(f5*f5);
g=inline(g,'a','b','c','d','e');

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

    g1=feval(g,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    matriz_z(1)=feval(fA,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    matriz_z(2)=feval(fB,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    matriz_z(3)=feval(fC,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    matriz_z(4)=feval(fD,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    matriz_z(5)=feval(fE,aprox(1),aprox(2),aprox(3),aprox(4),aprox(5));
    
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
    g3=feval(g,var(1),var(2),var(3),var(4),var(5));
    
    while g3>g1
        
        alfa3=alfa3/2;
        var=aprox-alfa3*matriz_z;
        g3=feval(g,var(1),var(2),var(3),var(4),var(5));
        
        if tol_esp/2>alfa3
            
            disp('Minimo encontrado');
            disp(aprox);
            break;
            
        end;
        
    end;
    
    alfa2=alfa3/2;
    var=aprox-alfa2*matriz_z;
    g2=feval(g,var(1),var(2),var(3),var(4),var(5));
    h1=(g2-g1)/alfa2;
    h2=(g3-g2)/(alfa3-alfa2);
    h3=(h2-h1)/alfa3;
    alfa0=0.5*(alfa2-h1/h2);
    var=aprox-alfa0*matriz_z;
    g0=feval(g,var(1),var(2),var(3),var(4),var(5));
    matriz_g(1)=g0;
    matriz_g(2)=g1;
    matriz_g(3)=g2;
    matriz_g(4)=g3;
    [elemento,indice]=min(matriz_g);
    
    if indice==1
        
        g_esc=g0;
        alfa=alfa0;
        
    end;
    
    if indice==2
        
        g_esc=g1;
        alfa=alfa1;
        
    end;
    
    if indice==3
        
        g_esc=g2;
        alfa=alfa2;
        
    end;
    
    if indice==4
        
        g_esc=g3;
        alfa=alfa3;
        
    end;
    aprox_ant=aprox;
    aprox=aprox-alfa*matriz_z;
    tol_cal=g_esc;
    tol_cal=abs(tol_cal);
    k=k+1;
    
end
