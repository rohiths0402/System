#include <stdio.h>
#include <string.h>

#define MAX 100

char stack[MAX];
int top = -1;

void push(char c) {
    if (top < MAX - 1) {
        stack[++top] = c;
    }
}

char pop() {
    if (top >= 0) {
        return stack[top--];
    }
    return '\0';
}

int main() {
    char str[MAX];
    printf("Enter a string: ");
    scanf("%s", str);
    for (int i = 0; i < strlen(str); i++) {
        push(str[i]);
    }
    printf("Reversed string: ");
    while (top != -1) {
        printf("%c", pop());
    }
    printf("\n");
    return 0;
}
