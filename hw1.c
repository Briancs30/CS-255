#include<stdio.h>
#include <string.h>
#include <stdbool.h>
void fib(int n){
  int tmp=0,i=1,j=1,res=0; 
  if(n<=0){//prevention code
  printf("Please enter a positive int");
  }else{
    printf("1");
  }
  while(n>=2){//continue the loop until n reaches 2
  res=i+j;//add previous two numbers
  printf(", %d",j);
  tmp=i;//use temp to replace i with j and j to i+j
  i=j;
  j=tmp+j;
  n--;//decreasing n value until loop ends
  }
  printf("\n");
}

void reverse(char *s){
  int i;
  printf("%s\n", s);
  for(i=strlen(s)-1;i>=0;i--){//loop through the string
    printf("%c",s[i]);//print the char reversely with decreasing i
  }
  printf("\n");
}

void factors(long num){//find prime numbers
  int div=2;//start with first prime number
  int count=0;
  if(num<=1){
    printf("No answer");
  }
  while(num>1){//loop and find wanted prime numbers
    if(num%div==0){//check if prime number can be divided
      if(count==0){//seperate inital primte number 2 from other prime numbers for formatting
        printf("%d",div);
        count++;
      }else{
        printf(", %d",div);//print out the prime numbers
      }
      num/=div;//divided counted prime numbers
    }else{
      div++;//continue to increase number
    }
  }
  printf("\n");
}

void arithmetic(void){
  char c;
  int cal,remain;
  int f,b;//front and back of the operation
  bool x=true;
  while(x==true){//loop until gets to EOF
  printf("Operation: ");
  scanf("%d%c%d",&f,&c,&b);//scan all inputs and seperate into different variables
  if(c=='+'){//sum case
    cal=f+b;
    printf("Sum: %d\n",cal);
  }
  if(c=='-'){//difference case
    cal=f-b;
    printf("Difference: %d\n",cal);
  }
  if(c=='*'){//multiply case
    cal=f*b;
    printf("Product: %d\n",cal);
  }
  if(c=='/'){//divide case
    cal=f/b;//calculate the denominator
    remain=f%b;//caluculate the remainder
    if(f<0||b<0){//special case when nominator is negative
      cal=f/b-1;
      remain=f-cal*b;//ensure remainder to be postive
    }
    if(f<0&&b<0){//special case when both nominator and denominator are all negative
      cal=f/b+1;
      remain=f-cal*b;
    }
    printf("Quotient: %d\n",cal);
    printf("Remainder: %d\n",remain);
  }
  if((c=getchar()) == EOF){x=false;}//check EOF to end loop
  cal=0;//set dividing calculations to 0
  remain=0;//set remainder to 0
  }
}