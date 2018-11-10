Exercicio 2 - SO

1) O arquivo possui uma diretoria principal (ParSolver). Ao abrir essa diretoria, existe o script doTest.sh que executa o ParSolver com o correspondente input e numero de threads, e varias diretorias, das quais:

    - CircuitRouter-ParSolver -> possui os ficheiros do exercicio 2, tais como:
			
			CircuitRouter-ParSolver.c 
			CircuitRouter-ParSolver.o
			coordinate.c 
			coordinate.h
			coordinate.o 
			grid.c
			grid.h
			grid.o
			Makefile
			maze.c
			maze.h
			maze.o
			parallelism.c -> ficheiro que contem a funcao que cria um array de coordenadas
			parallelism.h
			parallelism.o
			router.c
			router.h
			router.o
			CircuitRouter-ParSolver -> executavel 

	- CircuitRouter-SeqSolver -> possui os ficheiros que executam o CircuitRouter-SeqSolver:

			CircuitRouter-SeqSolver.c
			CircuitRouter-SeqSolver.o
			coordinate.c
			coordinate.h
			coordinate.o
			grid.c
			grid.h
			grid.o
			Makefile
			maze.c
			maze.h
			maze.o
			router.c
			router.h
			router.o
			CircuitRouter-SeqSolver -> executavel

	CircuitRouter-SimpleShell -> possui os ficheiros da SimpleShell:

			CircuitRouter-SimpleShell.c
			CircuitRouter-SimpleShell.h
			Makefile
 
	inputs -> contem os inputfiles 

			random-x32-y32-z3-n64.txt
			random-x32-y32-z3-n96.txt
			random-x48-y48-z3-n48.txt
			random-x32-y32-z3-n64.txt
			random-x64-y64-z3-n48.txt
			random-x64-y64-z3-n64.txt
			random-x128-y128-z3-n64.txt
			random-x128-y128-z3-n128.txt
			random-x128-y128-z5-n128.txt
			random-x256-y256-z3-n128.txt
			random-x256-y256-z5-n256.txt
			random-x512-y512-z7-n512.txt

	lib

			commandlinereader.c
			commandlinereader.h
			list.c
			list.h
			list.o
			pair.c
			pair.h
			pair.o
			queue.c
			queue.h
			queue.o
			timer.h
			types.h
			utiity.h
			vector.c
			vector.h
			vector.o

	results -> diretoria onde vao ser inseridos os ficheiros com a analise do speed-up para todos os circuitos presentes na pasta inputs com tamanho ate 256x256


2) Compilacao do projeto: abrir o terminal na diretoria ParSolver e correr o script, fazendo ./doTest.sh <numero de threads> inputs/<nome do inputfile>

3) Carateristicas do processador:
		
		Numero de cores: 2
		Clock rate: 898.771
		Modelo: Intel(R) Core(TM) i7-4500 CPU @ 1.80GHz


   Carateristicas do Sistema Operativo:

   		Linux 4.13.0-45-generic #50~16.04.1-Ubuntu SMP Wed May 30 11:18:27 UTC 2018 x86_64 x86_64 GNU/Linux












