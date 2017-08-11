#include <stdio.h>
#include <stdlib.h>

main ()
{
float Ra, Rb, Rc, RAB, RCA, RBC;
int e;

while (e!=1)
{
printf("Insira os valores dos resistores comecando pela esquerda do delta e seguindo pelo sentido anti-horario: \n");

scanf("%f %f %f", &RAB, &RBC, &RCA);

Ra = (RAB*RCA) / (RAB + RBC + RCA);
Rb = (RAB*RBC) / (RAB + RBC + RCA);
Rc = (RBC*RCA) / (RAB + RBC + RCA);

printf("%f %f %f\n", Ra, Rb, Rc);
scanf("%d", &e);
system("cls");
}


system("pause");
} 
