//   resolução de sistemas lineares

#include <stdio.h>
#include <stdlib.h>


main(){
       
float array [3][4],a,p;
float x,y,z;
int i,j;

printf("digite os coeficientes das equações com suas respectivas soluções que você deseja que seja resolvida\n");

for(i=0; i<=2; i++)
   for (j=0; j<=3; j++)
       {
       scanf ("%f",&a);
       array[i][j] = a;
       }
printf(" a matriz de entrada eh:\n");

for(i=0; i<=2; i++)
   {
   for (j=0; j<=3; j++)
   printf("%f\t", array[i][j]);

   printf("\n");
   }

// Nesta parte começa o escalonamento da matrz
p = (float) array[1][0]/array[0][0];

for(j=0;j<=3;j++)
   array[1][j] =(float) array[1][j] - p*array[0][j];   

//****

p = (float) array[2][0]/array[0][0];

for(j=0;j<=3;j++)
   array[2][j] =(float) array[2][j] - p*array[0][j];
   
//***

p = (float) array[2][1]/array[1][1];

for(j=0;j<=3;j++)
   array[2][j] =(float) array[2][j] - p*array[1][j];

//***

printf("a matriz escalonada eh:\n\n");

for(i=0; i<=2; i++)
   {
   for (j=0; j<=3; j++)
   printf("%f\t", array[i][j]);

   printf("\n");
   }
        
printf("\n\n");
//***

z = (float)  array[2][3]/array[2][2];
y = (float)  (array[1][3] - z*array[1][2])/array[1][1];
x = (float)  (array[0][3]-z*array[0][2]-y*array[0][1])/array[0][0];

printf("o valor de x eh:%f\no valor de y eh:%f\no valor de z eh:%f \n",x,y,z); 





//***************************************************

system("pause");


}
