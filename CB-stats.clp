
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                     CONTROLLED-BIAS AND UNBIASED STATISTICS
;;;                   FOR THE CONTROLLED-BIAS PUZZLES COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;              January 2006 - July 2024              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; This file gives the SudoRules commands for reproducing the computations
;;; for the correlation and controlled-bias results published in [PBCS].
;;; It also gives these results, plus new ones obtained after [PBCS3], in particular in [HCCS2]

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
;;;          /TE2-classif
;;;          /TE3-classif
;;; CSP-Rules/CSP-Rules-V2.1
;;;          /CSP-Rules-Examples
;;;          /SHC

;;; To use the statistical functions below, you need to load SudoRules
;;; (but you don't need to have any rules activated).
;;; Then, you will have the CSP-Rules folder already defined in the configuration file by:
;;; (defglobal ?*CSP-Rules* = (str-cat <your path to the folder before CSP-Rules> "/CSP-Rules/"))

;;; You now need only to define the CBGC folder:
(defglobal ?*CBGC* = (str-cat ?*CSP-Rules* "CBGC/"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Controlled-bias computations for the W and B ratings, and their difference
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Distribution of clues in the controlled-bias collection.
;;; This is a fundamental ingredient in the unbiased computations.

(distribution-of-clues-19-35
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

Distributions for W, expressed as percentages:
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

Distributions for B, expressed as percentages:
controlled-bias distribution: (35.0841994801853 9.82349486015237 13.0533281654471 20.0291140759149 17.4134706681675 3.61293634202408 0.768028445197991 0.171539176858309 0.0347431797315815 0.00723886551959615 0.00143427405399924 0.00033747624799982 0.000101242874399946 3.3747624799982e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.1707885620362 8.4391090600333 12.6055371645836 22.2639532171053 21.4437174392955 4.74300896251508 1.04779424704436 0.230238903695084 0.0443198153965757 0.00915464268482521 0.0017342475241499 0.000461212619607613 0.000171881475930337 1.06439905508156e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

;;; Simplified manually (same results as in [PBCS]):
controlled-bias distribution: (35.08 9.82 13.05 20.03 17.41 3.61 0.768 0.17 0.0347 0.0072 0.0014 0.000337 0.00010 0.000034 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.17 8.44 12.61 22.26 21.44 4.743 1.048 0.23 0.044 0.0092 0.0017 0.00046 0.00017 0.000011 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)


non0-real unbiased distribution:
(defglobal ?*res* = (create$ 8.4391090600333 12.6055371645836 22.2639532171053 21.4437174392955 4.74300896251508 1.04779424704436 0.230238903695084 0.0443198153965757 0.00915464268482521 0.0017342475241499 0.000461212619607613 0.000171881475930337 1.06439905508156e-05)
)
(bind ?i 0)
(while (< ?i 13)
(bind ?i (+ ?i 1))
(printout t (* 100 (/ (nth$ ?i ?*res*) (- 100 29.1707885620362))) crlf)
)
11.9147296556093
17.79708810626
31.4332925146362
30.2752452045539
6.69640232641764
1.47932502109257
0.325062073995755
0.0625727923505028
0.0129249535593706
0.00244849192718862
0.000651161590315839
0.000242670322654771
1.5027684672359e-05

simplified to:
11.91
17.80
31.43
30.28
6.70
1.48
0.33
0.062
0.013
0.0024
0.00065
0.00024
0.000015



compare to W:
controlled-bias distribution: (35.08 9.82 13.05 20.03 17.37 3.56 0.79 0.21 0.056 0.015 0.0045 0.00125 0.00035 0.00012 0.0000675 0.000017 0.000017 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (29.17 8.44 12.61 22.26 21.39 4.67 1.07 0.29 0.073 0.0203 0.0055 0.0015 0.00037 0.000086 0.000072 0.000063 0.0000032 0.0 0.0 0.0 0.0 100.0)

The distributions are the same at the first 5 levels (i.e. upto W/B = 4). As expected, they diverge all the more as W,B increase (the larger B, the more chances of having W > B). However, the differences remain small.



;;; Unbiased distribution of the difference W-B:

(diff-X-Y-unbiased-distribution-19-32
    B
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(W-B) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(W-B) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(W-B) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(W-B) for 22 clue puzzles = (6644 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(W-B) for 23 clue puzzles = (109956 136 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(W-B) for 24 clue puzzles = (703052 981 52 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(W-B) for 25 clue puzzles = (1810980 3276 151 5 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(W-B) for 26 clue puzzles = (1997047 5081 204 15 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(W-B) for 27 clue puzzles = (1003911 3640 142 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(W-B) for 28 clue puzzles = (245993 1209 52 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(W-B) for 29 clue puzzles = (31219 220 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(W-B) for 30 clue puzzles = (2062 24 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(W-B) for 31 clue puzzles = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(W-B) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(W-B)  = (5911105 14574 625 35 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(W-B), expressed as percentages:
controlled-bias distribution: (99.7428768466489 0.245918941917469 0.0105461327499944 0.000590583433999686 5.06214371999731e-05 1.6873812399991e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.6524832748663 0.332689982187691 0.013958191541921 0.000796818185684179 5.57971874892816e-05 1.59360308809584e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
controlled-bias distribution: (99.74 0.2459 0.0105 0.000591 5.062e-05 1.68e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.65 0.333 0.0140 0.000797 5.58e-05 1.59e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Differences between W and gW
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(diff-X-Y-unbiased-distribution-19-32
    gW
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(W-gW) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(W-gW) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(W-gW) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(W-gW) for 22 clue puzzles = (6643 7 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(W-gW) for 23 clue puzzles = (109965 132 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(W-gW) for 24 clue puzzles = (703032 998 48 7 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(W-gW) for 25 clue puzzles = (1811203 3032 161 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(W-gW) for 26 clue puzzles = (1997919 4228 182 18 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(W-gW) for 27 clue puzzles = (1004848 2720 113 16 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(W-gW) for 28 clue puzzles = (246364 848 41 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(W-gW) for 29 clue puzzles = (31304 135 7 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(W-gW) for 30 clue puzzles = (2071 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(W-gW) for 31 clue puzzles = (74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(W-gW) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(W-gW)  = (5913591 12117 558 68 6 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(W-gW), expressed as percentages:
controlled-bias distribution: (99.7848251442753 0.204459984850691 0.00941558731919499 0.00114741924319939 0.000101242874399946 3.3747624799982e-05 1.6873812399991e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.7334567090247 0.253435499747351 0.0112913989019603 0.00167415293253108 0.000107122212594746 1.9181149951329e-05 1.59360308809584e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
real unbiased distribution: (99.73 0.253 0.011 0.0017 0.00011 1.9e-05 1.6e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)



(compare-ratings-in-files
    W
    gW
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    5926343
)

12752 differences (0.215 %)
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


Large differences:
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


Largest W-gW difference:
#421802: W = 13; gW = 7; diff = 6
+-------+-------+-------+
! . . . ! . . 6 ! . . . !
! . 5 . ! 1 8 9 ! . . 6 !
! . . . ! . . . ! . 5 . !
+-------+-------+-------+
! . . 6 ! 3 . . ! . 9 8 !
! . . . ! 9 . . ! . . 1 !
! . . . ! . 7 4 ! 3 . . !
+-------+-------+-------+
! 6 . 5 ! . 2 . ! . 1 3 !
! 7 . . ! . . . ! . 2 . !
! . 1 . ! . 9 3 ! . . . !
+-------+-------+-------+
.....6....5.189..6.......5...63...98...9....1....743..6.5.2..137......2..1..93... 1394365




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Differences involving gB
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

For all the gB values computed by CSP-Rules (i.e. cbg-000), they coincide with the SHC ones.
So, we used SHC for computing the gB ratings below.


;;;;;;;;;;;;;;;;;;;;
;;; 3.1) gW vs gB
;;;;;;;;;;;;;;;;;;;;

(diff-X-Y-unbiased-distribution-19-32
    gB
    gW
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(gW-gB) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(gW-gB) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(gW-gB) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(gW-gB) for 22 clue puzzles = (6648 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(gW-gB) for 23 clue puzzles = (109985 112 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(gW-gB) for 24 clue puzzles = (703295 766 26 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(gW-gB) for 25 clue puzzles = (1811651 2676 81 4 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(gW-gB) for 26 clue puzzles = (1998075 4157 109 7 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(gW-gB) for 27 clue puzzles = (1004640 2965 93 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(gW-gB) for 28 clue puzzles = (246226 999 33 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(gW-gB) for 29 clue puzzles = (31265 180 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(gW-gB) for 30 clue puzzles = (2066 20 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(gW-gB) for 31 clue puzzles = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(gW-gB) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(gW-gB)  = (5914092 11879 354 16 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(gW-gB), expressed as percentages:
controlled-bias distribution: (99.7932789242877 0.200444017499493 0.00597332958959682 0.000269980998399856 3.3747624799982e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.7189684250906 0.272365002876612 0.00836806878436856 0.000275168346088752 2.33349023614034e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
real unbiased distribution: (99.72 0.272 0.0084 0.000275 2.333e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)



(compare-ratings-in-files
    gW
    gB
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    5926343
)

12251 differences (i.e. 0.207 %)
12251 positive differences
0 negative differences

354 cases with diff = 2
16 cases with diff = 3
2 cases with diff = 4
no case with diff > 4

Large differences:
#247111: gW = 12; gB = 9; diff = 3
#861410: gW = 9; gB = 6; diff = 3
#1483823: gW = 13; gB = 10; diff = 3
#1847392: gW = 11; gB = 8; diff = 3
#1972661: gW = 9; gB = 6; diff = 3
#2610394: gW = 8; gB = 5; diff = 3
...
#3948897: gW = 13; gB = 9; diff = 4
#4024883: gW = 13; gB = 9; diff = 4



Largest gW-gB difference = 4; 2 cases:
#4024883: gW = 13; gB = 9; diff = 4 (already found as the largest W-B difference: W = 14, B = gB = 9)
 

#3948897: gW = 13; gB = 9; diff = 4 (and W = 14, B = 10)
+-------+-------+-------+
! . . . ! . 5 . ! . . 9 !
! 4 5 . ! . . . ! 2 3 . !
! 8 . . ! . . 7 ! . 5 . !
+-------+-------+-------+
! . . 6 ! 9 . . ! . . 5 !
! . . 4 ! . . 2 ! 8 . . !
! . . . ! . 7 3 ! . . . !
+-------+-------+-------+
! . . . ! . 3 . ! 9 1 . !
! . . 8 ! 6 . . ! . . . !
! 9 3 . ! . . 4 ! . . . !
+-------+-------+-------+
....5...945....23.8....7.5...69....5..4..28......73.......3.91...86.....93...4... 25





;;;;;;;;;;;;;;;;;;;;
;;; 3.2) B vs gB
;;;;;;;;;;;;;;;;;;;;

(diff-X-Y-unbiased-distribution-19-32
    gB
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(B-gB) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(B-gB) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(B-gB) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(B-gB) for 22 clue puzzles = (6646 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(B-gB) for 23 clue puzzles = (109995 106 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(B-gB) for 24 clue puzzles = (703272 780 32 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(B-gB) for 25 clue puzzles = (1811859 2453 94 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(B-gB) for 26 clue puzzles = (1998983 3233 123 9 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(B-gB) for 27 clue puzzles = (1005577 2039 77 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(B-gB) for 28 clue puzzles = (246600 632 25 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(B-gB) for 29 clue puzzles = (31349 96 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(B-gB) for 30 clue puzzles = (2076 11 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(B-gB) for 31 clue puzzles = (74 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(B-gB) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(B-gB)  = (5916599 9355 356 31 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(B-gB), expressed as percentages:
controlled-bias distribution: (99.8355815719745 0.157854515001916 0.0060070772143968 0.000523088184399722 3.3747624799982e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.8006673809903 0.191269902329582 0.00725405588521188 0.000760262478859742 4.83983160088366e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
real unbiased distribution: (99.80 0.191 0.0073 0.0009 4.8e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)



(compare-ratings-in-files
    B
    gB
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    5926343
)

9744 differences (i.e. 0.164 %)
9744 positive differences
0 negative differences

356 cases with diff = 2
31 cases with diff = 3
2 cases with diff = 4
no case with diff > 4


;;; Large differences:
#161579: B = 6; gB = 3; diff = 3
#421802: B = 10; gB = 7; diff = 3
#497756: B = 6; gB = 3; diff = 3
#680433: B = 6; gB = 3; diff = 3
#870108: B = 7; gB = 4; diff = 3
#903492: B = 6; gB = 3; diff = 3
...

#2862: B = 6; gB = 2; diff = 4
#2678196: B = 6; gB = 2; diff = 4



Largest B-gB difference = 4. Two cases:
#2862: B = 6; gB = 2; diff = 4
+-------+-------+-------+
! 1 . . ! . . 6 ! . . 9 !
! . . . ! . . . ! . . . !
! . 8 . ! 1 . . ! 5 6 . !
+-------+-------+-------+
! . 3 . ! 6 . . ! 8 . 1 !
! . . . ! . . . ! . . 7 !
! . . . ! . . 8 ! 2 4 6 !
+-------+-------+-------+
! . 4 . ! 9 . . ! . 2 . !
! 5 6 . ! 8 4 1 ! . . . !
! . . 7 ! . . 3 ! . . . !
+-------+-------+-------+
1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3...


#2678196: B = 6; gB = 2; diff = 4
+-------+-------+-------+
! . 2 . ! . 5 6 ! . 8 9 !
! . . . ! 1 . 9 ! . 3 . !
! 8 . . ! . . . ! 1 . . !
+-------+-------+-------+
! . . . ! . 3 . ! . 4 . !
! . . 4 ! . . 2 ! . . . !
! . . 6 ! 5 . 4 ! . . 2 !
+-------+-------+-------+
! . 4 . ! . 6 . ! . . 7 !
! 6 . . ! . 7 . ! . . 3 !
! . 1 2 ! . . . ! . . 8 !
+-------+-------+-------+
.2..56.89...1.9.3.8.....1......3..4...4..2.....65.4..2.4..6...76...7...3.12.....8




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) Most extreme comparisons: W vs gB
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(diff-X-Y-unbiased-distribution-19-32
    gB
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(W-gB) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(W-gB) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(W-gB) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(W-gB) for 22 clue puzzles = (6640 10 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(W-gB) for 23 clue puzzles = (109853 235 12 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(W-gB) for 24 clue puzzles = (702266 1711 97 11 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(W-gB) for 25 clue puzzles = (1808511 5575 299 27 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(W-gB) for 26 clue puzzles = (1993792 8111 406 34 3 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(W-gB) for 27 clue puzzles = (1001866 5538 270 22 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(W-gB) for 28 clue puzzles = (245360 1793 95 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(W-gB) for 29 clue puzzles = (31123 309 14 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(W-gB) for 30 clue puzzles = (2051 33 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(W-gB) for 31 clue puzzles = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(W-gB) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(W-gB)  = (5901703 23316 1197 112 8 6 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(W-gB), expressed as percentages:
controlled-bias distribution: (99.5842292624642 0.393429809918191 0.0201979534427893 0.00188986698879899 0.000134990499199928 0.000101242874399946 1.6873812399991e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.460472099544 0.510633432173902 0.02612069367832 0.00252792993017201 0.000151685186167251 7.82234565109812e-05 1.59360308809584e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
real unbiased distribution: (99.46 0.511 0.0261 0.0025 0.00015 7.8e-05 1.6e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)




(compare-ratings-in-files
    W
    gB
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gB-ratings.txt")
    5926343
)
24640 differences (i.e. 0.416 %)
24640 positive differences
0 negative differences

1197 cases with diff = 2 (0.0202 %)
112 cases with diff = 3
8 cases with diff = 4
6 cases with diff = 5
1 cases with diff = 6
no case with diff > 6

Large differences (remember that gW and B do not have any a priori relation)
#336080: W = 9; gB = 5; diff = 4 (and B = 5, gW = 6): gB = B < gW < W
#2678196: W = 6; gB = 2; diff = 4
#3067241: W = 7; gB = 3; diff = 4
...
#2862: W = 7; gB = 2; diff = 5 (and B = 6, gW = 2): gB = gW < B < W
#903492: W = 8; gB = 3; diff = 5 (and B = 6, gW = 3): gB = gW < B < W
#1095754: W = 12; gB = 7; diff = 5
#2631235: W = 14; gB = 9; diff = 5
#3948897: W = 14; gB = 9; diff = 5
#4024883: W = 14; gB = 9; diff = 5

#421802: W = 13; gB = 7; diff = 6 (and gW = 7, B = 10): gB = gW < B < W




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5) Comparisons of unrelated ratings: gW vs B
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(diff-X-Y-unbiased-distribution-19-32
    gW
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    5926343
)
distribution of abs(B-gW) for 19 clue puzzles = (0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
distribution of abs(B-gW) for 20 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
distribution of abs(B-gW) for 21 clue puzzles = (164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 164)
distribution of abs(B-gW) for 22 clue puzzles = (6643 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6651)
distribution of abs(B-gW) for 23 clue puzzles = (109894 204 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 110103)
distribution of abs(B-gW) for 24 clue puzzles = (702674 1364 44 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 704089)
distribution of abs(B-gW) for 25 clue puzzles = (1809657 4602 144 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1814413)
distribution of abs(B-gW) for 26 clue puzzles = (1995525 6617 192 13 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2002349)
distribution of abs(B-gW) for 27 clue puzzles = (1003060 4499 133 7 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1007700)
distribution of abs(B-gW) for 28 clue puzzles = (245745 1463 50 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 247259)
distribution of abs(B-gW) for 29 clue puzzles = (31186 256 5 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31449)
distribution of abs(B-gW) for 30 clue puzzles = (2057 29 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2088)
distribution of abs(B-gW) for 31 clue puzzles = (73 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 74)
distribution of abs(B-gW) for 32 clue puzzles = (2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2)
global distribution of abs(B-gW)  = (5906682 19043 575 40 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5926343)

Distributions for abs(B-gW), expressed as percentages:
controlled-bias distribution: (99.6682439744038 0.321328009533029 0.00970244212999484 0.000674952495999641 5.06214371999731e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)
real unbiased distribution: (99.5692104460571 0.417211503933359 0.0126911657581314 0.000822549904489764 6.4334346889795e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

Manually arranged:
real unbiased distribution: (99.57 0.417 0.0127 0.00082 6.43e-05 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 100.0)

(compare-ratings-in-files
    gW
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-gW-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)

19661 differences
11093 positive differences
8568 negative differences


10800 cases with diff = 1
280 cases with diff = 2
12 cases with diff = 3
1 case with diff = 4

8243 cases with diff = -1
295 cases with diff = -2
28 cases with diff = -3
2 cases with diff = -4


#4024883: gW = 13; B = 9; diff = 4
#2862: gW = 2; B = 6; diff = -4
#2678196: gW = 2; B = 6; diff = -4
