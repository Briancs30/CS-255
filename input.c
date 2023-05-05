#include<stdio.h>

int main(){
  //int i;
  //printf("Input Your Message: ");
  //scanf("%d",&i);
  
  //printf("i= %d\n", i);
  /*
  int month,day,year;
  printf("Enter date(dd/mm/yyyy): ");
  scanf("%d/%d/%d",&month, &day, &year);
  printf("Month: %d\n", month);
  printf("Day: %d\n", day);
  printf("Month: %d\n", year);
  
  char c= getchar();
  printf("c= %c\n",c );
  */
  char array[100];
  int i=0;
  char c;
  while((c=getchar()) != EOF){//end of file //continue add c until reaches the end
    array[i++]=c;
  }
  array[i]='\0';//string needs to end with \0
  //printf("Array= %s\n", array);// use ctrl+d to get out of the input loop
  
  putchar('\n');
  for(i=0; array[i]!='\0';i++){
    c=putchar(array[i]);
    //check if c is EOF
  }
}