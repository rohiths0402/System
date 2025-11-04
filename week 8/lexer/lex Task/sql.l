%{
#include "sql.tab.h"
#include <string.h>
#include <stdlib.h>
%}

%%
"SELECT"        { return SELECT; }
"FROM"          { return FROM; }
"WHERE"         { return WHERE; }
"="             { return EQ; }
";"             { return SEMICOLON; }

[0-9]+          { yylval.num = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*  { strcpy(yylval.str, yytext); return IDENTIFIER; }

[ \t\n]+        ;   /* ignore spaces */
.               ;
%%

int yywrap(void) { return 1; }
