/*Notes:
When combining two files
gcc file.c --> only run one file
gcc -c file.c--> produce object file file.o
gcc file.o file1.o --> will run successfully
gcc -S file.c --> file.s

Memory is an array of bits(0 or 1)
1kB= 2^10 bytes
1MB= 2^10 KB
1GB= 2^10 MB
Binary system- base 2

Check Properties
-0=0?
0:   0000 0000
Flip:1111 1111
Add 1: 1 0000 0000
So, 0=-0

Positive to negative num/ neg to pos --> flip, add 1
-1: 1111 1111
1:  0000 0001

Signed Integer Limits--> 127+1=>1000 0000 is -128(first bit is negative)

Hexadecimal(base 16)
  0-9:already have symbols
  10-15:A-F
Hex to binary(group of 4)
  Hex: 0x7fa3 --> 32
  Binary: 0111(7) 1111(f) 1010(a) 0011(3)
  

Char c= 0b //binary
Char c= 0x67
printf('%x',c) //Print hexadecimal number

Access to memory
- int *arr (store address)

Arrays in memory
The address of a[i]= a+sizeof(int)*i

int *p1=&arr[9] ('&' gets the memory address of the data)
char has 1 data
int has 4 data

Create own memory
void *malloc(size_t size)
Ex: int *total=(int*)malloc(sizeof(int)*nrows);.
char *total=(char*)malloc(sizeof(char)*nrows);

strcopy(arr)


