




// Program to generate minimal puzzles according to Denis Berthier's theory
// of a controlled bias generator:
// http://www.carva.org/denis.berthier/HLS/Classification
// or http://www.sudoku.com/boards/viewtopic.php?t=14615&start=134
// Modified version of dukuso's top down generator (sterten@aol.com), implemented by eleven and Paul Isaacsson


// Modifications and optimisations included here:
// - the output is a sequence of (puzzle, number of complete grids consumed) pairs
// - the deletion phase starts with 48 deletions with no test
//     (this is justified by Denis Berthier tests with the previous versions)
// - it accepts a file of complete grids or a stream as input; 
//     it can thus be coupled to an external generator of complete grids
// - the solve function starts with a U4 test
// If no grids file is given, this version prefills the 9 diagonal cells according to Red Ed
// MRW replaced by the Mersenne Twister RNG, Makoto Matsumoto and Takuji Nishimura
// 4-unavoidable test added to speed up the solve() function
// suexg "solve" function replaced by "bb-solver" by Brian Turner (http://www.setbb.com/phpbb/viewtopic.php?t=1824)




#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <bb_solver.h>

#define MWC ((zr=36969*(zr&65535)+(zr>>16))^(wr=18000*(wr&65535)+(wr>>16)))
unsigned zr = 362436069, wr = 521288629;
int Rows[325], Cols[730], Row[325][10], Col[730][5], Ur[730], Uc[325], V[325], W[325];
int P[88], A[88], A0[88], C[88], I[88], Two[888];
int b, w, f, s1, m0, c1, c2, r1, l, i1, m1, m2, a, p, i, j, k, r, c, d, n = 729, m = 324, x, y, s;
int mi1, mi2, q7, part, nt, nodes, seed, solutions, min, samples, sam1, sam2, clues;
char L[11] = ".123456789";
FILE *file;
int solve();
int cnt = 0;
int nClues;
double prob_to_take_grid = 2.0;


/* *** Mersenne Twister RNG by Makoto Matsumoto and Takuji Nishimura *** */
#define MATRIX_A 0x9908b0dfUL /* constant vector a */
#define UPPER_MASK 0x80000000UL /* most significant w-r bits */
#define LOWER_MASK 0x7fffffffUL /* least significant r bits */

static unsigned long mt[624]; /* the array for the state vector */
static int mti = 624 + 1; /* mti==N+1 means mt[N] is not initialized */

/* initializes mt[624] with a seed */
void init_genrand(unsigned long s)
{
  mt[0] = s & 0xffffffffUL;
  for (mti = 1; mti < 624; mti++)
    {
      mt[mti] = (1812433253UL * (mt[mti-1] ^ (mt[mti-1] >> 30)) + mti); /* 2002/01/09 modified by Makoto Matsumoto */
      mt[mti] &= 0xffffffffUL; /* for >32 bit machines */
    }
}

/* initialize by an array with array-length */
void init_by_array(unsigned long init_key[], int key_length, int seed)
{
  int i, j, k;
  init_genrand(seed);
  i = 1;
  j = 0;
  k = (624 > key_length ? 624 : key_length);
  for (; k; k--)
    {
      mt[i] = (mt[i] ^ ((mt[i-1] ^ (mt[i-1] >> 30)) * 1664525UL)) + init_key[j] + j; /* non linear */
      mt[i] &= 0xffffffffUL; /* for WORDSIZE > 32 machines */
      i++;
      j++;
      if (i >= 624)
        {
          mt[0] = mt[624-1];
          i = 1;
        }
      if (j >= key_length) j = 0;
    }
  for (k = 624 - 1; k; k--)
    {
      mt[i] = (mt[i] ^ ((mt[i-1] ^ (mt[i-1] >> 30)) * 1566083941UL)) - i; /* non linear */
      mt[i] &= 0xffffffffUL; /* for WORDSIZE > 32 machines */
      i++;
      if (i >= 624)
        {
          mt[0] = mt[624-1];
          i = 1;
        }
    }

  mt[0] = 0x80000000UL; /* MSB is 1; assuring non-zero initial array */
}

