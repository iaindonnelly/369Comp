#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>

int main(void) {


	char Buffer[8193];
	FILE *FP;
	FP = fopen("SAD_testcase_trail_2017.txt","r");
	for (int i = 0; i < 8192; i = i + 2){

		char bung[3];

		fscanf(FP, " %s", bung);
		Buffer[i] = bung[0];
		Buffer[i+1] = bung[1];
	
	}
	fclose(FP);
	FILE *FP1; FILE *FP2; FILE *FP3; FILE *FP4; FILE *FP5; FILE *FP6; FILE *FP7; FILE *FP8;
	FILE *FP9; FILE *FP10; FILE *FP11; FILE *FP12; FILE *FP13; FILE *FP14; FILE *FP15; FILE *FP16;
	FP1 = fopen("DM1.txt", "w"); FP2 = fopen("DM2.txt", "w"); FP3 = fopen("DM3.txt", "w"); FP4 = fopen("DM4.txt", "w");
	FP5 = fopen("DM5.txt", "w"); FP6 = fopen("DM6.txt", "w"); FP7 = fopen("DM7.txt", "w"); FP8 = fopen("DM8.txt", "w");
	FP9 = fopen("DM9.txt", "w"); FP10 = fopen("DM10.txt", "w"); FP11 = fopen("DM11.txt", "w"); FP12 = fopen("DM12.txt", "w");
	FP13 = fopen("DM13.txt", "w"); FP14 = fopen("DM14.txt", "w"); FP15 = fopen("DM15.txt", "w"); FP16 = fopen("DM16.txt", "w");
	for (int i = 0; i < 8192; i  = i +2) //testing
	{
		if ((i >> 1) % 16 == 0) {
			fprintf(FP1, "%c%c\n",Buffer[i],Buffer[i + 1]);
		}
		else if ((i >> 1) % 16 == 1) {
			fprintf(FP2, "%c%c\n", Buffer[i], Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 2) {
			fprintf(FP3, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 3) {
			fprintf(FP4, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 4) {
			fprintf(FP5, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 5) {
			fprintf(FP6, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 6) {
			fprintf(FP7, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 7) {
			fprintf(FP8, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 8) {
			fprintf(FP9, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 9) {
			fprintf(FP10, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 10) {
			fprintf(FP11, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 11) {
			fprintf(FP12, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 12) {
			fprintf(FP13, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 13) {
			fprintf(FP14, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 14) {
			fprintf(FP15, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
		else if ((i >> 1) % 16 == 15) {
			fprintf(FP16, "%c%c\n", Buffer[i] , Buffer[i+1]);
		}
	}
	fclose(FP1); fclose(FP2); fclose(FP3); fclose(FP4); fclose(FP5); fclose(FP6); fclose(FP7); fclose(FP8);
	fclose(FP9); fclose(FP10); fclose(FP11); fclose(FP12); fclose(FP13); fclose(FP14); fclose(FP15); fclose(FP16);
	
	return 0;
}
