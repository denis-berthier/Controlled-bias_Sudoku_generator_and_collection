

;;; assemble B-ratings from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-B-ratings()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-B-ratings.txt"
            )
            " >> "
            (str-cat
                "all-B-ratings.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-B-ratings)
cat ../SMALL-CB-COLLECTIONS/000/000-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/227/227-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-B-ratings.txt >> all-B-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-B-ratings.txt >> all-B-ratings.txt



