/* Consumo de Energia */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Edilberto Costa Neto     Matricula:11103504
/*         Julio Boing Neto         Matricula:11100715
/*  Laboratório de Aplicações Científicas 2
/**************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

main ()
{

int e, x, quantidade;
float potencia;
char descricao[40];


      for (x=29;x>0;--x)
      {
      while (e!=0)
{
struct equipamento { char descricao[40]; 
                     int quantidade; 
                     float potencia; 
                     float horas; 
                     int dias; 
                     float consumo;}; 

     printf("\t\t-- Consumo Residencial --\n\n");
printf("------------------------\n\n");
     
     printf("Qual o aparelho? R: ");  scanf ("%s", &descricao);
     printf("Qual a quantidade? R: ");  scanf ("%s", &quantidade);
     printf("Qual a potencia? R: ");  scanf ("%s", &potencia);
     
     printf("\n\nVoc%c deseja continuar a inserir equipamentos? ", 136); 
      printf("\n(Voc%c ainda pode inserir %d equipamento(s))", 136, x); 
     printf("\n(Digite 1 para Sim ou 0 para N%co): ", 198);
     scanf("%d", &e); 
     system("cls");
}          
}                     
                     
return 0;                   
}
