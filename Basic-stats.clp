
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                                BASIC STATISTICS
;;;                   FOR THE CONTROLLED-BIAS PUZZLES COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;             January 2006 - July 2024               ;;;
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
;;; 1) Basic results about the numbers of clues or candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Before BRT
(file-min-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues.txt"
)
min = 20
(file-max-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues.txt"
)
max = 32
(file-mean-and-sd
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues.txt"
)
(25.6667316308334 1.11666812096053)

(file-min-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands.txt"
)
min = 160
(file-max-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands.txt"
)
max = 266
(file-mean-and-sd
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands.txt"
)
(206.127719214409 10.9329858471867)


;;; After BRT
(file-min-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt"
)
min = 22
(file-max-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt"
)
max = 81
(file-mean-and-sd
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt"
)
(54.3596485455451 20.6147104047229)

(file-min-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt"
)
min = 0
(file-max-value
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt"
)
max = 255
(file-mean-and-sd
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt"
)
(84.1482885569923 68.4475689896389)




;;; HIGH CORRELATION correlation (-0.81) between the number of clues at the start and the number of candidates at the start:
(correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    5926343
)
E(nb-clues) = 25.6667359617875
E(nb-cands) = 206.12775399599
Sigma(nb-clues) = 1.11661844035196
Sigma(nb-cands) = 10.9326588835376
correlation-coefficient(nb-clues, nb-cands) = -0.809892312322604
regression nb-cands = a * nb-clues + b
a = -7.92954519023672
b = 409.653296690858
;;; same (-0.81) if we discard the puzzles in BRT:
(nonZ0-correlation-coefficient
    nb-clues
    nb-cands
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-clues) = 25.7853430073784
E(nb-cands) = 204.953387366644
Sigma(nb-clues) = 1.12561945935679
Sigma(nb-cands) = 10.9009385169656
correlation-coefficient(nb-clues, nb-cands) = -0.811721201993818
regression nb-cands = a * nb-clues + b
a = -7.86102518244332
b = 407.652618085585

;;; Remains high if we discard puzzles with small B rating
(Zgtz-correlation-coefficient
    nb-clues
    nb-cands
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5
    5926343
)
correlation-coefficient(nb-clues, nb-cands) = -0.823160185706118
(Zgtz-correlation-coefficient
    nb-clues
    nb-cands
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    6
    5926343
)
correlation-coefficient(nb-clues, nb-cands) = -0.825325129853568
(Zgtz-correlation-coefficient
    nb-clues
    nb-cands
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    7
    5926343
)
correlation-coefficient(nb-clues, nb-cands) = -0.828024086062845


;;; same if we consider sqr(nb-clues) instead of nb-clues
(sqr-correlation-coefficient
    nb-clues
    nb-cands
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    5926343
)
E(nb-clues) = 25.6667359617875
E(sqr(nb-cands)) = 14.3521082667307
Sigma(nb-clues) = 1.11661844035196
Sigma(sqr(nb-cands)) = 0.380450122919594
correlation-coefficient(nb-clues, sqr(nb-cands)) = -0.810320857726109
regression sqr(nb-cands) = a * nb-clues + b
a = -0.276089538543744
b = 21.4384255543448



;;; No correlation (-0.136) between the number of clues at the start and the number of clues after BRT:
(correlation-coefficient
    nb-clues
    nb-clues-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    5926343
)
E(nb-clues) = 25.6667359617875
E(nb-clues-after-BRT) = 54.3596577180877
Sigma(nb-clues) = 1.11661844035196
Sigma(nb-clues-after-BRT) = 20.6147000502639
correlation-coefficient(nb-clues, nb-clues-after-BRT) = -0.136108279874979
regression nb-clues-after-BRT = a * nb-clues + b
a = -2.51279332544038
b = 118.854860528708

;;; Still less correlation (0.004) if we discard the puzzles in BRT:
(nonZ0-correlation-coefficient
    nb-clues
    nb-clues-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-clues) = 25.7853430073784
E(nb-clues-after-BRT) = 39.9616979709311
Sigma(nb-clues) = 1.12561945935679
Sigma(nb-clues-after-BRT) = 7.98585090664677
correlation-coefficient(nb-clues, nb-clues-after-BRT) = 0.00457375773715533
regression nb-clues-after-BRT = a * nb-clues + b
a = 0.0324491079719926
b = 39.1249865915898


