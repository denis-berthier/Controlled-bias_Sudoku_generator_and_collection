
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
               ;;;            January 2006 - December 2023            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; This file is an addition to CSP-Rules-V2.1.
;;; It gives the SudoRules commands for reproducing the computations
;;; for the correlation and controlled-bias results published in [PBCS].
;;; The Controlled_bias_Sudoku_generator_and_collection is supposed to be
;;; installed in the same CSP-Rules directory as CSP-Rules-V2.1.

;;; WARNING for people with little background in statistcs:
;;; as any statistical results, those below rely on the distributions under discussion,
;;; i.e. controlled-bias and unbiased.
;;; Obviously, they cannot be extended to other distributions such as:
;;; - puzzles with large number of clues (or candidates);
;;; - the hardest puzzles;
;;; - puzzles with some particular pattern (be it of cells for the clues or of candidates);
;;; - puzzles in T&E(2) or T&E(3);
;;; Any such collection has weight close to 0 in the unbiased statistics.
;;; Similarly, any collection produced by a simple bottom-up or top-down generator will have a different distribution...



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
;;; Then, you have the CSP-Rules folder already defined in the configuration file by:
;;; (defglobal ?*CSP-Rules* = <your path to the folder before CSP-Rules> "/CSP-Rules/")

;;; You now need to define the CBGC folder:
(defglobal ?*CBGC* = (str-cat ?*CSP-Rules* "CBGC/")




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Basic results about the numbers of clues or candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No correlation (0.12) between the number of clues and the number of candidates after BRT
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
TO REDO WITHOUT the W0 puzzles


;;; No correlation (0.16) between the number of clues and the number of candidates after W1
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
TO REDO WITHOUT the W1 puzzles


;;; Significant correlation (0.83) between the number of candidates after BRT and the number of candidates after W1
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
TO REDO WITHOUT the W1 puzzles




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Differences between W and B
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; As a result of the definitions of whips and braids
;;; and of the confluence property of the Bn resolution theories, W is always ≥ B.
;;; The following results show that the W and B ratings are very rarely different
;;; (in only 0.26% of the controlled-bias puzzles).
;;; When they are different:
;;; - it's very rarely by more than 1 (in only 0.011% of the controlled-bias puzzles).
;;; - it's extremely rarely by more than 2 (in only 0.00066%, i.e. 6.6 in one million, of the controlled-bias puzzles).

;;; This is what I have called long ago "THE MIRACLE OF WHIPS":
;;; although they are structurally and computationally much simpler than braids,
;;; they give "almost always" the same results.


(compare-ratings-in-files W B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)
15238 differences (0.257%)
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



;;; Very low correlation (0.19) between the W rating and the number of clues.

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



;;; Significant correlation (0.80) between the W rating and the number of candidates after BRT.

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
TO REDO WITHOUT the W0 puzzles



;;; Significant correlation (0.87) between the W rating and the number of candidates after W1.

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


;;; Significant correlation (0.83) between the number of candidates after BRT and the number of candidates after W1.

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



;;; High correlation (0.917) between the FPGXnoU and the W ratings

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



;;; High correlation (0.912) between the SER and the W ratings

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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5) Controlled-bias computations
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


;;; Considreing how close W and B are, the following should be no surprise
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
