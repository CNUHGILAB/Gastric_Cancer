SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN WBC30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN WBC30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN WBC30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN WBC30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN WBC30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN WBC30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN WBC30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN WBC30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN WBC30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN WBC30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN WBC30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN WBC30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN WBC30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN WBC30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN WBC30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN WBC30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN WBC30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN WBC30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN WBC30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN WBC30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN WBC30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN WBC30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN WBC30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN WBC30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN WBC30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN WBC30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN WBC30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN WBC30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN WBC30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN WBC1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN WBC2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN WBC3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN WBC4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN WBC5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN WBC6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN WBC7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN WBC8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN WBC9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN WBC10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN WBC11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN WBC12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN WBC13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN WBC14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN WBC15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN WBC16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN WBC17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN WBC18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN WBC19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN WBC20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN WBC21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN WBC22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN WBC23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN WBC24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN WBC25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN WBC26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN WBC27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN WBC28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN WBC29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN WBC30
        ELSE NULL
    END AS POD30
FROM(
    SELECT *,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 1)
            ELSE NULL
        END AS DATE1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 2)
            ELSE NULL
        END AS DATE2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 3)
            ELSE NULL
        END AS DATE3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 4)
            ELSE NULL
        END AS DATE4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 5)
            ELSE NULL
        END AS DATE5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 6)
            ELSE NULL
        END AS DATE6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 7)
            ELSE NULL
        END AS DATE7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 8)
            ELSE NULL
        END AS DATE8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 9)
            ELSE NULL
        END AS DATE9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 10)
            ELSE NULL
        END AS DATE10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 11)
            ELSE NULL
        END AS DATE11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 12)
            ELSE NULL
        END AS DATE12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 13)
            ELSE NULL
        END AS DATE13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 14)
            ELSE NULL
        END AS DATE14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 15)
            ELSE NULL
        END AS DATE15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 16)
            ELSE NULL
        END AS DATE16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 17)
            ELSE NULL
        END AS DATE17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 18)
            ELSE NULL
        END AS DATE18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 19)
            ELSE NULL
        END AS DATE19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 20)
            ELSE NULL
        END AS DATE20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 21)
            ELSE NULL
        END AS DATE21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 22)
            ELSE NULL
        END AS DATE22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 23)
            ELSE NULL
        END AS DATE23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 24)
            ELSE NULL
        END AS DATE24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 25)
            ELSE NULL
        END AS DATE25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 26)
            ELSE NULL
        END AS DATE26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 27)
            ELSE NULL
        END AS DATE27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 28)
            ELSE NULL
        END AS DATE28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 29)
            ELSE NULL
        END AS DATE29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(`DATE`, '[^,]+', 1, 30)
            ELSE NULL
        END AS DATE30,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS WBC1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS WBC2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS WBC3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS WBC4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS WBC5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS WBC6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS WBC7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS WBC8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS WBC9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS WBC10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS WBC11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS WBC12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS WBC13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS WBC14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS WBC15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS WBC16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS WBC17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS WBC18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS WBC19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS WBC20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS WBC21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS WBC22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS WBC23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS WBC24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS WBC25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS WBC26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS WBC27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS WBC28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS WBC29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(WBC_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS WBC30
    FROM registry_46_01
) a