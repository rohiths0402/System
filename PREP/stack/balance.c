#include <stdio.h>
#include <string.h>

#define MAX 100

char stack[MAX];
int top = -1;
void push(char c){
    stack[++top] = c;
}

char pop(){
    return stack[top--];
}

int isMatchingPair(char opening, char closing){
    if (opening == '(' && closing == ')'){
        return 1;
    }
    if (opening == '{' && closing == '}'){
        return 1;
    }
    if (opening == '[' && closing == ']'){
        return 1;
    }
    return 0;
}

int isBalanced(char expr[]){
    for (int i = 0; i < strlen(expr); i++){
        char ch = expr[i];
        if (ch == '(' || ch == '{' || ch == '['){
            push(ch);
        }
        else if (ch == ')' || ch == '}' || ch == ']'){
            if (top == -1)
                return 0;

            char popped = pop();
            if (!isMatchingPair(popped, ch))
                return 0;
        }
    }
    return top == -1;
}

int main() {
    char expr[MAX];
    printf("Enter a bracket string: ");
    scanf("%s", expr);
    if (isBalanced(expr))
        printf("The string is balanced.\n");
    else
        printf("The string is NOT balanced.\n");
    return 0;
}