/* generates a random number on [0,0xffffffff]-interval */
unsigned long genrand_int32(void)
{
  unsigned long y;
  static unsigned long mag01[2] = {0x0UL, MATRIX_A};
  /* mag01[x] = x * MATRIX_A for x=0,1 */

  if (mti >= 624)   /* generate 624 words at one time */
    {
      int kk;

      for (kk = 0; kk < 624 - 397; kk++)
        {
          y = (mt[kk] & UPPER_MASK) | (mt[kk+1] & LOWER_MASK);
          mt[kk] = mt[kk+397] ^ (y >> 1) ^ mag01[y & 0x1UL];
        }
      for (; kk < 624 - 1; kk++)
        {
          y = (mt[kk] & UPPER_MASK) | (mt[kk+1] & LOWER_MASK);
          mt[kk] = mt[kk+(397-624)] ^ (y >> 1) ^ mag01[y & 0x1UL];
        }
      y = (mt[624-1] & UPPER_MASK) | (mt[0] & LOWER_MASK);
      mt[624-1] = mt[397-1] ^ (y >> 1) ^ mag01[y & 0x1UL];

      mti = 0;
    }

  y = mt[mti++];

  /* Tempering */
  y ^= (y >> 11);
  y ^= (y << 7) & 0x9d2c5680UL;
  y ^= (y << 15) & 0xefc60000UL;
  y ^= (y >> 18);

  return y;
}

unsigned randInt( unsigned n )
{
// Find which bits are used in n
// Optimized by Magnus Jonsson (magnus@smartelectronix.com)
  unsigned used = n;
  used |= used >> 1;
  used |= used >> 2;
  used |= used >> 4;
  used |= used >> 8;
  used |= used >> 16;

// Draw numbers until one is found in [0,n]
  unsigned i;
  do
    i = genrand_int32() & used; // toss unused bits to shorten search
  while ( i > n );
  return i;
}

/* *** calc and test for 4-cell-unavoidables *** */
int nr4unavoid;
int a4unavoid[64][4];
void add4unavoid(int i, int j, int k, int l)
{
  a4unavoid[nr4unavoid][0] = i;
  a4unavoid[nr4unavoid][1] = j;
  a4unavoid[nr4unavoid][2] = k;
  a4unavoid[nr4unavoid][3] = l;
  nr4unavoid++;
}
void find4unavoid(int i, int j)
{
  int k, l;
  k = 1 + 9 * ((i - 1) % 9) + (i - 1) / 9;
  l = 1 + 9 * ((j - 1) % 9) + (j - 1) / 9;
  if (A[i] == A[j+9] && A[j] == A[i+9])add4unavoid(i, j, i + 9, j + 9);
  if (A[i] == A[j+18] && A[j] == A[i+18])add4unavoid(i, j, i + 18, j + 18);
  if (A[i+9] == A[j+18] && A[j+9] == A[i+18])add4unavoid(i + 9, j + 9, i + 18, j + 18);
  if (A[k] == A[l+1] && A[l] == A[k+1])add4unavoid(k, l, k + 1, l + 1);
  if (A[k] == A[l+2] && A[l] == A[k+2])add4unavoid(k, l, k + 2, l + 2);
  if (A[k+1] == A[l+2] && A[l+1] == A[k+2])add4unavoid(k + 1, l + 1, k + 2, l + 2);
}
int calc4unavoid()
{
  int i, j, i1, k, l;
  nr4unavoid = 0;
  for (i1 = 1; i1 < 81; i1 += 27)
    {
      for (i = i1; i < i1 + 3; i++)
        {
          for (j = i1 + 3; j < i1 + 9; j++)
            {
              find4unavoid(i, j);
            }
        }
      for (i = i1 + 3; i < i1 + 6; i++)
        {
          for (j = i1 + 6; j < i1 + 9; j++)
            {
              find4unavoid(i, j);
            }
        }
    }
  return nr4unavoid;
}
int empty4unavoid()
{
  int i;
  for (i = 0; i < nr4unavoid; i++)
    if (!A[a4unavoid[i][0]] && !A[a4unavoid[i][1]] && !A[a4unavoid[i][2]] && !A[a4unavoid[i][3]])
      return 1;
  return 0;
}

/* *** in grid generation mode prefill the 9 diagonal cells *** */
void prefill()
{
  int i, k, o[10];
  for (i = 1; i <= 9; i++)
    {
      k = randInt(i - 1);
      k++;
      o[i] = o[k];
      o[k] = i;
    }
  for (i = 0; i < 3; i++) A[1+10*i] = o[i+1];
  for (i = 1; i <= 9; i++)
    {
      k = randInt(i - 1);
      k++;
      o[i] = o[k];
      o[k] = i;
    }
  for (i = 0; i < 3; i++) A[31+10*i] = o[i+1];
  for (i = 1; i <= 9; i++)
    {
      k = randInt(i - 1);
      k++;
      o[i] = o[k];
      o[k] = i;
    }
  for (i = 0; i < 3; i++) A[61+10*i] = o[i+1];
}

