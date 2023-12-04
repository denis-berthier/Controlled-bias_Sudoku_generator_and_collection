

;;; assemble FPGXnoU from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-FPGXnoU()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-FPGXnoU-ratings.txt"
            )
            " >> "
            (str-cat
                "all-FPGXnoU-ratings.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-FPGXnoU)
cat ../SMALL-CB-COLLECTIONS/000/000-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/001/001-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/002/002-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/003/003-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/005/005-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/007/007-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/011/011-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/013/013-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/017/017-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/019/019-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/023/023-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/029/029-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/031/031-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/037/037-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/041/041-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/043/043-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/047/047-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/053/053-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/059/059-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/061/061-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/067/067-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/071/071-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/073/073-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/079/079-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/083/083-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/089/089-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/097/097-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/101/101-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/103/103-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/107/107-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/109/109-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/113/113-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/127/127-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/131/131-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/137/137-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/139/139-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/149/149-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/151/151-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/157/157-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/163/163-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/167/167-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/173/173-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/179/179-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/181/181-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/191/191-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/193/193-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/197/197-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/199/199-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/211/211-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/223/223-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/227/227-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/229/229-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/233/233-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/239/239-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/241/241-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/251/251-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/257/257-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/263/263-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/269/269-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/271/271-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/277/277-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/281/281-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/283/283-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/293/293-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/307/307-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/311/311-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/313/313-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/317/317-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/331/331-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/337/337-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/347/347-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/349/349-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/353/353-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/359/359-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/367/367-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/373/373-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/379/379-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/383/383-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/389/389-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/397/397-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/401/401-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/409/409-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/419/419-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/421/421-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/431/431-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/433/433-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/439/439-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/443/443-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/449/449-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/457/457-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/461/461-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/463/463-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/467/467-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/479/479-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/487/487-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/491/491-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/499/499-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/503/503-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/509/509-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/521/521-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/523/523-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/541/541-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/547/547-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/557/557-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/563/563-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/569/569-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/571/571-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/593/593-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/599/599-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/601/601-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/607/607-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/613/613-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/617/617-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/619/619-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/631/631-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/641/641-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/643/643-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/647/647-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/653/653-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/659/659-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/661/661-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/673/673-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/677/677-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/683/683-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/691/691-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/701/701-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/709/709-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/719/719-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt
cat ../SMALL-CB-COLLECTIONS/727/727-FPGXnoU-ratings.txt >> all-FPGXnoU-ratings.txt



