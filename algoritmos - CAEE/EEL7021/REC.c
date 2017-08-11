/*REC*/
# include <stdio.h>
main ()
{
     float S, N, A, R;
     int x; 
     while (x!=1)
     {
     printf("\t\t-- C%clculo da nota na REC --\n\n", 160);
     printf("------------------------\n\n");
     printf("Entre com sua nota final j%c arredondada:\n\n", 160);
     scanf("%f", &A);
     while (A>10 || A<0)
     {
     printf("\tDigite uma nota de 0 a 10!\n\n");
     printf("Entre com sua nota final:\n\n");
     scanf("%f", &A);
     }
     R=(11.5 - A);
     if(A>=5.75) printf("\nAprovado!\n\n");
     else if (A<3) printf("\nReprovado!\n\n");
     else
     {
     printf("\nREC\n\n");
     printf("Sua menor nota na prova da REC %c: ", 130);
     printf("%.2f\n\n", R);
     }
     
     printf("------------------------\n\n");
     printf("Voc%c deseja sair do programa? (Digite 1 para sim ou 0 para n%co): ", 136, 198);
     scanf("%d", &x);
     system("cls");
     }
         
     return (0);
     }

