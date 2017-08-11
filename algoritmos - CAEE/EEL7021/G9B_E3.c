/* Programa para gerar a série de Fibonnaci */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9B
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 3
/**************************************************************/

#include <stdlib.h>
#include <stdio.h>

main() {
	int input_Terms;
	double n, n1 = 0, n2 = 1, mult;
	printf("------------------------- Gerador da serie de Fibonnaci ------------------------ \n");
	printf("Quantos termos deseja gerar? ");
	scanf("%d",&input_Terms);
	
	printf("\n->Termos gerados: ");
	switch(input_Terms) {
		case 0:
         printf("Nenhum"); break;
    case 1:
			printf("0"); break;
		case 2:
			printf("0, 1"); break;
		default:
			printf("0, 1, ");
			for(mult = 2; mult<input_Terms; mult++) {
				n = n1 + n2;
				n1 = n2;
				n2 = n;
				if(mult == input_Terms-1) printf("%.0f",n);
				else printf("%.0f, ",n);
			}
     //printf("\n %.0f",n); // Comando para mostrar apenas o termo desejado
	}
	printf("\n\n");
	system("pause");
}
