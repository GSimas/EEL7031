/* Programa para verificar a multiplicidade entre os termos */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Julio Boing Neto        Matricula:11100715
/*         Edilberto Costa Neto    Matricula:11103504
/*         LAB_03
/*         Exercico 8
/**************************************************************/




#include <stdio.h>
#include <stdlib.h>

main()

{
      int c, x, y;
      printf("Insira o primeiro inteiro\n");
      scanf ("%d", &x);
      printf("Insira o segundo inteiro\n");
      scanf ("%d", &y);
      c=x%y;
      if (c==0)
      printf("%d e %d Sao multiplos\n", x,y);
      else
      printf("%d e %d Nao sao multiplos\n", x,y);
      system("PAUSE");
      
      }
