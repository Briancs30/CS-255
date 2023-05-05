//THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu

#include<stdio.h>
#include<stdlib.h>
 
int size=1;
int Top=0;
int beg=0;//counter to check if pointer array is set to size
int* ptr;//global pointer to update array

void push(int);
int pop();
void free_stack();


void push(int item)//add elements into array and check if filled after adding
{
  if(beg==0){//create to the pointer if not assigned
    ptr=(int *)calloc(size,sizeof(int));
    beg++;
  }
  if(size==Top){
    ptr = realloc(ptr, 2*size*sizeof(int)); //condition to enlarge 2x the space when space full
    size*=2;
  }
  *(ptr + Top)= item;
  Top++; //increment 1 for elements inside after push
}

void resizepop(int* arr,int num){//reallocate memory following stack pop rules
  int* ptr=(int *)realloc(ptr,num/2*sizeof(int));
  size/=2;
}

int pop()//remove and return popped int and check if size should shrink by 50%
{
  int res=0;
  res=*(ptr+Top-1); //move to the pos of the pop element
  Top-=1;
  if(Top<=size/4){
		ptr = realloc(ptr, size*sizeof(int)/2); //condition to shrink 2x the space
    size/=2;
  }
  return res;
}
void free_stack()//free the pointer array
{
  free(ptr);
  size=1;
  Top=0;
  beg=0;
}