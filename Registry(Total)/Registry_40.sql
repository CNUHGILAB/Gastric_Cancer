SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN CONCAT('P.Amylase: ', PA)
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN CONCAT('P.Amylase: ', PA)
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
        END AS DATE30
    FROM registry_40_01
) a
