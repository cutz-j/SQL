#ifndef _u_book_h
#define _u_book_h

typedef struct
{
	char b_number[5];
	char b_name[20];
	char publisher[20];
	char price[5];
	int b_empty;
} Book;

typedef struct
{
	char name[20];  //�̸�
	char number[5];  //����ȣ
	char address[20]; //�ּ�
	char list[30];  //����å ����Ʈ.
	int empty;    // ȸ������ ����.1= ����� 0= ������.
} Client;



FILE *fp;
Book *bp,*bp1;
Client *cp,*cp1;
int i,num;
char yes_no;
char tmp_number[5];

void searchall();

#endif
