#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main()
{
int all, dp, ds, sr, sc, z, y, i, j, M[2][2], T[2][2],  P[2][2]; 
printf ("Entre com os valores da Matriz seguindo a sequencia: a11, a12, a13, ...\n\n");
for(i=0;i<2;i++)
{
for(j=0;j<2;j++)
{
scanf("%d",&M[i][j]);
} /*fim do for*/
} /*fim do for*/
 
for(i=0; i<2; i++)
{
for(j=0; j<2; j++)
printf("\t%d", M[i][j]);
printf("\n");
}
             printf("\nInsira o numero da linha desejada para se calcular a soma dos seus termos: ");
             scanf("%d",&sr);
             if (sr==1) {
             y = M[0][0] + M[0][1];
              printf ("\n\tA soma da primeira linha eh %d\n\n", y);
              }
              else {
                   if (sr==2)
                   y = M[1][0] + M[1][1];
                   printf ("\n\tA soma da segunda linha eh %d\n\n", y);
                   }
                   
                   printf("\nInsira o numero da coluna desejada para se calcular a soma dos seus termos: ");
                   scanf("%d",&sc);
                   if (sc==1) {
             y = M[0][0] + M[1][0];
              printf ("\n\tA soma da primeira coluna eh %d\n\n", y);
              }
              else {
                   if (sc==2)
                   y = M[0][1] + M[1][1];
                   printf ("\n\tA soma da segunda coluna eh %d\n\n", y);
                   }
             dp = M[0][0] + M[1][1];
             ds = M[1][0] + M[0][1];
             all = M[0][0] + M[0][1] + M[1][0] + M[1][1];
             printf("\n\tA soma dos elementos da diagonal principal eh %d: \n\n", dp);
             printf("\n\tA soma dos elementos da diagonal secundaria eh %d: \n\n", ds);
             printf("\n\tA soma de todos os elementos da Matriz eh %d: \n\n", all);
             
  printf ("A Matriz transposta da qual voce entrou eh:\n\n"); 
                 

for(i=0; i<2; i++)
{
         
T[0][0] = M[0][0];
T[1][1] = M[1][1];
T[1][0] = M[0][1];
T[0][1] = M[1][0];  
for(j=0; j<2; j++)
printf("\t%d", T[i][j]);
printf("\n");                
}  

             printf ("\n\nO produto entre a Matriz inicial e a Transposta eh:\n\n");
             
             for(i=0; i<2; i++)
{
         
P[0][0] = (M[0][0]*T[0][0]) + (M[0][1]*T[1][0]);
P[0][1] = (M[0][0]*T[0][1]) + (M[0][1]*T[1][1]);
P[1][0] = (M[1][0]*T[0][0]) + (M[1][1]*T[1][0]);
P[1][1] = (M[1][0]*T[0][1]) + (M[1][1]*T[1][1]);


for(j=0; j<2; j++)
printf("\t%d", P[i][j]);
printf("\n");                
}        
system("pause");
}
