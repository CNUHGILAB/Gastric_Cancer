SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN Lipase30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN Lipase30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN Lipase30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN Lipase30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN Lipase30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN Lipase30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN Lipase30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN Lipase30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN Lipase30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN Lipase30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN Lipase30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN Lipase30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN Lipase30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN Lipase30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN Lipase30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN Lipase30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN Lipase30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN Lipase30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN Lipase30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN Lipase30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN Lipase30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN Lipase30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN Lipase30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN Lipase30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN Lipase30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN Lipase30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN Lipase30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN Lipase30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN Lipase30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN Lipase1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN Lipase2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN Lipase3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN Lipase4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN Lipase5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN Lipase6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN Lipase7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN Lipase8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN Lipase9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN Lipase10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN Lipase11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN Lipase12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN Lipase13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN Lipase14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN Lipase15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN Lipase16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN Lipase17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN Lipase18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN Lipase19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN Lipase20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN Lipase21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN Lipase22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN Lipase23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN Lipase24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN Lipase25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN Lipase26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN Lipase27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN Lipase28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN Lipase29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN Lipase30
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
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS Lipase1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS Lipase2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS Lipase3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS Lipase4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS Lipase5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS Lipase6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS Lipase7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS Lipase8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS Lipase9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS Lipase10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS Lipase11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS Lipase12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS Lipase13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS Lipase14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS Lipase15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS Lipase16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS Lipase17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS Lipase18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS Lipase19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS Lipase20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS Lipase21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS Lipase22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS Lipase23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS Lipase24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS Lipase25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS Lipase26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS Lipase27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS Lipase28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS Lipase29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(Lipase_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS Lipase30
    FROM registry_44_01
) a