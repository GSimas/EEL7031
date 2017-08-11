/* Números perfeitos */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9B
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 4
/**************************************************************/

#include <stdlib.h>
#include <stdio.h>

main() {
	unsigned long int input_Qnt,a=5,b,aux=1,soma=0;
	printf("------------------------ Gerador de numeros perfeitos  ------------------------- \n");
	printf("Quantos numeros perfeitos voce deseja? ");
	scanf("%d",&input_Qnt);
  printf("->Numero perfeitos: \n");
	while(input_Qnt>0) {
		soma = 0;
		for(b=1;b<=a/2;b++) { //Inicia loop para encontrar divisores
			if(a%b == 0) {soma=soma+b; /*printf("divisor detectado: %d \n",b);*/ } //Se o resto for 0 então soma "soma" à "b"
		}
		if(a == soma) { printf("-->%d \n",a); input_Qnt--;} 
    //else printf("nao-perfeito: %d \n",a); //Imprime números não perfeitos
		a++;
	}
	printf("\n");
	system("pause");
}
