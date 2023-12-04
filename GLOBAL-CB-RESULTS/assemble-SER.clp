

;;; assemble SER from the "SMALL-CB-COLLECTIONS" folder to the "GLOBAL-CB-RESULTS" folder

(defglobal ?*primes* = (create$
    "000"  "001"  "002"  "003"  "005"  "007"  "011"  "013"  "017"  "019"  "023"  "029"  "031"  "037"  "041" "043"  "047"  "053"  "059"  "061"  "067"  "071"  "073"  "079"  "083"  "089"  "097"  "101"  "103"  "107"  "109"  "113"  "127"  "131"  "137"  "139"  "149"  "151"  "157"  "163"  "167"  "173"  "179"  "181"  "191"  "193"  "197"  "199"  "211"  "223"  "227"  "229"  "233"  "239"  "241"  "251"  "257"  "263"  "269"  "271"  "277"  "281"  "283"  "293"  "307"  "311"  "313"  "317"  "331"  "337"  "347"  "349"  "353"  "359"  "367"  "373"  "379"  "383"  "389"  "397"  "401"  "409"  "419"  "421"  "431"  "433"  "439"  "443"  "449"  "457"  "461"  "463"  "467"  "479"  "487"  "491"  "499"  "503"  "509"  "521"  "523"  "541"  "547"  "557"  "563"  "569"  "571"  "593"  "599"  "601"  "607"  "613"  "617"  "619"  "631"  "641"  "643"  "647"  "653"  "659"  "661"  "673"  "677"  "683"  "691"  "701"  "709"  "719"  "727"
))



(deffunction Unix-assemble-SER()
    (foreach ?p ?*primes*
        (printout t
            "cat "
            (str-cat
                "../SMALL-CB-COLLECTIONS/"
                ?p
                "/"
                ?p
                "-SER.txt"
            )
            " >> "
            (str-cat
                "all-SER.txt"
            )
           crlf
        )
    )
)






(Unix-assemble-SER)
cat ../SMALL-CB-COLLECTIONS/000/000-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/001/001-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/002/002-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/003/003-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/005/005-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/007/007-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/011/011-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/013/013-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/017/017-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/019/019-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/023/023-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/029/029-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/031/031-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/037/037-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/041/041-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/043/043-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/047/047-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/053/053-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/059/059-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/061/061-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/067/067-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/071/071-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/073/073-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/079/079-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/083/083-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/089/089-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/097/097-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/101/101-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/103/103-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/107/107-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/109/109-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/113/113-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/127/127-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/131/131-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/137/137-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/139/139-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/149/149-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/151/151-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/157/157-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/163/163-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/167/167-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/173/173-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/179/179-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/181/181-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/191/191-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/193/193-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/197/197-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/199/199-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/211/211-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/223/223-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/227/227-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/229/229-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/233/233-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/239/239-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/241/241-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/251/251-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/257/257-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/263/263-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/269/269-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/271/271-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/277/277-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/281/281-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/283/283-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/293/293-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/307/307-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/311/311-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/313/313-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/317/317-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/331/331-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/337/337-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/347/347-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/349/349-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/353/353-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/359/359-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/367/367-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/373/373-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/379/379-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/383/383-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/389/389-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/397/397-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/401/401-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/409/409-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/419/419-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/421/421-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/431/431-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/433/433-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/439/439-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/443/443-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/449/449-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/457/457-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/461/461-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/463/463-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/467/467-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/479/479-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/487/487-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/491/491-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/499/499-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/503/503-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/509/509-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/521/521-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/523/523-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/541/541-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/547/547-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/557/557-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/563/563-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/569/569-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/571/571-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/593/593-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/599/599-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/601/601-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/607/607-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/613/613-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/617/617-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/619/619-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/631/631-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/641/641-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/643/643-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/647/647-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/653/653-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/659/659-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/661/661-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/673/673-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/677/677-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/683/683-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/691/691-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/701/701-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/709/709-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/719/719-SER.txt >> all-SER.txt
cat ../SMALL-CB-COLLECTIONS/727/727-SER.txt >> all-SER.txt



