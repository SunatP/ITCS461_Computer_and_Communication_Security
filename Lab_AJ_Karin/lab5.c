#include <stdio.h>
#include <string.h>

void temp() {
	/* nothing here */
}

void secret_function(){
	printf("************************************************************\n");
	printf("  Congratulation!! You have access to the secret function.\n");
	printf("************************************************************\n");
}

int main(void){
	int a=0x11223344;
	int b=0x55667788;
	char name[200];

	/* print address & value of all variables */	
	printf("------------------------BEFORE------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");
	
	/* getting a string and print it out */
	printf("ITCS461: Computer and Communication Security Lab 5\n");
	printf("Enter your name: ");
	scanf("%s", name);
	printf("Hello ... %s\n", name);
	printf("Your name's length = %d\n", strlen(name));
	
	/* check if the user is allowed */
	if(a == 0xDEADC0DE) {
		printf("\nCongratulations! You are logged in.\n\n");	
	} else {
		printf("\nSorry, You are not allowed here.\n\n");
	}

	/* print address & value of all variables */
	printf("------------------------AFTER------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");
	
	return 0;
}
