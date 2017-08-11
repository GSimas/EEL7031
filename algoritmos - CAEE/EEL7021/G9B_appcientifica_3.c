/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Aplicação científica 3
/*
/**************************************************************/

// Laboratório de Aplicação Científica 3
// Calculadora valor RMS e valor médio

/*      OBJETIVO:
        Desenvolva um programa (função) que calcula o valor RMS e o valor médio de uma forma de onda
        senoidal com harmônicas (distorcida). A função terá a seguinte forma:
        V(t) = A.sen(wt)+B.sen(2wt)+C.sen(3wt)+D.sen(5wt)
        
        O funcionamento do programa é simples. São recebidos os dados referentes a A,B,C,D e wt.
        Sâo calculadas então as integrais para para o valor RMS e para o valor médio.
        É calculada a média das funções e, no caso do valor RMS, é feita a raiz quadrada
        Finalmente os resultados são exibidos na tela.
        O programa então é finalizado.
        
        Obs1: Ambas as integrais são calculadas usando como base a definição de Soma de Riemann usando 45760 pontos
              de amostragem.
        
*/  

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define pi 3.1415926535897932384626433832795      

main()  {
        
        float A,B,C,D, wt; 
        float valorarm1 = 0,valorarm2 = 0, valor1,valor2,k;
        int i;
        char s1[]={"------------------------------"};
        printf("%s","cALCULO Do valor medio e o valor RMS\nde uma onde senoidal (distorcida).\n\n");
        //Esta parte recebe os valores do usuario
        puts(s1);
        puts("Entre com A,B,C,D e com a frequencia do fundamental (wt)");
        printf("A=");
        scanf("%f",&A);
        printf("B=");
        scanf("%f",&B);
        printf("C=");
        scanf("%f",&C);
        printf("D=");
        scanf("%f",&D);
        printf("wt=");
        scanf("%f",&wt);
        
        system("cls");
        
        //Esta parte calcula a integral para RMS
        for(i=0;i<=45760;i++)
        {
        k = wt*i*180/(256*pi);
        valor1 = (pow(A*sin(k) + B*sin(2*k) + C*sin(3*k) + D*sin(5*k),2)*(pi/45760));  
        valorarm1 = valorarm1 + valor1;                                                   
        }
        
        //Esta parte calcula a integral para o valor médio
        for(i=0;i<=45760;i++)
        {
        k = wt*i*180/256*pi;
        valor2 =(A*sin(k) + B*sin(2*k) + C*sin(3*k) + D*sin(5*k))*(pi/45760);  
        valorarm2 = valorarm2 + valor2;                                                  
        }
        puts(s1);
        printf("O valor medio da forma de onda eh %.2f\n\n",valorarm2/pi);
        puts(s1);
        puts("\n");
        puts(s1);
        printf("O valor RMS da forma de onda eh %f\n\n",sqrt(valorarm1/pi));
        puts(s1);
        puts("\n\n\n");
        puts("O programa foi finalizado");
        
        system("Pause");
        }
        
