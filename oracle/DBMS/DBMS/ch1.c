#include <stdio.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <stdlib.h> 
#include "madangbook.h"
#include <CType.h>`

int main()
{
	int num_ret;
	//DBMS ����//
	EXEC SQL CONNECT : username IDENTIFIED BY : password;
	EXEC SQL DECLARE c1 CURSOR FOR
		SELECT bookname, publisher, price FROM BOOK;
	EXEC SQL OPEN c1;



}

void searchall() /* uchang */
{
	/* clrscr();  */
//system("clear");
//system("cls");
	fflush(stdin);
	fp = fopen("madangbook.dat", "rb");
	bp = (Book *)calloc(1, sizeof(Book));
	printf("\n\n");
	printf("-------------------------------------------------------------\n");
	printf("                           ������� \n");
	printf("-------------------------------------------------------------\n");
	printf("������ȣ :        ����        :        ���ǻ�      :  ���� \n");
	printf("-------------------------------------------------------------\n");
	while (fread(bp, sizeof(Book), 1, fp) != 0) {
		if (bp->b_empty != 0) {
			printf("%9s:", bp->b_number);
			printf("%20s:", bp->b_name);
			printf("%20s:", bp->publisher);
			printf(" %5s\n", bp->price);
		}
	}
	printf("-------------------------------------------------------------\n");
	getchar();
}