/* *** main *** */
int main(int argc, char*argv[])
{
  if (argc < 3)
    {
      printf("\nusage:\n");
      printf("<program name> random-seed max-puzzles \n");
      printf("<program name> random-seed max-tries-per-grid file-with-grids\n\n");
      return(1);
    }

  sscanf(argv[1], "%i", &seed);
  zr ^= seed;
  wr += seed;
  sscanf (argv[2], "%d", &samples);
  file = stdin;
  if (argc > 3 && strcmp (argv[3], "-") != 0)
    if ((file = fopen(argv[3], "rb")) == NULL)
      {
        printf("\ncan't find file %s\n", argv[3]);
        return(1);
      }
	  
// Do not take probability argument:
  //if (argc > 4)
 //   {
//      sscanf (argv[4], "%Lf", &prob_to_take_grid);
//    }

  for (i = 0; i < 888; i++)
    {
      j = 1;
      while (j <= i)j += j;
      Two[i] = j - 1;
    }
  for (i = 1; i <= 81; i++)A0[i] = 0;

  r = 0;
  for (x = 1; x <= 9; x++)for (y = 1; y <= 9; y++)for (s = 1; s <= 9; s++)
        {
          r++;
          Cols[r] = 4;
          k = 3;
          Col[r][1] = x * 9 - 9 + y;
          Col[r][2] = (k * ((x - 1) / k) + (y - 1) / 3) * 9 + s + 81 * 1;
          Col[r][3] = x * 9 - 9 + s + 81 * 2;
          Col[r][4] = y * 9 - 9 + s + 81 * 3;
        }
  for (c = 1; c <= m; c++)Rows[c] = 0;
  for (r = 1; r <= n; r++)for (c = 1; c <= Cols[r]; c++)
      {
        a = Col[r][c];
        Rows[a]++;
        Row[a][Rows[a]] = r;
      }

  bb_InitTables ();

// init RNG
  unsigned long init[4] = {MWC, MWC, MWC, MWC}, length = 4;
  init_by_array(init, length, seed);

m6:
  if (argc > 3)
    while (1)
      {
        for (i = 1; i <= 81; i++)
          {
          m6a:
            A0[i] = fgetc(file) - 48;
            if (feof(file))return(8);
            if (A0[i] == -2)A0[i] = 0;
            if (A0[i] < 0 || A0[i] > 9)goto m6a;
          }
        if (prob_to_take_grid > 1.0)
          break;
        if (((double) genrand_int32() / (double) 4294967295.0) < prob_to_take_grid)
          break;
      }

  sam1 = 0;
  sam2 = 0;
m0s:
  if (argc > 3)
    {
      sam1++;
      if (sam1 > samples) goto m6;
    }
  else if (sam2 >= samples)return(0);

m0:
  cnt++;
  for (i = 1; i <= 81; i++)
    A[i] = A0[i];
  part = 0;
  if (argc < 4)
    {
      prefill();
      bb_Solver(1, 0, 1, 0, &A[1]);
    }
  nClues = 81;

// save all 4-cell anavoidables in the grid
  calc4unavoid(); // per eleven's post http://www.sudoku.com/boards/viewtopic.php?p=81839#81839 this may be commented out???
  part++;

  for (i = 1; i <= 81; i++)
    {
      x = randInt(i - 1);
      x++;
      P[i] = P[x];
      P[x] = i;
    }
  for (i1 = 1; i1 <= 81; i1++)
    {
      s1 = A[P[i1]];
      if (s1)
        {
          A[P[i1]] = 0;
          if (--nClues == 32)
            {
              if (solve() > 1)goto m0s;
            }
          if (nClues < 32 && solve() > 1)
            {
              A[P[i1]] = s1;
              break;
            }
        }
    }

  i = ++i1;
  for (i1 = i; i1 <= 81; i1++)
    {
      s1 = A[P[i1]];
      if (s1)
        {
          A[P[i1]] = 0;
          if (solve() < 2)goto m0s;
          A[P[i1]] = s1;
        }
    }

  clues = 0;
  for (i = 1; i <= 81; i++)
    {
      printf("%c", L[A[i]]);
      if (A[i])
        clues++;
    }
//  printf(" %2d %8d\n", clues, cnt);
	printf(" %8d\n", cnt);
  cnt = 0; // dont sum it up for all puzzles
  if (argc < 4)sam2++;
  fflush(stdout);
  goto m0s;
}

/* *** solver code *** */
int solve()
{
  int i;
// test for 4-cell unavoidables without givens
  if (part && empty4unavoid())
    return 2;

  i = part == 0 ? 1 : 2;
  return (bb_Solver (i, 0, 0, 0, &A[1]));
}

