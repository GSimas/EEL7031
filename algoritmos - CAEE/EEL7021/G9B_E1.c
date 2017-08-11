/* Par ou impar? */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 1
/**************************************************************/

#include <stdio.h>
#include <stdlib.h>

main(){
       int a;
       printf("-------------------------------- Par ou impar? ---------------------------------\n");       
       printf("Digite o numero: ");
       scanf("%d",&a);
       
       if(a%2==0)  // todo numero dividido por dois cujo resto é zero eh par
           printf("->O numero digitado eh par\n");  
       else                                        // trata do caso "não par";
           printf("->O numero digitado eh impar\n");

       printf("\n");
       system("pause");
}

       
