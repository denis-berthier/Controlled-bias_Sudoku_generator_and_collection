Greetings,

With release of V1.0 of the Bit Based Sudoku solver (bb_sudoku.exe), I decided 
  to include this readme for more information.  The main change, and the reason 
  for this release after so long, is to update the licensing.  I am specifically
  allowing use of the program for personal, educational, or non-commercial uses.
  
While not a requirement, I would also ask two things from people using this code
  in their own projects:
    1) Attribution : In someplace like an about screen, options screen, or help
          screen, add something like "Solver based on bb_sudoku by Brian Turner"
          or something similar.
    2) Sharing : I am interested in how others use or improve the code.  If you
          could share your code or a link to your project on the programmer's
          forum (http://www.setbb.com/phpbb/index.php?mforum=sudoku), it would
          be appreciated. 
  

BACKGROUND
------------------------------------------------------------------------------
First some history:
  Long ago, the universe was empty and void, not suns, no planets.  Then in a 
  blinding flash .... there was SUDOKU and it was good (Ok, maybe I skipped a 
  couple steps there).
  
I have played with sudokus for years, hand solving them, but I did not get real
  interested in computer solving until I was in Japan and a friend gave me a 
  copy of (well, the name is in Japanese and this is a text file, but the web
  site for it is http://puztime.com/03magazine/numpre_suripuzzle.php).  This had
  all sorts of different Sudokus, as well as other puzzles.  Not really much for
  variations, but different grid sizes (9x9, 16x16, 25x25, 28x28) and a bunch of
  overlapping grids.  The mega puzzle took 8 pages and had close to 60 connected
  sudoku puzzles.
  
My first solver was bit based (just seemed obvious to me), and only implemented
  the Naked / Hidden Singles, Naked Pairs, and backtracking.  It was also made
  to easily handle the large overlapping puzzles and larger sizes.
  
I was fairly happy with this and thought it was really fast, that was until I 
  found the sudoku programmers forum and saw others, mainly the DLX solvers.  
  they were maybe 3 times faster than mine on straight sudokus.  I decided to
  modify my solver to just do 9x9 to see how it stacked up, and bb_sudoku was
  born.  My latest version is 10 times faster than my first, and is the fastest
  of the solvers that I have available to test against. 
  
As with most algorithms, you optimize for what you are testing against.  In this
  case, it was the top50000 file.  Once I made the code available, others 
  offered ideas for improvement, and other data sets to run against.  There has
  been a long running discussion on the programmers forum for anyone interested
  (http://www.setbb.com/phpbb/index.php?mforum=sudoku).
  
With version 1.0, I have probably reached the end of the 9x9 standard sudoku 
  solver.  I already have a Greater Than / Less Than routine, a Killer sudoku
  routine, and a Jigsaw pattern generator, all working, and more variations 
  planned.  I removed them from this version, along with my generator, and other
  manipulation routines, concentrating on just the solver.  If you look in the
  code, you will still see some hooks in place for the stuff I removed.
  
  
SOLVING METHODOLOGIES
------------------------------------------------------------------------------
BB_SUDOKU stands for Bit Based Sudoku Solver.  The bit based idea is due to the
  data representation I use (each possibility is represented by a bit in a word).
  This just seemed like the obvious way to do this, there is nothing special or
  unique to this method.  But it did drive the way the solving methods evolved.
  
I originally implemented the solving methods I used to hand solve puzzles, and
  added in a brute force back tracker.  When I wanted to add in more methods, I
  went to the solver guide at http://www.sudocue.net/ for help.  I purposefully
  did not go to sites that talked about computer solving, but concentrated on 
  implementing the hand solving techniques. 
  
My original goal was to use the 9x9 as a test bed for expanding to larger grids.
  With this in mind, I was always thinking of how to implement the methods in a
  generic manner that could be expanded to larger grids.  That is why the 
  Disjoint Subset and Fishy routines are done generically, rather than looking
  specifically for Naked Pairs or X-Wings. 

To date, I have really only implemented a few solving techniques, but they are
  sufficient to solve anything:
   - Naked/Hidden Singles
   - Locked Candidates
   - Disjoint Subsets (includes Naked/Hidden Pairs/Triples/Quads)
   - Fishies (includes X-Wings, Swordfish, and Jellyfish)
   - 1 and 2 step Commonalities (a generic term that covers lots of techniques)

The only method I think needs any explanation is the commonalities.  When 
  looking at the hand solving techniques, I saw a number of methods that were 
  basically doing the same thing, which was saying that given a couple 
  possibilities for a number, either way, it eliminated a possibility from a
  separate cell.  The XY-Wing is a good example of this.  It says that if a cell
  is either X or Y, a separate cell will not be Z.
  
The commonality just does this in a generic way.  It tries the different 
  possibilities for a cell, then compares all the resulting possibilities and if
  a possibility in any cell has been eliminated in every resulting grid, then it
  is a commonality and is now known.
  
You may ask how this is different than guessing and backtracking.  The truth is
  they are both similar in that they try the various possibilities without 
  really knowing if it is valid or not.  The commonalities limits this to 1 or
  2 steps, and uses the results differently, but it is still a form of guessing.
  I would say that if you dismiss this as a valid method, then you must also
  dismiss most the advanced solving techniques, since they are basically doing
  the same thing.     
  
  

SPEED COMPARISONS
------------------------------------------------------------------------------
Here are some timings I did on a 1.83GHz pc with different solvers:

                Top 50000    Top 1465    Pearly6000    Sudoku 17   
Sudocoo           2.656        0.578        2.031       123.609    
fast_solv_9r2     5.000        0.421        3.203         4.593    
Sudocoup          4.281        0.406        9.640         2.953    
zerodoku v2       2.515        0.375        3.015         2.703    
BB_Sudoku v0.1    1.982        0.224        2.108         1.856    
BB_Sudoku v0.6    1.355        0.073        1.221         0.903    
BB_Sudoku v1.0    1.094        0.059        0.861         0.820    


                 zeroth 600k    Gen 500k    bb puzzles   
Sudocoo            48.859         dnf          1.453     
fast_solv_9r2      55.859        28.921        1.515     
Sudocoup           43.515        57.032        6.219     
zerodoku v2        27.937       677.187        1.671     
BB_Sudoku v0.1     22.263       528.890        1.206     
BB_Sudoku v0.6     13.335         2.024        0.746     
BB_Sudoku v1.0     11.340         1.912        0.519     

Note: With BB_Sudoku v1.0, I have moved to running Win 7 RC, and VC 2008.  I 
      believe this added a couple percent improvement.

I periodically update a thread on this on the programmers forum, so I will not
  repeat all the information that is there.



SPEED UPS
------------------------------------------------------------------------------
What can be done to make the solver faster: 

- The easiest way is to run on faster hardware.  I would recommend something 
  like a Cray or better.  But seriously, simply upgrading to a faster processor, 
  like a core i7 could increase solving speed.  I do not know how much since I 
  do not have access to a high end processor to run tests on.  

- Use multiple processors.  A core i7 has 4 cores and with hyperthreading looks 
  like 8 cores.  There are parts of the solver that can easily be run in 
  parallel.  Some parts include looking at individual groups, and running 
  commonalities in parallel.  Almost every loop is a candidate.  In reality, the
  best use of multiple core is to run separate puzzles on separate cores.  This 
  eliminates the needed coordination and memory sharing.

- Rehost on a GPU.  The GPU has the advantage of running many threads in 
  parallel, up to 800.  This is really just a method to get more cores at a low 
  prices (per core).  It would be equivalent to purchasing multiple computers to 
  run the solver.  Each core is probably slower, but with so many cores, the 
  final results are improved speed.  While I have looked at this a little, I do 
  not have a GPU that I can play with, so I will not be pursuing this option.
  Even with a good GPU, I am not positive that my Sudoku algorithm would work 
  well.

These really are the methods that will have the highest performance boost, but 
  these are not anything I plan on working on (well, not unless someone wants
  to donate some hardware to the effort).

There are a few software changes that can be made to improve performance:

- Remove unused options, like methodologies you do not plan on using.  Since my 
  goal is a both speed and experimentation, I have already picked my compromise.  
  Others may want to remove the solving methods beyond Naked and Hidden Singles, 
  and remove the stubs for variations.  There is a danger here due to the use of
  the optimizing compiler.  I have found at times that removing code causes the
  optimizer to behave differently.  There are times that even removing a printf
  that was not used increased solving time significantly.

- Hand write embedded assembly for key routines.  This would guarantee that the
  code was doing what you expect, and should eliminate some of the odd effects
  of the optimizer.  The problem with this is that then the code is tied to a 
  particular architecture.  My goal is a generic solver, so I am planning on 
  sticking with straight C code for portability.

- Change the grid representation to better match the processor.  There is a real
  chance that this could increase the efficiency of solving 9x9 Sudokus.  Here
  is what I was thinking about:
   -Store 3 cells per 32 bit word.  3 words per row (plus 1 spare for alignment)
   -Use 32 and 64 (even 128 if you can) bit instructions to manipulate the data
  This way, 9 columns could be worked on in 1 or 2 instructions.  Clearing a bit 
  in all 9 cells of a row could, doing ANDs and ORs, even Locked Candidates can
  all be done with multiple cells at a time.
  There are 2 major drawbacks:
   -Anything beyond Locked Candidates would probably be slower since you need
      to pull the individual cell data out or the work (shift and mask)
   -Checking for a Naked Single also requires looking at an individual cell
  I still think this would work, but I have not tried it, and do not have plans 
  to do so at this time.  With ProcessSingles broken up, the stage is set to add
  this in, but it really is a point solution for 9x9 grids only.  I am working 
  on variations now that would not benefit from this change.

- Some other change to the data structure or algorithm that I have not thought 
  of.  There is probably some real elegant solution out there that will put my
  solver to shame.  I actually look forward to seeing it, since I do love 
  algorithms. 
  


PUZZLE FORMAT
------------------------------------------------------------------------------
Since I will be supporting a number of variations, I needed a very flexible 
  format specification.  I have a few goals with this format:
  - Flexible and extent able, so more variations can be added as needed
  - Human readable and BB postable, which means only using ASCII characters
      and not requiring characters that BB interpret oddly (like /, \, <, >).
	  I also want to be able to hand decode, so I avoid things like hex coding

So, some basic rules:
  - spaces and tabs are ignored, so can be used for spacing and formatting 
    without changing the puzzles.  Good for indenting and stuff.
  - a colon or semicolon, ':' or ';', at the end of the puzzle means the puzzle
    continues on the next line.  
  - a '#' indicates the beginning of a comment, which also ends the puzzle
  - using a '/' or '\' ends the row and goes to the next row.  This can shorten
    the line, but does not work well with posting, so should be used with care

The puzzle is divided into fields.  Multiple fields can be included in a puzzle
  by separating the fields with a colon (:).  Note that if the colon is at the
  end of a line, it is treated as a line continuation instead of a field 
  separator.  If the line continues at a field break, use a colon at the end
  of the line, and the beginning of the next.
  
Fields typically begin with a single letter key (not case sensitive), followed
  by an equal sign (=).  If no key is used, then the default is givens (G=).

  KEYS:
  -----
  P*: Puzzle Size - If this is used, it must be the first key used.  The first
      number following the '=' defines the square size, optionally followed by 
	  an 'x' and the size again.  Boxed are assumed to be squares that fit in 
	  the grid, or can be define in parentheses. If no size is not specified, 
	  grid defaults to P=9x9(3x3).  Some examples:
	    P=9x9(3x3)   # standard sudoku grid.  Equivalent to P=9, and P=9x9
		P=28x28(7x4) # large grid with rectangular boxes

  G : Givens - This is the standard sudoku format, where each row is specified
      or order, given provide the value, and blanks are indicated with a period
      0, or underscore.  For a standard 9x9 grid, the numbers 1-9 are used to
	  define the givens.  For larger grids, use the following symbols in order:
        123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@$&
      For larger than 64x64 grids, use G2=, then 2 characters per cell such as
	  01, 02, ..., 0&, 10, 11, 12, ..., 1&, 20, 21, 21, ...
	  
  C : Comparisons - Used to define Greater Than and Less Than puzzles.  First,
      for each row, the constraints are given in order, with '<', '>', or '.'
	  (for those preferring numbers, 1 = '>', 2 = '<', 0 = '.', or any unused
	  character can be used instead of the '.' to indicate no constraint).
	  After the last row of '<', '>', the vertical constraints are given, also
	  by row.  'v' (or 1), '^' (or 2), are used for this section.  on a normal
	  9x9 grid, there are 72 (8*9) entries in the '<', '>' section, and 72 
	  (9*8) entries in the 'v', '^' section, for a total of 144 entries.
  
  J*: Jigsaw Sudoku -

  K*: Killer Sudoku -

  S*: Subsets - 

  E*: Even / Odd - This is actually just a subset with predefined subsets.

  A*: Additional standard constraints - some variants are common enough to make
      a simple method for defining them.  They include the following:
	   X - Both diagonals are also a grouping
	   E - Explosion, where the center of each box make another group
	   W - Windowed, where additional windowed groups are defined
  
  Overlapping grids are still to be defined.
  anything followed by a '*' is not implemented yet

  
CONTACT INFO
------------------------------------------------------------------------------
You can contact me at briturner@gmail.com.  Based on the number of spam emails 
  I get everyday, every spammer in the world already has this email, so please 
  do not be offended if your email gets accidentally marked as spam.  I  have 
  even emailed myself in the past only to find my own email in the spam folder.
  
You can also message me or post to the sudoku programmers forum.  I periodically
  check the boards to see if anything new is there.  I believe my id there is
  briturner  (brit is short for briturner, which is short for brian turner).
  http://www.setbb.com/phpbb/index.php?mforum=sudoku


brit