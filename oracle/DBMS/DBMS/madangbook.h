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
	char name[20];  //이름
	char number[5];  //고객번호
	char address[20]; //주소
	char list[30];  //빌린책 리스트.
	int empty;    // 회원삭제 여부.1= 등록중 0= 삭제됌.
} Client;



FILE *fp;
Book *bp,*bp1;
Client *cp,*cp1;
int i,num;
char yes_no;
char tmp_number[5];

void searchall();

#endif
