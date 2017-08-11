/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vin�cius Bernardi		Matricula:11100737
/*         Aplica��o cient�fica 2
/*		   Exerc�cio 1

/**************************************************************/
// conversor triangulo -- estrela e estrela -- triangulo

/* Este c�digo tem por fun��o fazer as convers�es Triangulo--Estrela, Estrela_Triangulo  usadas para o calculo da resist�ncia
   equivalente em circuitos el�tricos. A ideia b�sica do c�digo � receber tr�s valores de resistencia armazenando-os em um
   vetor. Declara-se ent�o um ponteiro para o primeiro endere�o deste vetor e a partir de ent�o s� � utilizado os endere�os 
   durante o restante do programa. Foram criadas duas fun��es principais "float* estrela_triangulo (float*) e 
   float* triangulo_estrela (float*)" para fazer a convers�o de acordo com os vetores fornecidos pelo usu�rio. Outras duas
   fun��es auxiliares "void   imprime_opcao(float*) e void imprime_resultado (float*)"  foram criadas, cujo objetivo � 
   apenas diminuir o c�digo da fun��o main. O vetor recebe os valores usando uma fun��o scanf, atribui-se o endere�o do primeiro
   elemento do vetor ao ponteiro *k. Um case define para onde k ser� mandado (qual das convers�es). As fun��es realizam as 
   opera��es e retornam (usando novamente k) os resultados. No fim de cada sequencia de convers�o k recebe novamente o endere�o
   do primeiro elemento do vetor de armazenamento. Pressionando "0" quando mostrada as op��es o programa � finalizado. 
   
   Obs: Durante o switch, caso sej� precionado uma letra e n�o um n�mero o programa trava.*/



# include <stdio.h>
# include <stdlib.h>


float* estrela_triangulo (float*);
float* triangulo_estrela (float*);
void   imprime_opcao     (float*);
void   imprime_resultado (float*);


main()  {
                 
        int i,escolha=100;   // i: usado nos comandos for.  escolha: usado no case
        float arrayarm[3],*k; // arrayarm[3]: armazena os tr�s valores de resistencia fornecidos pelo usu�rio
                              // *k: ponteiro que ser� apontado para arrayarm[0]
        char s1[]={"------------------------------"}; // Usado para apresenta��o do programa
        
        
  puts(s1);      
  puts("Entre com as resistencias R1, R2, R3 (Em oms)");
  for(i=0;i<=2;i++)
  {
     printf("R%d = ",i+1);
     scanf("%f",&arrayarm[i]); 
  }
  
  // atribui��o a k do endere�o do arrayarm[0], primeiro elemento do arrayarm
  k = &arrayarm[0];
  
  while (escolha != 101) // condi��o arbitraria para que quando selecionado "0" o while n�o seja executado
  {
  imprime_opcao(k);
  scanf("%d",&escolha);
  
  switch(escolha)
  {
     case 1:
          k = estrela_triangulo(k);
          break;
     case 2:
          k = triangulo_estrela(k);
          break;
     case 0:
          puts("O programa foi finalizado");
          escolha = 101; // atribui a escolha um o valor que finaliza o comando while
          break;
     default:
          escolha = 100; // Faz com que a fun��o imprime_resultado n�o seja executada
          break;
  }
  if (escolha!=101 && escolha!=100) // condi��es para que o resultado n�o seja executado
  {
  imprime_resultado(k);
  k = &arrayarm[0]; // Parte fundamental do c�digo. Como k teve seu valor mudado � necessario que ele volte a apontar para
  }                 // arrayarm[0], caso contrario � operado com os resultados obtidos anteriormente.
  }
  
  system("pause");
}


 // Fun��es
 
 
 //conversao Estrela--Triangulo 
 float * estrela_triangulo(float *k)
 {
       float *work;
       float static arm_et[3];   // A escolha de declarar o vetor como static tem como fundamento o fato de que quando
                                 // a fun��o � finalizada os valores s�o perdidos. Declarando o vetor static isso n�o ocorre.
  arm_et[0] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *k;
  arm_et[1] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *(k+1);
  arm_et[2] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *(k+2);
 
 puts("Conversao Estrela--Triangulo");
 work = &arm_et[0];  // retorna o endere�o do vetor que (por ser static) permanece tendo os valores calculados
 return(work);
 }
 
 //Conversao Triangulo--Estrela
 
 float * triangulo_estrela(float *k)
 {
       float *work;
       float static arm_te[3]; // A escolha de declarar o vetor como static tem como fundamento o fato de que quando
                               // a fun��o � finalizada os valores s�o perdidos. Declarando o vetor static isso n�o ocorre.  
       
  arm_te[0] = (*(k+1) * *(k+2))/ (*k + *(k+1) + *(k+2));
  arm_te[1] = (*(k)   * *(k+2))/ (*k + *(k+1) + *(k+2));
  arm_te[2] = (*(k)   * *(k+1))/ (*k + *(k+1) + *(k+2));
  
  puts("Conversao Triangulo--Estrela");
  work = &arm_te[0]; // retorna o endere�o do vetor que (por ser static) permanece tendo os valores calculados
  return(work);
 }
  
 //Imprime algumas op��es dadas durante o c�digo proncipal
  
 void imprime_opcao(float*k)
 {
  char s1[]={"------------------------------"};
  
  system("cls");
  puts(s1);
  printf("->R1= %f\n->R2= %f\n->R3= %f\n",*k,*(k+1),*(k+2));  
  puts(s1); puts("\n\n");
  puts(s1);
  
  puts("Tecle (1) para conversao estrela--triangulo");
  puts("Tecle (2) para conversao triangulo--estrela");
  puts("Tecle (0) para finalizar");
 
 }
  
//Imprime Resultado

 void imprime_resultado(float*k)
 {
  char s1[]={"------------------------------"}; 
  int i;
  
  system("cls");
  puts(s1);
  puts("As resistencias convertidas valem");
  for(i=0;i<=2;i++)
  printf("R%d = %f\n",i,*(k+i));
  system("pause");
 }
