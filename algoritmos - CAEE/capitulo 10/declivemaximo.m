syms 'x'
syms 'y'
syms 'z'

f1=@(x,y,z) 3*x-cos(y*z)-0.5;
f2=@(x,y,z) x.^2-81*(y+0.1).^2+sin(z)+1.06;
f3=@(x,y,z) exp(-x*y)+20*z+(10*pi-3)/3;
func_g=@(x,y,z) (((x.*3.0-cos(y.*z)-1.0./2.0)*(x.*3.0-cos(y.*z)-1.0./2.0))+((sin(z)-(y+1.0./1.0e1).^2.*8.1e1+x.^2+5.3e1./5.0e1)*(sin(z)-(y+1.0./1.0e1).^2.*8.1e1+x.^2+5.3e1./5.0e1)))+((z.*2.0e1+exp(-x.*y)+5.332248173269055e15./5.62949953421312e14)*(z.*2.0e1+exp(-x.*y)+5.332248173269055e15./5.62949953421312e14))

g=simplify(g);

disp('Entre com o numéro n de variaveis');
num_var=input('');
disp('Entre com a aproximação x0');
ap_atual=input('');
ap_atual=ap_atual';
disp('Tolerancia');
tol_esp=input('');
disp('Numero máximo de iterações');
N=input('');

k=1;

while k<N
    
    g1=g(ap_atual(1),ap_atual(2),ap_atual(3));
    [grad_g_x,grad_g_y,grad_g_z]=gradient(func_g)
end;