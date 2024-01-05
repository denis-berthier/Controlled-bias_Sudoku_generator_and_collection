
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;            UNBIASED STATISTICS FOR THE CONTROLLED-BIAS PUZZLES COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - January 2024             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; This file gives the SudoRules commands for reproducing the computations
;;; for the correlation and controlled-bias results published in [PBCS].
;;; The Controlled_bias_Sudoku_generator_and_collection is supposed to be
;;; installed in the same CSP-Rules directory as CSP-Rules-V2.1.

;;; WARNING for people with little background in statistcs:
;;; as any statistical results, those below rely on the distributions under discussion,
;;; i.e. the controlled-bias and unbiased ones.
;;; Obviously, they cannot be extended to other distributions such as:
;;; - puzzles with large number of clues (or candidates);
;;; - the hardest puzzles;
;;; - puzzles with some particular pattern (be it of cells for the clues or of candidates);
;;; - puzzles in T&E(2) or T&E(3).
;;; Any such collection has weight close to 0 in the unbiased statistics.
;;; Similarly, any collection produced by a simple bottom-up or top-down generator will have a different distribution (see file "comparisons.pdf" in the DOCS folder.



;;; Before running the following computations,
;;; do not forget to assemble all the GLOBAL collections from the SMALL ones,
;;; by running the Unix scripts in the "assemble-XXX.clp" files.
;;; Note that the results given below are the raw output of SudoRules
;;; and that the precision of the results should be reduced manually to a reasonable number of digits.

;;; If you want to use the following functions without change to re-run the following computations for yourself,
;;; the present repository should be renamed "CBGC" and moved to the CSP-Rules directory,
;;; which should look as follows, if you have installed all the repositories of the [CSP-Rules] family:
;;;
;;;          /CBGC
;;;          /Classifications-of-TE2-Sudokus
;;;          /Classifications-of-TE3-Sudokus
;;; CSP-Rules/CSP-Rules-V2.1
;;;          /CSP-Rules-Examples
;;;          /Sudoku_Hierachical_Classifier

;;; To use the statistical functions below, you need to load SudoRules
;;; (but you don't need to have any rules activated).
;;; Then, you will have the CSP-Rules folder already defined in the configuration file by:
;;; (defglobal ?*CSP-Rules* = <your path to the folder before CSP-Rules> "/CSP-Rules/")

;;; You now need only to define the CBGC folder:
(defglobal ?*CBGC* = (str-cat ?*CSP-Rules* "CBGC/"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Basic results about the numbers of clues or candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No correlation (0.12) between the number of clues and the number of candidates after BRT:

(correlation-coefficient
    nb-clues
    nb-cands-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
E(nb-clues) = 84.1483027560163
E(nb-cands-after-BRT) = 25.6667359617875
Sigma(nb-clues) = 68.4475660364698
Sigma(nb-cands-after-BRT) = 1.11661844035196
correlation-coefficient(nb-clues, nb-cands-after-BRT) = 0.120017867212229
regression nb-cands-after-BRT = a * nb-clues + b (meaningless for small correlation)
a = 0.00195790984926306
b = 25.5019811710227


;;; No correlation (0.16) between the number of clues and the number of candidates after W1:

(correlation-coefficient
    nb-clues
    nb-cands-after-W1
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    5926343
)
E(nb-clues) = 25.6667359617875
E(nb-cands-after-W1) = 65.5813885561548
Sigma(nb-clues) = 1.11661844035196
Sigma(nb-cands-after-W1) = 64.9841018342646
correlation-coefficient(nb-clues, nb-cands-after-W1) = 0.160638668235772
regression nb-cands-after-W1 = a * nb-clues + b (meaningless for small correlation)
a = 9.34872575798019
b = -174.369887053085


;;; Significant correlation (0.83) between the number of candidates after BRT and the number of candidates after W1:

(correlation-coefficient
    nb-cands-after-BRT
    nb-cands-after-W1
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    5926343
)
E(nb-cands-after-BRT) = 84.1483027560163
E(nb-cands-after-W1) = 65.5813885561548
Sigma(nb-cands-after-BRT) = 68.4475660364698
Sigma(nb-cands-after-W1) = 64.9841018342646
correlation-coefficient(nb-cands-after-BRT, nb-cands-after-W1) = 0.828885182018743
regression nb-cands-after-W1 = a * nb-cands-after-BRT + b
a = 0.786943381573558
b = -0.638561368340206




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Differences between W and B
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; As a result of the definitions of whips and braids
;;; and of the confluence property of the Bn resolution theories, W is always ≥ B.
;;; The following results show that the W and B ratings are very rarely different
;;; (in only 0.26% of the controlled-bias puzzles).
;;; Moreover, when they are different:
;;; - it's very rarely by more than 1 (in only 0.011% of the controlled-bias puzzles).
;;; - it's extremely rarely by more than 2 (in only 0.00066%, i.e. 6.6 in one million, of the controlled-bias puzzles).

;;; This is what I have called long ago "THE MIRACLE OF WHIPS":
;;; although they are structurally and computationally much simpler than braids
;;; ("exponentially" simpler wrt length),
;;; they give "almost always" the same results.


(compare-ratings-in-files 
    W
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)

15238 differences (0.257%)
15238 positive differences
0 negative differences
;;; checked manually
14574 times diff = 1 (0.25 %)
625 times diff = 2 (0.011 %)
35 times diff = 3
3 times diff = 4
1 times diff = 5
664 times diff > 1 (0.011 %)
39 times diff > 2 (0.00066 %)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Correlation results involving W or B
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extremely high correlation (0.9995) between the W and B ratings.
;;; This is consistent with the fact that the two ratings rarely differ and when they do, they don't differ much.

(correlation-coefficient 
    B
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)

E(B) = 1.8990780655119
E(W) = 1.90176876363716
Sigma(B) = 1.70193103036719
Sigma(W) = 1.70858037850751
correlation-coefficient(B, W) = 0.999502206848788
regression W = a * B + b
a = 1.00340720536034
b = -0.00377985083926502



;;; Very low correlation (0.19) between the W rating and the number of clues:

(correlation-coefficient 
    nb-clues
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)

E(nb-clues) = 25.6667359617875
E(W) = 1.90176876363716
Sigma(nb-clues) = 1.11661844035196
Sigma(W) = 1.70858037850751
correlation-coefficient(nb-clues, W) = 0.191841032400813
regression W = a * nb-clues + b (meaningless for small correlation)
a = 0.293543265906781
b = -5.63252873575296



;;; Significant correlation (0.80) between the W rating and the number of candidates after BRT:

(correlation-coefficient 
    nb-cands-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)

E(nb-cands-after-BRT) = 84.1483027560163
E(W) = 1.90176876363716
Sigma(nb-cands-after-BRT) = 68.4475660364698
Sigma(W) = 1.70858037850751
correlation-coefficient(nb-cands-after-BRT, W) = 0.799205186917703
regression W = a * nb-cands-after-BRT + b
a = 0.0199496692116335
b = 0.22303795893425



;;; Significant correlation (0.87) between the W rating and the number of candidates after W1:

(correlation-coefficient 
    nb-cands-after-W1
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
E(nb-cands-after-W1) = 65.5813885561548
E(W) = 1.90176876363716
Sigma(nb-cands-after-W1) = 64.9841018342646
Sigma(W) = 1.70858037850751
correlation-coefficient(nb-cands-after-W1, W) = 0.871001529160154
regression W = a * nb-cands-after-W1 + b
a = 0.0229006184646287
b = 0.399914405932091


;;; Significant correlation (0.83) between the number of candidates after BRT and the number of candidates after W1:

(correlation-coefficient 
    nb-cands-after-BRT
    nb-cands-after-W1
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    5926343
)
E(nb-cands-after-BRT) = 84.1483027560163
E(nb-cands-after-W1) = 65.5813885561548
Sigma(nb-cands-after-BRT) = 68.4475660364698
Sigma(nb-cands-after-W1) = 64.9841018342646
correlation-coefficient(nb-cands-after-BRT, nb-cands-after-W1) = 0.828885182018743
regression nb-cands-after-W1 = a * nb-cands-after-BRT + b
a = 0.786943381573558
b = -0.638561368340206




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) Correlation results involving the SER (and its variants)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Very strong correlation (0.987) between SER and FPGXnoU.
;;; FPGXnoU is a slightly faster variant of SER with some SER dependency on morphisms corrected
;;; and with rules for uniqueness disabled (the "noU" part in the name).
;;; Except for anomalous cases, the FPGXnoU rating should be ≥ SER.
;;; This is confirmed by the regression analysis.

(correlation-coefficient 
    SER
    FPGXnoU
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)

E(SER) = 4.29323709410655
E(FPGXnoU) = 4.37740059932414
Sigma(SER) = 2.53596598822567
Sigma(FPGXnoU) = 2.58952296086161
correlation-coefficient(SER, FPGXnoU) = 0.987182407209759
regression FPGXnoU = a * SER + b
a = 1.00803067623824
b = 0.049685908100817



;;; High correlation (0.917) between the FPGXnoU and the W ratings:

(correlation-coefficient 
    W
    FPGXnoU
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)

E(W) = 1.90176876363716
E(FPGXnoU) = 4.37740059932414
Sigma(W) = 1.70858037850751
Sigma(FPGXnoU) = 2.58952296086161
correlation-coefficient(W, FPGXnoU) = 0.916580771989892
regression FPGXnoU = a * W + b
a = 1.38916903436841
b = 1.73552232235031



;;; High correlation (0.912) between the SER and the W ratings:

(correlation-coefficient 
    W
    SER
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    5926343
)

E(W) = 1.90176876363716
E(SER) = 4.29323709410655
Sigma(W) = 1.70858037850751
Sigma(SER) = 2.53596598822567
correlation-coefficient(W, SER) = 0.912060579481476
regression SER = a * W + b
a = 1.35372888385084
b = 1.71875778836562



(compare-ratings-in-files 
    SER
    FGPXnoU
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)
366671 differences (6.19%)
186 positive differences
366485 negative differences


(compare-diff-ratings-in-files 
    SER
    FGPXnoU
    0.11
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)
290490 meaningful (i.e. > 0.11) differences (4.90%)
72 meaningful (i.e. > 0.11) positive differences
290418 meaningful (i.e. > 0.11) negative differences


(compare-diff-ratings-in-files 
    SER
    FGPXnoU
    0.21
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)
280724 meaningful (i.e. > 0.21) differences (4.74%)
27 meaningful (i.e. > 0.21) positive differences
280697 meaningful (i.e. > 0.21) negative differences


(compare-diff-ratings-in-files 
    SER
    FGPXnoU
    0.31
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    5926343
)
270355 meaningful (i.e. > 0.31) differences (4.56%)
5 meaningful (i.e. > 0.31) positive differences
270350 meaningful (i.e. > 0.31) negative differences

#1192670; SER = 8.8; FGPXnoU = 8.4; diff = 0.4
.....6.......891..7.9...........394.51.9..8.3.38.24.....52..4..6...7..9........5. 387373

#1284282; SER = 8.8; FGPXnoU = 8.4; diff = 0.4
........9457........937..4...........159....89.8.4.16..6.....9......5...83...1.52 94624

#1990228; SER = 7.2; FGPXnoU = 6.8; diff = 0.4
1.....7.945.1..2..6.8.7..........193..9...4...4.....253.27......8.5........26.3.. 26 649538

#2273360; SER = 7.2; FGPXnoU = 6.8; diff = 0.4
..3.5..8.4....9.2..8...2.1426.....3.57..........6....5...86...7...2.14.8.......6. 25 41660

#4904804; SER = 7.2; FGPXnoU = 6.8; diff = 0.4
1.3..6.........326.....2........1....3..7...291..4.6...9.8....176..1..95....9.27. 26   241358





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5) Controlled-bias computations for the W and B ratings, and their difference
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Distribution of clues in the controlled-bias collection.
;;; This is a fundamental ingredient in the unbiased computations.

(distribution-of-clues
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)

nb-clues   nb-instances
19         0
20         2
21         164
22         6651
23         110103
24         704089
25         1814413
26         2002349
27         1007700
28         247259
29         31449
30         2088
31         74
32         2
33         0
34         0
35         0
mean= 25.6667359617896
standard-deviation= 1.11661844032305
distrib[19...35] = (0 2 164 6651 110103 704089 1814413 2002349 1007700 247259 31449 2088 74 2 0 0 0)



(unbiased-X-distribution-19-32
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)

W distribution for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
W distribution for 20 clue puzzles = (1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
W distribution for 21 clue puzzles = (74 35 26 20 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
W distribution for 22 clue puzzles = (3201 1081 954 782 508 101 19 2 3 0 0 0 0 0 0 0 0 0 0 0 0 6651)
W distribution for 23 clue puzzles = (52272 15252 15235 14992 9975 1858 370 99 28 15 4 1 2 0 0 0 0 0 0 0 0 110103)
W distribution for 24 clue puzzles = (314030 86428 94474 110691 79554 14696 2960 886 262 80 17 8 2 0 0 0 1 0 0 0 0 704089)
W distribution for 25 clue puzzles = (723154 196125 241448 330632 258533 49813 10745 2861 788 215 75 17 3 3 1 0 0 0 0 0 0 1814413)
W distribution for 26 clue puzzles = (670471 187839 262580 419510 365935 73973 16074 4393 1147 288 98 26 9 4 2 0 0 0 0 0 0 2002349)
W distribution for 27 clue puzzles = (264338 78467 126993 238227 233186 50706 11578 3110 803 225 44 18 4 0 1 0 0 0 0 0 0 1007700)
W distribution for 28 clue puzzles = (47523 15432 28507 63229 70115 16912 4080 1100 256 77 24 2 1 0 0 1 0 0 0 0 0 247259)
W distribution for 29 clue puzzles = (3986 1442 3201 8288 10781 2781 715 192 46 13 2 2 0 0 0 0 0 0 0 0 0 31449)
W distribution for 30 clue puzzles = (155 71 163 529 834 248 67 17 2 1 1 0 0 0 0 0 0 0 0 0 0 2088)
W distribution for 31 clue puzzles = (5 2 4 17 35 9 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
W distribution for 32 clue puzzles = (0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
W global distribution = (2079210 582174 773585 1186918 1029466 211098 46608 12662 3335 914 265 74 21 7 4 1 1 0 0 0 0 5926343)

Distributions for W, expresed as percentages:
controlled-bias distribution: (35.0841994801853 9.82349486015237 13.0533281654471 20.0278316661725 17.3710161561692 3.5620280500133 0.786454648338782 0.213656212608686 0.0562741643539701 0.0154226645335918 0.00447156028599762 0.00124866211759934 0.000354350060399811 0.000118116686799937 6.74952495999641e-05 1.6873812399991e-05 1.6873812399991e-05 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.1707885620362 8.4391090600333 12.6055371645836 22.2620279710733 21.3864540180214 4.67328240607295 1.07214536754372 0.290000666460393 0.0727524926206421 0.0202705014758163 0.00553522413996254 0.00150578930527732 0.000367251722408355 8.59407379651685e-05 7.173321837024e-05 6.26058356037652e-05 3.2451190703706e-06 0.0 0.0 0.0 0.0 100.0)


;;; Simplified manually (same results as in [PBCS]):
controlled-bias distribution: (35.08 9.82 13.05 20.03 17.37 3.56 0.79 0.21 0.056 0.015 0.0045 0.00125 0.00035 0.00012 0.0000675 0.000017 0.000017 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.17 8.44 12.61 22.26 21.39 4.67 1.07 0.29 0.073 0.0203 0.0055 0.0015 0.00037 0.000086 0.000072 0.000063 0.0000032 0.0 0.0 0.0 0.0 100.0)


;;; Considering how close W and B are, the following should be no surprise:

(unbiased-X-distribution-19-32
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)

B distribution for 19-clue puzzles [0 ... , total] = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
B distribution for 20-clue puzzles [0 ... , total] = (1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
B distribution for 21-clue puzzles [0 ... , total] = (74 35 26 20 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
B distribution for 22-clue puzzles [0 ... , total] = (3201 1081 954 782 510 101 19 2 1 0 0 0 0 0 0 0 0 0 0 0 0 6651)
B distribution for 23-clue puzzles [0 ... , total] = (52272 15252 15235 14995 10003 1878 348 89 24 5 2 0 0 0 0 0 0 0 0 0 0 110103)
B distribution for 24-clue puzzles [0 ... , total] = (314030 86428 94474 110699 79725 14875 2912 724 176 38 4 3 0 1 0 0 0 0 0 0 0 704089)
B distribution for 25-clue puzzles [0 ... , total] = (723154 196125 241448 330646 259097 50503 10471 2338 493 108 25 2 2 1 0 0 0 0 0 0 0 1814413)
B distribution for 26-clue puzzles [0 ... , total] = (670471 187839 262580 419535 366805 75017 15733 3489 695 144 31 8 2 0 0 0 0 0 0 0 0 2002349)
B distribution for 27-clue puzzles [0 ... , total] = (264338 78467 126993 238241 233816 51484 11278 2485 483 94 15 6 0 0 0 0 0 0 0 0 0 1007700)
B distribution for 28-clue puzzles [0 ... , total] = (47523 15432 28507 63239 70320 17177 3979 881 156 36 7 0 2 0 0 0 0 0 0 0 0 247259)
B distribution for 29-clue puzzles [0 ... , total] = (3986 1442 3201 8289 10826 2812 710 148 31 2 1 1 0 0 0 0 0 0 0 0 0 31449)
B distribution for 30-clue puzzles [0 ... , total] = (155 71 163 530 835 258 65 9 0 2 0 0 0 0 0 0 0 0 0 0 0 2088)
B distribution for 31-clue puzzles [0 ... , total] = (5 2 4 17 35 9 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
B distribution for 32-clue puzzles [0 ... , total] = (0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)

B distribution for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
B distribution for 20 clue puzzles = (1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
B distribution for 21 clue puzzles = (74 35 26 20 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
B distribution for 22 clue puzzles = (3201 1081 954 782 510 101 19 2 1 0 0 0 0 0 0 0 0 0 0 0 0 6651)
B distribution for 23 clue puzzles = (52272 15252 15235 14995 10003 1878 348 89 24 5 2 0 0 0 0 0 0 0 0 0 0 110103)
B distribution for 24 clue puzzles = (314030 86428 94474 110699 79725 14875 2912 724 176 38 4 3 0 1 0 0 0 0 0 0 0 704089)
B distribution for 25 clue puzzles = (723154 196125 241448 330646 259097 50503 10471 2338 493 108 25 2 2 1 0 0 0 0 0 0 0 1814413)
B distribution for 26 clue puzzles = (670471 187839 262580 419535 366805 75017 15733 3489 695 144 31 8 2 0 0 0 0 0 0 0 0 2002349)
B distribution for 27 clue puzzles = (264338 78467 126993 238241 233816 51484 11278 2485 483 94 15 6 0 0 0 0 0 0 0 0 0 1007700)
B distribution for 28 clue puzzles = (47523 15432 28507 63239 70320 17177 3979 881 156 36 7 0 2 0 0 0 0 0 0 0 0 247259)
B distribution for 29 clue puzzles = (3986 1442 3201 8289 10826 2812 710 148 31 2 1 1 0 0 0 0 0 0 0 0 0 31449)
B distribution for 30 clue puzzles = (155 71 163 530 835 258 65 9 0 2 0 0 0 0 0 0 0 0 0 0 0 2088)
B distribution for 31 clue puzzles = (5 2 4 17 35 9 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
B distribution for 32 clue puzzles = (0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
B global distribution = (2079210 582174 773585 1186994 1031982 214115 45516 10166 2059 429 85 20 6 2 0 0 0 0 0 0 0 5926343)

Distributions for B, expresed as percentages:
controlled-bias distribution: (35.0841994801853 9.82349486015237 13.0533281654471 20.0291140759149 17.4134706681675 3.61293634202408 0.768028445197991 0.171539176858309 0.0347431797315815 0.00723886551959615 0.00143427405399924 0.00033747624799982 0.000101242874399946 3.3747624799982e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.1707885620362 8.4391090600333 12.6055371645836 22.2639532171053 21.4437174392955 4.74300896251508 1.04779424704436 0.230238903695084 0.0443198153965757 0.00915464268482521 0.0017342475241499 0.000461212619607613 0.000171881475930337 1.06439905508156e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

;;; Simplified manually (same results as in [PBCS]):
controlled-bias distribution: (35.08 9.82 13.05 20.03 17.41 3.61 0.768 0.17 0.0347 0.0072 0.0014 0.000337 0.00010 0.000034 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.17 8.44 12.61 22.26 21.44 4.743 1.048 0.23 0.044 0.0092 0.0017 0.00046 0.00017 0.000011 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)


compare to W:
controlled-bias distribution: (35.08 9.82 13.05 20.03 17.37 3.56 0.79 0.21 0.056 0.015 0.0045 0.00125 0.00035 0.00012 0.0000675 0.000017 0.000017 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.17 8.44 12.61 22.26 21.39 4.67 1.07 0.29 0.073 0.0203 0.0055 0.0015 0.00037 0.000086 0.000072 0.000063 0.0000032 0.0 0.0 0.0 0.0 100.0)

The distributions are the same at the first 5 levels (i.e. upto W/B = 4). As expected, they diverge all the more as W,B increase (the larger B, the more chances of having W > B). However, the differences remain small.



;;; unbiased distribution of the difference difference W-B:

(diff-X-Y-unbiased-distribution-19-32
    B
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of W - B for 19-clue puzzles [0 ... , total] = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of W - B for 20-clue puzzles [0 ... , total] = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of W - B for 21-clue puzzles [0 ... , total] = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of W - B for 22-clue puzzles [0 ... , total] = (6644 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of W - B for 23-clue puzzles [0 ... , total] = (109956 136 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of W - B for 24-clue puzzles [0 ... , total] = (703052 981 52 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of W - B for 25-clue puzzles [0 ... , total] = (1810980 3276 151 5 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of W - B for 26-clue puzzles [0 ... , total] = (1997047 5081 204 15 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of W - B for 27-clue puzzles [0 ... , total] = (1003911 3640 142 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of W - B for 28-clue puzzles [0 ... , total] = (245993 1209 52 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of W - B for 29-clue puzzles [0 ... , total] = (31219 220 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of W - B for 30-clue puzzles [0 ... , total] = (2062 24 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of W - B for 31-clue puzzles [0 ... , total] = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of W - B for 32-clue puzzles [0 ... , total] = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)

distribution of W - B for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of W - B for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of W - B for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of W - B for 22 clue puzzles = (6644 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of W - B for 23 clue puzzles = (109956 136 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of W - B for 24 clue puzzles = (703052 981 52 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of W - B for 25 clue puzzles = (1810980 3276 151 5 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of W - B for 26 clue puzzles = (1997047 5081 204 15 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of W - B for 27 clue puzzles = (1003911 3640 142 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of W - B for 28 clue puzzles = (245993 1209 52 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of W - B for 29 clue puzzles = (31219 220 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of W - B for 30 clue puzzles = (2062 24 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of W - B for 31 clue puzzles = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of W - B for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of W - B = (5911105 14574 625 35 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for W - B, expresed as percentages:
controlled-bias distribution: (99.7428768466489 0.245918941917469 0.0105461327499944 0.000590583433999686 5.06214371999731e-05 1.6873812399991e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.6524832748663 0.332689982187691 0.013958191541921 0.000796818185684179 5.57971874892816e-05 1.59360308809584e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
controlled-bias distribution: (99.74 0.2459 0.0105 0.000591 5.062e-05 1.68e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.65 0.333 0.0140 0.000797 5.58e-05 1.59e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 6) Differences between W and gW
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(compare-ratings-in-files 
    W
    gW
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    ;1168353
    ;1529243
    ;1933900
    ;3207961
    ;4481101
    5926343
)

12752 differences
12749 positive differences
3 negative differences

3 cases with diff = -1 (due to non confluence of g-whips)
#1072535: W = 5; gW = 6; diff = -1
#3791115: W = 7; gW = 8; diff = -1
#4117915: W = 5; gW = 6; diff = -1


12114 cases with diff = 1
635 cases with diff = 2
68 cases with diff = 3
6 cases with diff = 4
2 cases with diff = 5
1 cases with diff = 6
494 cases with diff > 1 (0.0107 %)
77 cases with diff > 2 (0.00130 %)




#161579: W = 6; gW = 3; diff = 3
#227914: W = 9; gW = 6; diff = 3
#336080: W = 9; gW = 6; diff = 3
#380159: W = 8; gW = 5; diff = 3
#497756: W = 6; gW = 3; diff = 3
#609673: W = 9; gW = 6; diff = 3
#662158: W = 12; gW = 9; diff = 3
#669124: W = 8; gW = 5; diff = 3
#680433: W = 6; gW = 3; diff = 3
#870108: W = 7; gW = 4; diff = 3
#884639: W = 8; gW = 5; diff = 3
#901359: W = 7; gW = 4; diff = 3
#1073699: W = 10; gW = 7; diff = 3
#1231503: W = 5; gW = 2; diff = 3
#1329356: W = 8; gW = 5; diff = 3
#1331930: W = 7; gW = 4; diff = 3
#1358064: W = 7; gW = 4; diff = 3
#1417398: W = 8; gW = 5; diff = 3
#1429467: W = 10; gW = 7; diff = 3
#1496063: W = 8; gW = 5; diff = 3
#1533038: W = 8; gW = 5; diff = 3
#1577694: W = 6; gW = 3; diff = 3
#1632089: W = 8; gW = 5; diff = 3
#1721435: W = 5; gW = 2; diff = 3
#1748391: W = 9; gW = 6; diff = 3
#1811085: W = 8; gW = 5; diff = 3
#1876527: W = 9; gW = 6; diff = 3
#1901194: W = 7; gW = 4; diff = 3
#2002656: W = 7; gW = 4; diff = 3
#2197424: W = 9; gW = 6; diff = 3
#2383757: W = 5; gW = 2; diff = 3
#2434060: W = 7; gW = 4; diff = 3
#2554550: W = 7; gW = 4; diff = 3
#2572795: W = 9; gW = 6; diff = 3
#2631235: W = 14; gW = 11; diff = 3
#2650556: W = 5; gW = 2; diff = 3
#2691805: W = 7; gW = 4; diff = 3
#2868631: W = 9; gW = 6; diff = 3
#2926122: W = 8; gW = 5; diff = 3
#2980891: W = 9; gW = 6; diff = 3
#3047406: W = 6; gW = 3; diff = 3
#3219558: W = 7; gW = 4; diff = 3
#3309675: W = 13; gW = 10; diff = 3
#3333259: W = 7; gW = 4; diff = 3
#3765688: W = 5; gW = 2; diff = 3
#3792400: W = 12; gW = 9; diff = 3
#3802790: W = 6; gW = 3; diff = 3
#3908919: W = 9; gW = 6; diff = 3
#4009335: W = 8; gW = 5; diff = 3
#4024252: W = 6; gW = 3; diff = 3
#4054958: W = 10; gW = 7; diff = 3
#4132807: W = 7; gW = 4; diff = 3
#4173239: W = 6; gW = 3; diff = 3
#4273704: W = 5; gW = 2; diff = 3
#4309458: W = 8; gW = 5; diff = 3
#4432398: W = 8; gW = 5; diff = 3
#4559061: W = 8; gW = 5; diff = 3
#4566963: W = 12; gW = 9; diff = 3
#4688246: W = 6; gW = 3; diff = 3
#4849850: W = 6; gW = 3; diff = 3
#4921649: W = 6; gW = 3; diff = 3
#4931086: W = 7; gW = 4; diff = 3
#4978564: W = 9; gW = 6; diff = 3
#5139400: W = 6; gW = 3; diff = 3
#5325369: W = 8; gW = 5; diff = 3
#5453529: W = 10; gW = 7; diff = 3
#5750465: W = 13; gW = 10; diff = 3
#5832926: W = 7; gW = 4; diff = 3


#1095754: W = 12; gW = 8; diff = 4
#2678196: W = 6; gW = 2; diff = 4
#3067241: W = 7; gW = 3; diff = 4
#3227167: W = 16; gW = 12; diff = 4
#5380641: W = 10; gW = 6; diff = 4
#5406452: W = 9; gW = 5; diff = 4

#2862: W = 7; gW = 2; diff = 5
#903492: W = 8; gW = 3; diff = 5

#421802: W = 13; gW = 7; diff = 6




