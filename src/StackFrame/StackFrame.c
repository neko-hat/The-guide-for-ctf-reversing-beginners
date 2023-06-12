//gcc -o StackFrame StackFrame.c

#include <stdio.h>

int main(void)
{
    char buf[0x10];
    scanf("%16s", buf);
    printf("%s", buf);

    return 0;
}