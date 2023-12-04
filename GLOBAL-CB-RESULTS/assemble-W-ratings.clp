

;;; assemble W-ratings from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-W-ratings()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-W-ratings.txt"
            )
            " >> "
            (str-cat
                "all-W-ratings.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-W-ratings)
 cat ../SMALL-CB-COLLECTIONS/000/000-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/001/001-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/002/002-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/003/003-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/005/005-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/007/007-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/011/011-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/013/013-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/017/017-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/019/019-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/023/023-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/029/029-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/031/031-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/037/037-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/041/041-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/043/043-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/047/047-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/053/053-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/059/059-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/061/061-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/067/067-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/071/071-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/073/073-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/079/079-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/083/083-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/089/089-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/097/097-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/101/101-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/103/103-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/107/107-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/109/109-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/113/113-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/127/127-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/131/131-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/137/137-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/139/139-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/149/149-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/151/151-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/157/157-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/163/163-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/167/167-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/173/173-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/179/179-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/181/181-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/191/191-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/193/193-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/197/197-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/199/199-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/211/211-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/223/223-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/227/227-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/229/229-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/233/233-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/239/239-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/241/241-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/251/251-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/257/257-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/263/263-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/269/269-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/271/271-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/277/277-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/281/281-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/283/283-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/293/293-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/307/307-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/311/311-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/313/313-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/317/317-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/331/331-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/337/337-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/347/347-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/349/349-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/353/353-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/359/359-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/367/367-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/373/373-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/379/379-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/383/383-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/389/389-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/397/397-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/401/401-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/409/409-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/419/419-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/421/421-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/431/431-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/433/433-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/439/439-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/443/443-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/449/449-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/457/457-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/461/461-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/463/463-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/467/467-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/479/479-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/487/487-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/491/491-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/499/499-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/503/503-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/509/509-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/521/521-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/523/523-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/541/541-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/547/547-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/557/557-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/563/563-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/569/569-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/571/571-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/593/593-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/599/599-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/601/601-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/607/607-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/613/613-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/617/617-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/619/619-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/631/631-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/641/641-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/643/643-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/647/647-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/653/653-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/659/659-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/661/661-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/673/673-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/677/677-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/683/683-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/691/691-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/701/701-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/709/709-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/719/719-W-ratings.txt >> all-W-ratings.txt
 cat ../SMALL-CB-COLLECTIONS/727/727-W-ratings.txt >> all-W-ratings.txt



