/* Programa para identificar numeros pares e impares */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Julio Boing Neto        Matricula:1110715
/*         Edilberto Costa Neto     Matricula:11103504
/*         LAB_03
/*         Exercicio 7
/**************************************************************/




#include <stdio.h>
#include <stdlib.h>
main()

{
      int x, y;
      printf("Insira um numero inteiro\n");
      scanf ("%d", &x);
      y=x%2;
      if (y==0)
      printf ("O numero %d eh par\n", x);
      else
      printf ("O numero %d eh impar\n", x);
      system("PAUSE");
      }
