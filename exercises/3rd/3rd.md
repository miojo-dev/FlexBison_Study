Os primeiros 5 padrões a serem reconhecidos são operadores matemáticos, [0 - 9] serve para identificar quaisquer caracteres entre 0 e 9 (números inteiros), o "+" no final serve para contar todas as aparições e não só o primeiro caractere encontrado,  \n identifica o começo de uma nova linha, [ \t] identifica qualquer espaço ou Tab no texto e o "." identifica qualquer outro caractere que pode ser encontrado, depois o programa escreve por extenso todos caracteres

```shell
flex fb1-3.l
cc lex.yy.c -lfl
./a.out
12+34
NUMBER 12
PLUS NUMBER 34
NEWLINE
 5 6 / 7q
NUMBER 5
NUMBER 6
DIVIDE
NUMBER 7
Mystery character q
NEWLINE
^D
```