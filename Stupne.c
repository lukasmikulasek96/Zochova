#include <stdio.h>


int main(){
    float Farenheit, Celzia;


    scanf("%f",&Farenheit);

    Celzia = 5/9*(Farenheit-32);

    printf("%f Fahrenheita je %f Celsiuz\n",Farenheit,Celzia);

    return 0;

}