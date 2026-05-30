/* just like Unix wc */
%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n { chars++; lines++; }
. { chars++; }

%%

void main(int argc, char **argv)
{
	printf("Insira seu texto: \n");
	yylex();
	printf("\n");
	printf("%-12s%-12s%-12s\n", "Linhas:", "Palavras:", "Caracteres:");
	printf("%-12d%-12d%-12d\n", lines, words, chars);
}
