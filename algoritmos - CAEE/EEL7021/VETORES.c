/* Operações Vetoriais */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Edilberto Costa Neto     Matricula:11103504
/*         Julio Boing Neto         Matricula:11100715
/*  Laboratório de Aplicações Científicas
/**************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define k 2 


float u, w;
float r, s;

main()
{
float vet1[k]={}; 
float vet2[k]={}; 
float vetSoma[k]; 
float vetDif[k]; 
int end, e, e2, x, j;
float f1, f2, z1, q1, g1, z2, q2, g2, vetopx, vetopy;


printf("\t\t-- Opera%c%ces Vetoriais --\n\n", 135, 228);
printf("------------------------\n\n");


      printf ("Primeiro, escolha qual o tipo de coordenada: \n\n");
       
      printf (" 0 -> Retangular\n");
      printf (" 1 -> Polar\n");
      
      printf ("\nDigite o n%cmero referente a sua escolha: ", 163);
      scanf ("%d", &e);

while (e!=0 && e!=1) /*Loop enquanto usuário não entra com valor 0 ou 1*/
{
      printf ("\nATEN%c%cO: escolha umas das opc%ces acima: ", 128, 199, 228);
      scanf ("%d", &e);
}

system("cls"); /*Limpa a tela*/


switch (e) /*Realiza conversões das coordenas para retangular e polar, independente da entrada*/
{
       case 0:
       printf("\n\nVoc%c escolheu: Retangular\n\n", 136); 
       printf("Ent%co entre com os valores de a e b para o primeiro vetor\n", 198);
       printf("y=ax + b\n\n");  
       for (j=0; j<=k-1; j++) /*Grava a primeira coordenada*/
       scanf ("%f", &vet1[j]);
       printf("\n");
    
       printf("Agora entre com os valores de a e b para o segundo vetor\n");
       printf("y=ax + b\n\n"); 
       for (j=0; j<=k-1; j++) /*Grava a segunda coordenada*/
       scanf("%f", &vet2[j]);
       printf("\n");
     
/*Atribui os valroes a variáves no caso de ser retangular...*/
     u=vet1[0];
     w=vet1[1];
    
     r=vet2[0];
     s=vet2[1];
    
/*...e converte para polar, atribuindo a novas variáveis para serem usadas nas operações*/
     z1=sqrt(pow(u,2)+pow(w,2));
     q1 = atan(w/u); 
     g1 = (q1*180)/3.1415;
     
     z2=sqrt(pow(r,2)+pow(s,2));
     q2 = atan(s/r); 
     g2 = (q2*180)/3.1415;
     

       break; /*Quando o usuário escolhe a opção de coordenada Polar*/
       case 1:
       printf("\n\nVoc%c escolheu: Polar", 136); 
       printf("\n");
       
       printf("Ent%co entre com os valores de |a| e b para o primeiro vetor\n", 198);
       printf("z=|a|x + b\n\n");  
       for (j=0; j<=k-1; j++)
       scanf ("%f", &vet1[j]);
       printf("\n");
       
       printf("Agora entre com os valores de |a| e b para o segundo vetor\n");
       printf("z=|a|x + b\n\n");  
       for (j=0; j<=k-1; j++)
       scanf("%f", &vet2[j]);
     
/*Mesmo raciocínio*/     
     z1=vet1[0];
     g1=vet1[1];

/*A diferença é essa pequena conversão da entrada da coordenada 
(que é em radianos) para graus (para posteriormente usar no seno e cosseno*/
     f1=(g1*3.1415)/180; 
     z2=vet2[0];
     g2=vet2[1];
     f2=(g2*3.1415)/180;
    
/*Converte ambos os vetores para retangular, para ser usado nas operações posteriormente*/    
     u=z1*cos(f1);
     w=z1*sin(f1);
     
     r=z2*cos(f2);
     s=z2*sin(f2);
      
     printf("\n");
     break;
     }

