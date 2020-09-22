
* ABOUT THE THREE GENERATORS

WARNING: Don't ask me too much about these programs. The suexg style of C programming is beyond my understanding. 

The three programs given here can be used as standalone. suexg-cb can also be used with an input stream of complete Sudoku grids. 


------------------------------------------------------------------------------------------------------------

** HOW TO COMPILE: 

Unless you are using MasOS, for which precompiled versions are provided, you will need to compile the three programs before using them, as follows: 

gcc -O3 -Wall suexg-bu.c -o suexg-bu[.exe] 
gcc -O3 -Wall suexg-td.c -o suexg-td[.exe] 
gcc -O3 -Wall suexg-cb.c -o suexg-cb[.exe] 

In folder suexg-cb-Paul-optim48:
g++ -O3 -I. suexg-cb.cpp bb_sudoku_solver.cpp -o suexg-cb-Paul[.exe]

------------------------------------------------------------------------------------------------------------

** HOW TO RUN: 

./suexg-bu[.exe] s n 
./suexg-td[.exe] s n [file] 
./suexg-cb[.exe] s n [file] 

In folder suexg-cb-Paul-optim48:
./suexg-cb-Paul[.exe] s n [file] 

the .exe suffix is for Windows users. 

* s is the seed (an integer used as the seed of the random generator) 
* if argument [fie] is not present, n is the number of puzzles generated  
* if argument file is present, it must be a file with a full grid in each line:  
*- in suexg-td, n puzzles are generated for each input line
*- in suexg-cb, the grid in each input line is used n times to try to obtain a puzzle 
* in suexg-cb, the optional file argument can be defined as "-" and the algorithm will take a stream of complete girds as input. <br>

For the creation of the controlled-bias collection: 
* different versions of the controlled-bias generator have been used (with increasing speeds, but all with the same controlled-bias properties). The last but one version was the present version of suexg-cb (as largely modified by Paul Isaacsson); it doesn't have much in common with the original suexg program (appearing here as "suexg-td"). The last version was based on Paul Isaacsson's solver. 
* the input was a stream of complete Susoku grids, obtained by gsf's compressed full list of Sudoku Grids (modulo isomorphisms) and his decompressor. Unfortunately, gsf's compressed full list is too large for GitHub.
