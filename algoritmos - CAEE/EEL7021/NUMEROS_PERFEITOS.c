/* Programa dos números perfeitos.*/

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Edilberto Costa Neto     Matricula:11103504
/*         Julio Boing Neto         Matricula:11100715
/**************************************************************/

#include <stdio.h>
#include <stdlib.h>


main()
{
      int i, entra, soma, contn = 0, cont = 0;
      printf("Entre com a quantidade de numeros perfeitos: ");
      scanf("%d", &entra);
      
      for(i=1; entra != contn; i++)
      {  
         soma = 0;
         for(cont = i; cont != 0; cont --)
         {
            
            if((i%cont) == 0 && (i != cont) && (cont != 0))
            {
               soma+= cont;
            }
         }
        
         if ((soma==i) && (soma != 1) && (soma !=0))
         {
             contn++;
             printf("%d - %d\n", contn, soma);
         }
      }
      system("pause");
}
