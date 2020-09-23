# Controlled-bias_Sudoku_generator_and_collection
 
## A large collection of Sudoku puzzles generated with a controlled-bias generator</b>



## 1. Introduction<br>
A Sudoku puzzle is called _minimal_ if it has a unique solution and any puzzle obtained from it by deleting one clue has several solutions. In statistical studies, only minimal puzzles are worth considering.<br>
There are two standard ways of creating random minimal Sudoku puzzles: _bottom-up_ or _top-down_. In the bottom-up approach, one starts from an empty gird and progressively adds givens; in the top-down aproach, one starts from a complete Sudoku gird and progresively deletes givens. In both cases, one has to test uniqueness and minimality at each step, so that the process is complicated by possibly having to delete added givens or re-add deleted givens. Both algorithms are nevertheless extremely fast and they can produce thousands of minimal puzzles per minute.<br>
Unfortunately, it appeared in the late 200x that **_both bottom-up and top-down Sudoku generators are strongly biased with respect to the number of clues_** of the puzzles thus obtained and that there is no _a priori_ way of knowing the bias. <br>
In 2009, I defined a new type of generator, which I called the **_controlled-bias generator_**. _Compared to the previous two kinds, the controlled-bias generator is extremely slow, it is still strongly biased (though much less than the other two kinds), but **the bias is precisely known**._ As a result, **_using collections produced by this generator, one can easily compute unbiased statistics of any feature of Sudoku puzzles_** (unbiased distribution of the number of clues, unbiased distribution of any rating...) As an accessory result, one can also compute an **_estimate of the total number of minimal Sudoku puzzles: 3.1055e+37 and an estimate of the total number of non-isomorphic minimal Sudoku puzzles: 2.5477e+25, both with 0.065% relative error_**. See [Berthier 2009] for details of how the three kinds of  generators work. <br><br>


## 2. The contents of this repository<br>
This repository consists mainly of four folders: SMALL-CB-COLLECTIONS, CB-GLOBAL-DATA,  PROGRAMS and Docs.<br><br>

### The SMALL-CB-COLLECTIONS folder contains independent controlled-bias collections of puzzles.<br>
In practice, it is easier to do separate computations on several small collections than on a very large one.<br>
One could concatenate all these filles into a large one with 5,926,343 minimal puzzles.<br>
But one could not choose arbitrary subparts of this global file: the results would not be controlled-bias.<br>
Each of the 129 files in this folder consists of a minimal collection necessary to run controlled-bias computations.<br>
The name of each file is the seed used to generate random numbers in the controlled-bias generator (but this is irrelevant).<br>
Files have different sizes, due to the generating method. The smallest ones have about 21,000 puzzles.<br>
Some files are about four times larger than other ones (and thus have about 84,000 puzzles), because each complete grid was submitted to the controlled-bias generator four times instead of one in the other cases. This has no impact on controlled-bias computations based on them.<br><br>

### The CB-GLOBAL-DATA folder contains various controlled-bias results:<br>
* "puzzles.txt" would be the full collection of 5,926,343 puzzles I generated using the controlled-bias generator, used in [PBCS] to study the distribution of minimal puzzles. However, due to restriction on the size of files in GitHub, it is not to be found anywhere in this repository. You can build it by concatenating the individual files present in the SMALL-CB-COLLECTIONS folder, following the order of their presence in the Excel file: Total.xlsx (in the Docs folder).<br>
* "nb-clues.txt" is the corresponding collection of their numbers of clues, in the same order;<br>
* "W-ratings.txt" is the corresponding collection of their W-ratings (with 0.1 replacing 0), in the same order;<br>
* "nb-tries" is the corresponding collection of the number of complete grids used by the controlled-bias generator before the puzzle was obtained, in the same order; (it is only useful to give an idea of why the controlled-bias generator us so much slower than a top-down one: it takes about 250,000 complete grids to obtain a puzzle);<br>
* "SER-ratings" is the corresponding collection of the Sudoku Explainer ratings, in the same order, but lmited to the first 3,037,717 puzzles.
<br><br>


### The PROGRAMS folder contains the various generators:<br>
See the README.md file in this folder for more information on how to compile and use them <br><br>


### The Docs folder contains:
* my article [Berthier 2009];
* a "Comparisons.pdf" file stating the results of comparing the various generators in the "PROGRAMS" folder (plus other ones);
* a "W-classification-results.pdf" file stating the detailed results of the W classification, obtained thanks to the programs and data in this repository and to the CSP-Rules software: /denis-berthier/CSP-Rules-V2.1/ ; it repeats much of [Berthier 2009] but it provides more details and results than a single article can do.
* a "Total.xlsx" file, recalling the number of puzzles per file in the "SMALL-CB-COLLECTIONS" folder. The order in this file is also the order in which they must be assembled in case you wanted a unique arge file of puzzles. It also corresponds to the order used for the global result files in the "CB-RESULTS" folder.



## 3. License<br>
The Controlled-bias_Sudoku_generator_and_collection is distributed under the GNU GPL v3.0 license.<br><br>


## 4. Acknowledgements<br>
Thanks are due to “Eleven” for implementing the first modification (suexg-cb) of a well-known top-down generator (suexg, written in C) to make it compliant with my specification of controlled-bias, and then several faster versions of it; this allowed to turn the whole idea into reality. Thanks to Paul Isaacson for adapting Brian Turner’s fast solver so that it could be used to replace the solver part of suexg. Thanks to Glenn Fowler (alias gsf) for providing an a priori unbiased source of complete grids: the full compressed collection of their equivalence classes (with respect to Sudoku isomorphisms) together with a fast decompressor allowing to use it as the direct input to the generator. Thanks also, for discussions and/or various contributions, to Allan Barker, Coloin, David P. Bird, Mike Metcalf, Red Ed (who was first to suggest the existence of a bias in the current generators). The informal collaboration that the controlled-bias idea sprouted on the late Sudoku Player's Forum was very productive: due to several independent optimisations, the last version of suexg-cb (which does not retain much of the original suexg code) is 200 times faster than the first.<br><br>


## 5. References<br>
### Articles<br>
* [Berthier 2009]: BERTHIER D., Unbiased Statistics of a CSP - A Controlled-Bias Generator, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 09), December 4-12, 2009, Springer. Published as a chapter of Innovations in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 11-17, Springer, 2010. Available in the Docs folder.<br><br>

### Books<br>
* [PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles, Lulu.com Publishers, July 2012.<br>
* [PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu.com Publishers, November 2015.<br>
* [PBCS]: any of [PBCS1] or [PBCS2].<br><br>

### Software<br>
* [CSP-Rules]: BERTHIER D., CSP-Rules-V2.1, August 2020, /denis-berthier/CSP-Rules-V2.1/ <br>
