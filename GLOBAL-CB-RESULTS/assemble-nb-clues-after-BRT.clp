

;;; assemble nb-clues-after-BRT from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-nb-clues-after-BRT()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-nb-clues-after-BRT.txt"
            )
            " >> "
            (str-cat
                "all-nb-clues-after-BRT.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-nb-clues-after-BRT)
 cat ../SMALL-CB-COLLECTIONS/000/000-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/227/227-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-nb-clues-after-BRT.txt >> all-nb-clues-after-BRT.txt



