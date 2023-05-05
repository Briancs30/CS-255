#include<stdio.h>
int main(){
    char c=127;     //size 1 byte
    short s;    //size >= 2 bytes
    int i;      //size >= 2 bytes
    long l;     //size >= 2 bytes
    long long ll;
    //1 byte =8bits
    // n bits -> store 2^n things
    unsigned char u;
    signed char si;
    
    
    //printf("c=%d\n",c);
    //c++;
    //printf("c=%d\n",c);
    
    printf("chart: %lu\n",sizeof(char));
    printf("short: %lu\n",sizeof(short));
    printf("int: %lu\n",sizeof(int));
    printf("long: %lu\n",sizeof(long));
    printf("long long: %lu\n",sizeof(long long));
    
    //Floating Point Numbers
    printf("float: %lu\n",sizeof(float));
    printf("double: %lu\n",sizeof(double));
    printf("long double: %lu\n",sizeof(long double));
}
  