%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void yyerror(const char *s);
int yylex(void);

char column[100];
char table[100];
char condition_col[100];
int condition_val;
%}

%union {
    int num;
    char str[100];
}

%token SELECT FROM WHERE EQ SEMICOLON
%token <str> IDENTIFIER
%token <num> NUMBER

%type <str> select_list table_ref

%%

statement:
      SELECT select_list FROM table_ref opt_where SEMICOLON
        {
          printf("Parsed successfully!\n");
          printf("Columns: %s\n", column);
          printf("Table: %s\n", table);
          if (strlen(condition_col) > 0)
            printf("Condition: %s = %d\n", condition_col, condition_val);
        }
    ;

select_list:
      IDENTIFIER   { strcpy(column, $1); }
    ;

table_ref:
      IDENTIFIER   { strcpy(table, $1); }
    ;

opt_where:
      /* optional WHERE clause */
      | WHERE IDENTIFIER EQ NUMBER
        {
          strcpy(condition_col, $2);
          condition_val = $4;
        }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Syntax error: %s\n", s);
}

int main() {
    printf("Enter SQL query:\n");
    yyparse();
    return 0;
}
