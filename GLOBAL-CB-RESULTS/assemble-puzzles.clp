

;;; assemble puzzles from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-puzzles()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-puzzles.txt"
            )
            " >> "
            (str-cat
                "all-puzzles.txt"
            )
           crlf
        )
    )
)



(Unix-assemble-puzzles)
 cat ../SMALL-CB-COLLECTIONS/000/000-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/227/227-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-puzzles.txt >> all-puzzles.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-puzzles.txt >> all-puzzles.txt