;;; No correlation (-0.12) between the number of cands at the start and the number of cands after BRT:
(correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    5926343
)
E(nb-cands) = 206.12775399599
E(nb-cands-after-BRT) = 84.1483027560163
Sigma(nb-cands) = 10.9326588835376
Sigma(nb-cands-after-BRT) = 68.4475660364698
correlation-coefficient(nb-cands, nb-cands-after-BRT) = -0.126425532751113
regression nb-cands-after-BRT = a * nb-cands + b
a = -0.791529315408183
b = 247.304462763088
;;; even less if we discard the puzzles in BRT
(nonZ0-correlation-coefficient
    nb-cands
    nb-cands-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-cands) = 204.953387366644
E(nb-cands-after-BRT) = 129.626842898343
Sigma(nb-cands) = 10.9009385169656
Sigma(nb-cands-after-BRT) = 36.3580563796136
correlation-coefficient(nb-cands, nb-cands-after-BRT) = 0.0163824999902808
regression nb-cands-after-BRT = a * nb-cands + b
a = 0.0546407868789128
b = 118.428028539131



;;; VERY HIGH CORRELATION (-0.99) between the number of clues after BRT and the number of candidates after BRT:
(correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    5926343
)
E(nb-clues-after-BRT) = 54.3596577180877
E(nb-cands-after-BRT) = 84.1483027560163
Sigma(nb-clues-after-BRT) = 20.6147000502639
Sigma(nb-cands-after-BRT) = 68.4475660364698
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.98992246835023  <======
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -3.2868673014003
b = 262.821284224911

;;; REMAINS VERY HIGH (-0.98) EVEN IF THE BRT CASES ARE DISCARDED:
(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-clues-after-BRT) = 39.9616979709311
E(nb-cands-after-BRT) = 129.626842898343
Sigma(nb-clues-after-BRT) = 7.98585090664677
Sigma(nb-cands-after-BRT) = 36.3580563796136
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.982807308974929  <======
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -4.47453426913664
b = 308.436829922162

;;; Remember however that almost all the weight is for W in {0, 1, 2, 3, 4, 5}
;;; and that:
(sqr-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    5926343
)
E(nb-clues-after-BRT) = 54.3596577180877
E(sqr(nb-cands-after-BRT)) = 7.30752345515754
Sigma(nb-clues-after-BRT) = 20.6147000502639
Sigma(sqr(nb-cands-after-BRT)) = 5.54512431856479
correlation-coefficient(nb-clues-after-BRT, sqr(nb-cands-after-BRT)) = -0.996911865605113
regression sqr(nb-cands-after-BRT) = a * nb-clues-after-BRT + b
a = -0.268158169459368
b = 21.8845097612777

(sqr-correlation-coefficient
    nb-cands-after-BRT
    nb-clues-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    5926343
)
E(nb-cands-after-BRT) = 84.1483027560163
E(sqr(nb-clues-after-BRT)) = 7.24165601707961
Sigma(nb-cands-after-BRT) = 68.4475660364698
Sigma(sqr(nb-clues-after-BRT)) = 1.38494615360395
correlation-coefficient(nb-cands-after-BRT, sqr(nb-clues-after-BRT)) = -0.995154069256208
regression sqr(nb-clues-after-BRT) = a * nb-cands-after-BRT + b
a = -0.0201356290700733
b = 8.93603502825098


;;; remains high when restricted to the upper end W>6:
(Zgtz-correlation-coefficient
    nb-clues-after-BRT
    nb-cands-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    6
    5926343
)
# of B cases > 6 = 12767
E(nb-clues-after-BRT) = 31.0442547191979
E(nb-cands-after-BRT) = 174.108561134174
Sigma(nb-clues-after-BRT) = 3.03319660922506
Sigma(nb-cands-after-BRT) = 16.6066069643118
correlation-coefficient(nb-clues-after-BRT, nb-cands-after-BRT) = -0.936023445747673
regression nb-cands-after-BRT = a * nb-clues-after-BRT + b
a = -5.12468378265915
b = 333.200549838387



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

;;; but largely due to the BRT cases:
(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    nb-cands-after-W1
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-cands-after-BRT) = 129.626842898343
E(nb-cands-after-W1) = 101.025309756639
Sigma(nb-cands-after-BRT) = 36.3580563796136
Sigma(nb-cands-after-W1) = 54.0787794143135
correlation-coefficient(nb-cands-after-BRT, nb-cands-after-W1) = 0.551827638692116
regression nb-cands-after-W1 = a * nb-cands-after-BRT + b
a = 0.820785490730612
b = -5.37052210353762



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Mean number of candidates deleted by a clue
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(record-mean-cands-deleted-n-grids-after-first-p-from-text-file
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues.txt"
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands.txt"
    0
    5926343
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-mdel-at-start.txt"
)
(file-mean-and-sd
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel-at-start.txt")
)
(20.3951190743223 0.595978260716182)


