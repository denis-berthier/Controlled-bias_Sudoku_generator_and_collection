/****************************************************************\
**  BB_Sudoku  Bit Based Sudoku Solver                          **
\****************************************************************/

/****************************************************************\
**  (c) Copyright Brian Turner, 2008-2009.  This file may be    **
**      freely used, modified, and copied for personal,         **
**      educational, or non-commercial purposes provided this   **
**      notice remains attached.                                **
\****************************************************************/

#ifndef __BB_SOLVER
#define __BB_SOLVER

// masks for methodologies to use

#define USE_GUESSES     0x01  // use backtracking and guesses
#define USE_LOCK_CAND   0x02  // use locked candidates
#define USE_SUBSETS     0x04  // use subset searching
#define USE_FISHIES     0x08  // use fishies (x-wing, swordfish, jellyfish)
#define USE_1_STEP      0x10  // use one step commonalitytest
#define USE_2_STEP      0x20  // use two step commonality test

int bb_Solver (int num_search, unsigned int use_methods, int ret_puzzle, int initp, int* buffer);

// returns number of solutions found (depending on num_search)
//
// num_search = 0 - find all solutions (if multiple)
//            = 1 - find the first solution (if any)
//            = 2 - find the first solution and only check for a second (if any)
//
// use_methods = combinations of the above USE_ defines to use various solving techniques
//             = 0 default to USE_GUESSES and USE_LOCK_CAND
//
// ret_puzzle = 0 - don't update the buffer contents
//            = 1 - return the solution in buffer
//            = 2 - only return the modified cells in buffer
//
// initp      = 0 use buffer (int *) pointer
//            = 1 NULL buffer -- only used internally for recursive calling
//
// buffer     = (int *) pointer to grid of 81 cells with values 0-9 for givens

void bb_InitTables ();

// Must call bb_InitTables one time before any calls to bb_Solver

#endif