system("cls");

while (end!=0) /*Loop para usuário poder realizar todas as operações sem precisar sair do programa*/
     {
            
printf("------------------------\n\n");
/*Impressão dos vetores*/
if (e==0)
{
             printf("O primeiro vetor V %c: y = %.2fx %.2f\n", 130, u, w); 
             printf("\nO segundo vetor W %c: y = %.2fx %.2f\n", 130, r, s); 
             }
             else
             {
              printf("O primeiro vetor V %c: y = %.2fx %.2f\n", 130, z1, g1); 
             printf("\nO segundo vetor W %c: y = %.2fx %.2f\n", 130, z2, g2);    
             }
/*Fim da impressõa e início das operações*/
printf("\nEscolha uma das operac%ces desejadas: \n\n", 228);
 
printf (" 0 -> Adi%c%co (V+W)\n", 135, 198);
printf (" 1 -> Subtra%c%co (V-W)\n", 135, 198); 
printf (" 2 -> Multiplica%c%co (VxW)\n", 135, 198); 
printf (" 3 -> Divis%co (V/W)\n", 198); 
printf (" 4 -> Divis%co (W/V)\n", 198); 
printf ("\nDigite o n%cmero referente a sua escolha: ", 163);
scanf("%d", &e2);


switch (e2)
{

           case 0: /*Adição*/
printf("\n\nV + W = (");

              if (e==0) /*Retorna a escolha do usuário ser retangular*/
              {
                  for(x=0; x<2; x++)
                  {
                  vetSoma[x]=vet1[x]+vet2[x]; 
                  printf(" %.2f ", vetSoma[x]);
                  }
              }
              else /*Pois, caso for polar, a operação é realizada com as coordenas convertidas*/
              {
                  vetopx=u+r; 
                  vetopy=w+s;
                  printf(" %.2f %.2f ", vetopx, vetopy);
              }
printf(")\n");
printf("Obs: A coordenada %c Retangular.", 130);
break;


             case 1: /*Subtração*/
printf("\n\nV - W = (");
              if (e==0) /*Segue mesmo raciocínio*/
              {
                 for(x=0; x<2; x++)
                 {
                 vetDif[x]=vet1[x]-vet2[x]; 
                 printf(" %.2f ", vetDif[x]);
                 }
              }
              else
              {
                  vetopx=u-r; 
                  vetopy=w-s;
                  printf(" %.2f %.2f ", vetopx, vetopy);
              }
printf(")\n");
printf("Obs: A coordenada %c Retangular.", 130);
break;


             case 2: /*Multiplicação*/
/*Usa sempre coordenas polares*/
     vetopx=z1*z2; /*Multiplica-se as partes reais...*/
     vetopy=g1+g2; /*...e soma-se as imaginárias*/

  printf("\n\nV x W = ");
  printf("( %.2f\t %.2f )", vetopx, vetopy);
  printf("\nObs: A coordenada %c Polar.", 130);
break;


                 case 3: /*Divisão V/W*/
     /*Mesma lógica*/
     vetopx=z1/z2; 
     vetopy=g1-g2;
     
  printf("\n\nV / W = ");
  printf("( %.2f\t %.2f )", vetopx, vetopy);
  printf("\nObs: A coordenada %c Polar.", 130);
  break;    



            case 4: /*Divisão W/V*/
     
     vetopx=z2/z1; 
     vetopy=g2-g1;
  printf("\n\nW / V = ");
  printf("( %.2f\t %.2f )", vetopx, vetopy);
  printf("\nObs: A coordenada %c Polar.", 130);
  break;      

}/*Fim das operações*/      
        
     
     printf("\n\nVoc%c deseja continuar a efetuar as operac%ces? ", 136, 228); 
     printf("\n(Digite 1 para Sim ou 0 para N%co): ", 198);
     scanf("%d", &end); /*O que garante o loop*/
     system("cls");

}
return (0);
} 