(record-mean-cands-deleted-n-grids-after-first-p-from-text-file
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt"
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt"
    0
    5926343
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/OLD-all-mdel-after-BRT.txt"
)

(file-mean-and-sd
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/OLD-all-mdel-after-BRT.txt")
)
(13.150090851453 3.45656533141602)


;;; the final version retained in [HCCS2]
(record-mean-cands-deleted-n-grids-after-first-p-from-text-file
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-clues.txt"
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt"
    0
    5926343
    "/Users/berthier/Projects/CSP-Rules/CBGC/GLOBAL-CB-RESULTS/all.txt"
)
(file-mean-and-sd
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel.txt")
)
(25.1854482961418 3.01732457324827)

(file-nonZ0-mean-and-sd
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
)
(23.2871720584524 1.72317375219619)


(correlation-coefficient
    nb-clues
    mdel-after-BRT
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel-after-BRT.txt")
    5926343
)
E(nb-clues) = 25.6667359617875
E(mdel-after-BRT) = 25.1854525464049
Sigma(nb-clues) = 1.11661844035196
Sigma(mdel-after-BRT) = 3.0173070862318
correlation-coefficient(nb-clues, mdel-after-BRT) = -0.467966389412813
regression mdel-after-BRT = a * nb-clues + b
a = -1.2645307043725
b = 57.6418282511071






(correlation-coefficient
    mdel
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)
E(mdel) = 20.3951225156901
E(B) = 1.8990780655119
Sigma(mdel) = 0.595919423942577
Sigma(B) = 1.70193103036719
correlation-coefficient(mdel, B) = -0.135541613651193
regression B = a * mdel + b
a = -0.387103472232572
b = 9.79410080794425

(nonZ0-correlation-coefficient
    mdel
    B
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)



(correlation-coefficient
    mdel-after-BRT
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)
E(mdel-after-BRT) = 13.1500930703682
E(B) = 1.8990780655119
Sigma(mdel-after-BRT) = 3.45656140221723
Sigma(B) = 1.70193103036719
correlation-coefficient(mdel-after-BRT, B) = 0.794887386960718
regression B = a * mdel-after-BRT + b
a = 0.391384197210599
b = -3.24766055407883

;;; but mainly due to the B=0 case
(nonZ0-correlation-coefficient
    mdel-after-BRT
    B
    B
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-mdel-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    5926343
)
# of B≠0 cases = 3847133
E(mdel-after-BRT) = 15.3930399642874
E(B) = 2.92544811941795
Sigma(mdel-after-BRT) = 2.01639502741852
Sigma(B) = 1.20807617138531
correlation-coefficient(mdel-after-BRT, B) = 0.263485470742337
regression B = a * mdel-after-BRT + b
a = 0.157861190085146
b = 0.495484511627323







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
;;; checked manually:
14574 times diff = 1 (0.246 %)
625 times diff = 2 (0.011 %)
35 times diff = 3
3 times diff = 4
1 times diff = 5
664 times diff > 1 (0.011 %)
39 times diff > 2 (0.00066 %)

Large differences:
#336080: W = 9; B = 5; diff = 4
#2631235: W = 14; B = 10; diff = 4
#3948897: W = 14; B = 10; diff = 4
#4024883: W = 14; B = 9; diff = 5

The largest W-B difference is 5, with a unique case:
#4024883: W = 14; B = 9; diff = 5 (and gW = 13, gB = 9)
+-------+-------+-------+
! . 2 . ! 4 . . ! 7 . 9 !
! . . . ! . . . ! . 3 . !
! 6 . . ! . . 7 ! 5 . . !
+-------+-------+-------+
! . 6 5 ! . . . ! . . . !
! 7 . . ! . 1 3 ! 8 . . !
! . 3 . ! . . . ! . 2 . !
+-------+-------+-------+
! . . 6 ! . . 8 ! 1 . . !
! 5 . . ! 7 6 . ! . 9 3 !
! . . . ! . . 2 ! . . 8 !
+-------+-------+-------+
.2.4..7.9.......3.6....75...65......7...138...3.....2...6..81..5..76..93.....2..8 26   354017





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Correlation results involving W or B
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; EXTREMEMLY HIGH CORRELATION (0.9995) BETWEEN THE W AND B RATINGS:
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

