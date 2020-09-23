
# ABOUT THE FOUR GENERATORS IN THIS FOLDER

WARNING: Don't ask me too much programming details about these programs. The suexg style of C programming is beyond my understanding. <br>

The four programs given here can be used as standalone. suexg-cb can also be used with an input stream of complete Sudoku grids. <br>


## HOW TO COMPILE THE PROGRAMS

Unless you are using MasOS, for which precompiled versions are provided, you will need to compile the three programs before using them, as follows: 

gcc -O3 -Wall suexg-bu.c -o suexg-bu[.exe] <br>
gcc -O3 -Wall suexg-td.c -o suexg-td[.exe] <br>
gcc -O3 -Wall suexg-cb.c -o suexg-cb[.exe] <br>

In folder suexg-cb-Paul-optim48: <br>
g++ -O3 -I. suexg-cb.cpp bb_sudoku_solver.cpp -o suexg-cb-Paul[.exe] <br><br>



## HOW TO RUN THE PROGRAMS

./suexg-bu[.exe] s n <br>
./suexg-td[.exe] s n [file] <br>
./suexg-cb[.exe] s n [file] <br>

In folder suexg-cb-Paul-optim48:<br>
./suexg-cb-Paul[.exe] s n [file] <br>

the .exe suffix is for Windows users. <br><br>

* s is the seed (an integer used as the seed of the random generator) <br>
* if the optional argument [file] is not present, n is the number of puzzles generated  <br>
* if the optional argument file is present, it must be a file with a full grid in each line:  <br>
*- in suexg-td, n puzzles are generated for each input line <br>
*- in suexg-cb, the grid in each input line is used n times to try to obtain a puzzle (but no result is guranteed for this line if n is not large) <br>
*- in suexg-cb, the optional file argument can be defined as "-" and the algorithm will take a stream of complete girds as input. <br><br>


## About the creation of the controlled-bias collection: <br>
* different versions of the controlled-bias generator have been used (with increasing speeds, but all with the same controlled-bias properties). The last but one version was the present version of suexg-cb (as largely modified by Paul Isaacsson); it doesn't have much in common with the original suexg program (appearing here as "suexg-td"). The last version was based on Paul Isaacsson's solver. <br>
* the input was a stream of complete Susoku grids, obtained by gsf's compressed full list of Sudoku Grids (modulo isomorphisms) and his decompressor. Unfortunately, gsf's compressed full list is too large for GitHub. <br>
