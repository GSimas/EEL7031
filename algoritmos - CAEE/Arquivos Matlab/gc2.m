

x0=input('entre com vetor inicial: ');
A=input('entre com a matriz de coeficientes: ');
b=input('entre com o vetor de resultados: ');
n=input('maximo de iterações: ');
t=input('maxima tolerancia: ');
j=length(x0);
u=0;
r=b-A*x0;
c=0;
w=(-r);
z=A*w;
a=(r'*w)/(w'*z);
x=x0+a*w;
B=0;
i=1;
y=0;
while c==0 & i<=n
      r=r-a*z;
      u=0;
      for k=1:j
          y=r(k);
          if u<abs(y)
              u=abs(y);
          end
      end
      if u<t
          c=1;
      end
      if c==0
      B=(r'*z)/(w'*z);
      w=-r+B*w;
      z=A*w;
      a=(r'*w)/(w'*z);
      x=x+a*w;
   i=i+1;
      end
end
  x