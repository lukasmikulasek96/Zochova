#include<stdio.h>
#include<math.h>

//Konstanty PI = 3.14 Palectocm je prevod z palca na metre a cmtokm je prevod z cm na km
#define PI 3.14
#define Palectocm 2.54
#define cmtokm 100000
//Vlastna funkcia
float obvodKruhu(float priemer) {
	float vysledok;
	
	vysledok = PI * (priemer * Palectocm);

	return vysledok;
}


int main() {
	float priemerKolesa, dlzkaTrasy, obvodKolesa, pocetOtacok;

	printf("Zadajte priemer kolesa: ");
	scanf("%f", &priemerKolesa);

	printf("Zadajte vzdialenost v km: ");
	scanf("%f", &dlzkaTrasy);
	
	obvodKolesa = obvodKruhu(priemerKolesa);

	pocetOtacok = dlzkaTrasy / (obvodKolesa / cmtokm);

	printf("Koleso sa na ceste otoci %f krat.", pocetOtacok);

	return 0;
}