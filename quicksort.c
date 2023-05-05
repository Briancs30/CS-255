//THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
#include<stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void swap(int *a,int *b){
  int temp=*a;
  *a=*b;
  *b=temp;
}

int Partition(int *arr,int p,int r){//partition in the array
  int piv=*(arr+p);
  int beg=p;//set beginnning number
  int end=r;//set endinging number
  bool check=false;//check stop in while loop
  while(!check){
    while(*(arr+beg)<=piv){//loop check left side until reaches the end
      if(beg==r){
        check=true;
      }
      beg+=1;
    }
    while(*(arr+end)>piv){//loop check right side until reaches pivot
      if(end==p){
        check=true;
      }
      end-=1;
    }
    if(beg<end){//continues to swap beg and end position until left iteration cross right iteration
      swap(arr+beg ,arr+end);
    }else{
      check=true;//end while loop
    }
  }
  swap(arr+p,arr+end);//swap the pivot with ending pos
  return end;
  
}

int randPartition(int *arr,int p,int r){
  int i=p + rand() / (RAND_MAX / (r - p + 1) + 1);//randomized the pivot to prevent worst case complexity
  swap(&arr[r],&arr[i]);//after randomized the number switch with orginial pivot pos
  return Partition(arr, p ,r);
}

void quickSort(int *arr,int p,int r){//divide and conquer appoarch
  int q=0;
  if(r>p){
    q = Partition(arr,p,r);
    quickSort(arr,p,q-1);//left
    quickSort(arr,q+1,r);//right
  }
}

void sort (int *arr, int len){
    quickSort(arr, 0, len);//add the beginning position 0 and call quickSort function
  
}