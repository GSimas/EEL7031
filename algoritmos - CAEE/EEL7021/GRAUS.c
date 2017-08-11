#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float conversor (float);
float c;
int y;
main()
{
      float va, d, b, w;
      int e, x;
      while (e!=1)
      {
      printf("\t\t-- Conversor de Temperatura --\n\n");
      printf("------------------------\n\n");
      printf ("Primeiro, digite o valor da temperatura: ");
      scanf ("%f", &va);
      printf ("\nEscolha a unidade da temperatura acima:\n\n");
      printf (" 0 -> Celsius\n");
      printf (" 1 -> Fahrenheit\n");
      printf (" 2 -> Kelvin\n");
      printf (" 3 -> Rankine\n");
      printf (" 4 -> R%camur\n", 130);
printf ("\nDigite o numero referente a sua escolha: ");
scanf ("%d", &x);
switch (x)
  {
  case 0:
  c=va;
  break;
  
  case 1:
  c=(5*(va-32))/9;
  break;
  
  case 2:
  c=va - 273;
  break;
  
  case 3:
  c = 5*(va - 491.67)/9;
  break;
  
  case 4:
  c = (5*va)/4;
  break;

} 
      w=conversor(c);
      
printf ("\n\tO resultado da conversao %c: %.2f ", 130, w);
switch (y)
  {
  case 0:
  printf ("%c%s\n\n", 248, "C");
  break;
  
  case 1:
  printf ("%c%s\n\n", 248, "F");
  break;
  
  case 2:
  printf ("%s\n\n", "K");
  break;
  
  case 3:
  printf ("%s\n\n", "Ra");
  break;
  
  case 4:
  printf ("%c%s\n\n", 248, "R");
  break;

} 


 printf("Voc%c deseja sair do programa? (Digite 1 para sim ou 0 para n%co): ", 136, 198);
     scanf("%d", &e);
     system("cls");
     }
         
     return (0);
     }


float conversor (float c)
{
      float d;
printf (" \nE escolha a nova unidade de temperatura para a conversao:\n\n"); 
      printf (" 0 -> Celsius\n");
      printf (" 1 -> Fahrenheit\n");
      printf (" 2 -> Kelvin\n");
      printf (" 3 -> Rankine\n");
      printf (" 4 -> Reamur\n");
printf ("\nDigite o numero referente a sua escolha: ");
scanf ("%d", &y);

switch (y)
  {
  case 0:
  d=c;
  break;
  
  case 1:
  d=(9*c)/5 + 32;
  break;
  
  case 2:
  d=c + 273;
  break;
  
  case 3:
  d = (c * 9/5) + 491.67;
  break;
  
  case 4:
  d=(4*c)/5;
  break;

} 

return d;
}
