# Controlled-bias_Sudoku_generator_and_collection
 
## A large collection of Sudoku puzzles generated with a controlled-bias generator</b>



## 1. Introduction<br>
A Sudoku puzzle is called _minimal_ if it has a unique solution and any puzzle obtained from it by deleting one clue has several solutions. In statistical studies, only minimal puzzles are worth considering.<br>
There are two standard ways of creating random minimal Sudoku puzzles: _bottom-up_ or _top-down_. In the bottom-up approach, one starts from an empty gird and progressively adds givens; in the top-down aproach, one starts from a complete Sudoku gird and progresively deletes givens. In both cases, one has to test uniqueness and minimality, so the process also involves deleting added givens or re-adding deleted givens. Both algorithms are nevertheless extremely fast and they can produce thousands of minimal puzzles per second.<br>
Unfortunately, it appeared in the late 200x that _both bottom-up and top-down Sudoku generators are strongly biased with respect to the number of clues_ of the puzzles thus obtained and that there is no _a priori_ way of knowing the bias. <br>
In 2009, I defined a new type of generator, which I called the **_controlled-bias generator_**. _Compared to the previous two kinds, the controlled-bias generator is extremely slow, it is still strongly biased (though much less than the other two kinds), but **the bias is precisely known**._ As a result, **_using collections produced by this generator, one can easily compute unbiased statistics of any feature of Sudoku puzzles_** (unbiased distribution of the number of clues, unbiased distribution of any rating...) As an accessory result, one can also compute an _estimate of the total number of minimal Sudoku puzzles_. See [Berthier 2009] for details of how the three kinds of  generators work. <br><br>


## 2. The contents of this repository<br>
This repository consists mainly of three folders: CB-GLOBAL-DATA,  SMALL-CB-COLLECTIONS and PROGRAMS.<br><br>

### The CB-GLOBAL-DATA folder contains various controlled-bias results:<br>
* "puzzles.txt" is the full collection of 5,926,343 puzzles I generated using the controlled-bias generator, used in [PBCS] to study the distribution of minimal puzzles. However, due to restriction on the size of files in GitHub, it is split into 12 parts;<br>
* "nb-clues.txt" is the corresponding collection of their numbers of clues;<br>
* "W-ratings.txt" is the corresponding collection of their W-ratings (with 0.1 replacing 0);<br>
* "nb-tries" is the corresponding collection of the number of complete grids used by the controlled-bias generator before the puzzle was obtained;<br>
* "SER-ratings" is the corresponding collection of the Sudoku Explainer ratings, but lmited to the first 3,037,717 puzzles.
<br><br>

### The SMALL-CB-COLLECTIONS folder contains independent controlled-bias collections of puzzles.<br>
In practice, it is easier to do separate computations on several small collections than on a very large one.<br>
But one cannot choose arbitrary subparts of the global puzzles file: the results would not be controlled-bias.<br>
Each of the 129 files in this folder consists of a minimal collection necessary to run controlled-bias computations.<br>
The name of each file is the seed used to generate random numbers in the controlled-bias generator (but this is irrelevant).<br>
Files have different sizes, due to the generating method. The smallest ones have about 21,000 puzzles.<br>
Some files are about four times larger than other ones (and thus have about 84,000 puzzles), because each full grid was submitted to the controlled-bias generator four times instead of one in the other cases. This has no impact on controlled-bias computations based on them.<br>
Each of the large puzzle files in CB-GLOBAL-DATA is the union of groups of these atomic files, as described in the Excel file: Total.xlsx (in the Docs folder)
<br><br>


### The PROGRAMS folder contains the various generators:<br>
details forthcoming <br><br>



## 3. How to use the collection<br>
details forthcoming <br><br>


## 4. How to use CSP-Rules to redo or extend the computations<br>
details forthcoming <br><br>


## 5. License<br>
The Controlled-bias_Sudoku_collection is distributed under the GNU GPL v3.0 license.<br><br>


## 6. Acknowledgements<br>
Thanks are due to “Eleven” for implementing the first modification (suexg-cb) of a well-known top-down generator (suexg, written in C) to make it compliant with my specification of controlled-bias, and then several faster versions of it; this allowed to turn the whole idea into reality. Thanks to Paul Isaacson for adapting Brian Turner’s fast solver so that it could be used to replace the solver part of suexg. Thanks to Glenn Fowler (alias gsf) for providing an a priori unbiased source of complete grids: the full compressed collection of their equivalence classes (with respect to Sudoku isomorphisms) together with a fast decompressor allowing to use it as the direct input to the generator. Thanks also, for discussions and/or various contributions, to Allan Barker, Coloin, David P. Bird, Mike Metcalf, Red Ed (who was first to suggest the existence of a bias in the current generators). The informal collaboration that the controlled-bias idea sprouted on the late Sudoku Player's Forum was very productive: due to several independent optimisations, the last version of suexg-cb (which does not retain much of the original suexg code) is 200 times faster than the first.<br><br>


## 7. References<br>
### Articles<br>
* [Berthier 2009]: BERTHIER D., Unbiased Statistics of a CSP - A Controlled-Bias Generator, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 09), December 4-12, 2009, Springer. Published as a chapter of Innovations in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 11-17, Springer, 2010. Available in the Docs folder.<br><br>

### Books<br>
* [PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles, Lulu.com Publishers, July 2012.<br>
* [PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu.com Publishers, November 2015.<br>
* [PBCS]: any of [PBCS1] or [PBCS2].<br><br>

### Software<br>
* [CSP-Rules]: BERTHIER D., CSP-Rules-V2.1, August 2020, /denis-berthier/CSP-Rules-V2.1/ <br>