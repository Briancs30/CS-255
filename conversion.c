#include<stdlib.h>
#include<stdio.h>
//#include"funcs.h"
float square(float input){
  return input*input;
}
int main(int argc, char **argv){
  float input =atof(argv[1]);
  float output =square(input);
  printf("The square of %-10.2f is %.2f.\n",input, output);
}
