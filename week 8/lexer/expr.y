%{

#include <stdio.h>

#include <stdlib.h>
 
int yylex();

void yyerror(const char *s);
 
typedef struct Node {

    char op;

    int value;

    struct Node *left, *right;

} Node;
 
Node* makeNode(char op, Node* left, Node* right);

Node* makeLeaf(int value);

void printTree(Node* root);
 
Node* root;

%}
 
%union {

    int num;

    struct Node* node;

}
 
%token <num> NUMBER

%type <node> expr term factor
 
%left '+' '-'

%left '*' '/'
 
%%
 
input: expr { root = $1; }

;
 
expr:

      expr '+' term   { $$ = makeNode('+', $1, $3); }

    | expr '-' term   { $$ = makeNode('-', $1, $3); }

    | term            { $$ = $1; }

;
 
term:

      term '*' factor { $$ = makeNode('*', $1, $3); }

    | term '/' factor { $$ = makeNode('/', $1, $3); }

    | factor          { $$ = $1; }

;
 
factor:

      NUMBER          { $$ = makeLeaf($1); }

    | '(' expr ')'    { $$ = $2; }

;
 
%%
 
void yyerror(const char *s) {

    fprintf(stderr, "Error: %s\n", s);

}
 
Node* makeNode(char op, Node* left, Node* right) {

    Node* n = malloc(sizeof(Node));

    n->op = op;

    n->value = 0;

    n->left = left;

    n->right = right;

    return n;

}
 
Node* makeLeaf(int value) {

    Node* n = malloc(sizeof(Node));

    n->op = '\0';

    n->value = value;

    n->left = n->right = NULL;

    return n;

}
 
void printTree(Node* root) {

    if (!root) return;

    if (root->op == '\0')

        printf("%d ", root->value);

    else {

        printf("(");

        printTree(root->left);

        printf(" %c ", root->op);

        printTree(root->right);

        printf(")");

    }

}
 
int main() {

    printf("Enter expression: ");

    yyparse();

    printf("AST: ");

    printTree(root);

    printf("\n");

    return 0;

}
 
