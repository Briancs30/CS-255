//THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
#include<stdio.h>
#include<stdlib.h>

int size=0;

typedef struct node//define the structure of linkedlist using typedef struct
{
    int data; 
    struct node* next; 
}Node;

Node* Top=NULL;

void push(int item)//add node to push in values
{
  Node* newNode=malloc(sizeof(Node));
  newNode->data=item;
  newNode->next=Top;
  Top=newNode;
  size++;
}

int pop()//return removed value after poping out the number, reassign the pointing through creating temperary node; free tmp node afterwards
{
  Node* tmp=Top;
  int res=tmp->data;
  Top=Top->next;
  free(tmp);
  size--;
  return res;
}

void free_stack(){//free the Top node pointer
  while(size!=0){
    pop();
  }
  Top=NULL;
}