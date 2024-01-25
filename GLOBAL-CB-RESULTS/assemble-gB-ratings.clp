

;;; assemble gB-ratings from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-gB-ratings()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-gB-ratings.txt"
            )
            " >> "
            (str-cat
                "all-gB-ratings.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-gB-ratings)
 cat ../SMALL-CB-COLLECTIONS/000/000-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-gB-ratings.txt >> all-gB-ratings.txt



THE FOLLOWING FILES ARE NOT PRESENT
 cat ../SMALL-CB-COLLECTIONS/227/227-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-gB-ratings.txt >> all-gB-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-gB-ratings.txt >> all-gB-ratings.txt



