

;;; assemble gW-ratings from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-gW-ratings()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-gW-ratings.txt"
            )
            " >> "
            (str-cat
                "all-gW-ratings.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-gW-ratings)
 cat ../SMALL-CB-COLLECTIONS/000/000-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/227/227-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-gW-ratings.txt >> all-gW-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-gW-ratings.txt >> all-gW-ratings.txt



