%{
#include <stdio.h>
#include <stdlib.h>
%}

%token NUMBER
%left '+' '-'
%left '*' '/'

%%
input:
  | input line
  ;

line:
  '\n'
  | exp '\n' { printf("%d\n", $1); }
  ;

exp:
  NUMBER
  | exp '+' exp { $$ = $1 + $3; }
  | exp '-' exp { $$ = $1 - $3; }
  | exp '*' exp { $$ = $1 * $3; }
  | exp '/' exp { $$ = $1 / $3; }
  | '(' exp ')' { $$ = $2; }
  ;

%%
int main(void) {
  return yyparse();
}

int yyerror(char *s) {
  fprintf(stderr, "%s\n", s);
  return 0;
}