;;; REMAINS EXTREMEMLY HIGH (0.998) EVEN IF THE BRT CASES ARE DISCARDED:
(nonZ0-correlation-coefficient
    B
    W
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-B-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(B) = 2.92544811941795
E(W) = 2.92959302420806
Sigma(B) = 1.20807617138531
Sigma(W) = 1.21896168258125
correlation-coefficient(B, W) = 0.99850492524117
regression W = a * B + b
a = 1.00750207028911
b = -0.0178020126289136



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

;;; remains very low (0.16) even if the BRT cases are discarded:
(nonZ0-correlation-coefficient
    nb-clues
    W
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-clues) = 25.7853430073784
E(W) = 2.92959302420806
Sigma(nb-clues) = 1.12561945935679
Sigma(W) = 1.21896168258125
correlation-coefficient(nb-clues, W) = 0.157670547903203
regression W = a * nb-clues + b
a = 0.170745410243192
b = -1.4731359458482



;;; Significant correlation (-0.82) between the W rating and the number of clues after BRT:
(correlation-coefficient
    nb-clues-after-BRT
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
E(nb-clues-after-BRT) = 54.3596577180877
E(W) = 1.90176876363716
Sigma(nb-clues-after-BRT) = 20.6147000502639
Sigma(W) = 1.70858037850751
correlation-coefficient(nb-clues-after-BRT, W) = -0.822049119867544
regression W = a * nb-clues-after-BRT + b
a = -0.0681327883961654
b = 5.6054438202316

;;; but mainly due to the BRT cases
(nonZ0-correlation-coefficient
    nb-clues-after-BRT
    W
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-clues-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-clues-after-BRT) = 39.9616979709311
E(W) = 2.92959302420806
Sigma(nb-clues-after-BRT) = 7.98585090664677
Sigma(W) = 1.21896168258125
correlation-coefficient(nb-clues-after-BRT, W) = -0.248848010292709
regression W = a * nb-clues-after-BRT + b
a = -0.0379842039225806
b = 4.44750630902848



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

;;; but mainly due to the BRT cases:
(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    W
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-cands-after-BRT) = 129.626842898343
E(W) = 2.92959302420806
Sigma(nb-cands-after-BRT) = 36.3580563796136
Sigma(W) = 1.21896168258125
correlation-coefficient(nb-cands-after-BRT, W) = 0.242471159905347
regression W = a * nb-cands-after-BRT + b
a = 0.00812923138601473
b = 1.87582642444885



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

;;; but due in large part to the W = 0 cases:
(nonZ0-correlation-coefficient
    nb-cands-after-W1
    W
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-W1.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-cands-after-W1) = 101.025309756639
E(W) = 2.92959302420806
Sigma(nb-cands-after-W1) = 54.0787794143135
Sigma(W) = 1.21896168258125
correlation-coefficient(nb-cands-after-W1, W) = 0.684738382427939
regression W = a * nb-cands-after-W1 + b
a = 0.0154343322799072
b = 1.37033482474354




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

;;; in part due to the BRT cases:
(nonZ0-correlation-coefficient
    W
    FPGXnoU
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-FPGXnoU-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(W) = 2.92959302420806
E(FPGXnoU) = 5.81632363632881
Sigma(W) = 1.21896168258125
Sigma(FPGXnoU) = 2.09325617620534
correlation-coefficient(W, FPGXnoU) = 0.796206062097934
regression FPGXnoU = a * W + b
a = 1.36728108917201
b = 1.81074649535889



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

;;; in part due to the case W=0:
(nonZ0-correlation-coefficient
    W
    SER
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(W) = 2.92959302420806
E(SER) = 5.68667337469198
Sigma(W) = 1.21896168258125
Sigma(SER) = 2.07992147926136
correlation-coefficient(W, SER) = 0.791009985383735
regression SER = a * W + b
a = 1.34970498451266
b = 1.73258706732486


(correlation-coefficient
    nb-cands-after-BRT
    SER
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    5926343
)
E(nb-cands-after-BRT) = 84.1483027560163
E(SER) = 4.29323709410655
Sigma(nb-cands-after-BRT) = 68.4475660364698
Sigma(SER) = 2.53596598822567
correlation-coefficient(nb-cands-after-BRT, SER) = 0.727406880631452
regression SER = a * nb-cands-after-BRT + b
a = 0.026950251348599
b = 2.0254191842739
;;; mainly due to the BRT puzzles
(nonZ0-correlation-coefficient
    nb-cands-after-BRT
    SER
    W
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-nb-cands-after-BRT.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-SER.txt")
    (str-cat ?*CBGC* "GLOBAL-CB-RESULTS/all-W-ratings.txt")
    5926343
)
# of W≠0 cases = 3847133
E(nb-cands-after-BRT) = 129.626842898343
E(SER) = 5.68667337469198
Sigma(nb-cands-after-BRT) = 36.3580563796136
Sigma(SER) = 2.07992147926136
correlation-coefficient(nb-cands-after-BRT, SER) = 0.183507715185873
regression SER = a * nb-cands-after-BRT + b
a = 0.0104978559480777
b = 4.32586945094107



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



