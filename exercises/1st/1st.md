# Primeiro exercício

 - [fb1-1.1.l](./fb1-1.1.l ) -> Configurações para o lexer
 - [lex.yy.c](./lex.yy.c) -> Analisador léxico (lexer)
 - [a.out](./a.out) -> Input e output de texto a ser analisado

---

### Comandos a serem rodados para o funcionamento:
#### Criação
```shell
flex fb1-1.1.l
cc lex.yy.c -lfl
./a.out
```
#### Texto a ser analisado:
```input
Lorem ipsum dolor sit amet consectetur
adipiscing elit quisque faucibus
^D
```
#### Output:
```output
Linhas:     Palavras:   Caracteres: 
3           10          73
```
