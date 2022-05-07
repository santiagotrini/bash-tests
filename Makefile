saludo: saludo.c
	@gcc -o saludo saludo.c

factorial: factorial.c
	@gcc -o factorial factorial.c

clean:
	@rm factorial saludo

test: saludo factorial hola.s
	@bash tests.sh
