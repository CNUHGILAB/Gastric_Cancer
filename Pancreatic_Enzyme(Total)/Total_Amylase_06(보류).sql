SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN TA30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN TA30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN TA30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN TA30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN TA30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN TA30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN TA30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN TA30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN TA30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN TA30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN TA30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN TA30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN TA30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN TA30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN TA30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN TA30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN TA30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN TA30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN TA30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN TA30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN TA30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN TA30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN TA30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN TA30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN TA30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN TA30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN TA30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN TA30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN TA30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN TA1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN TA2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN TA3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN TA4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN TA5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN TA6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN TA7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN TA8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN TA9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN TA10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN TA11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN TA12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN TA13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN TA14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN TA15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN TA16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN TA17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN TA18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN TA19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN TA20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN TA21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN TA22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN TA23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN TA24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN TA25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN TA26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN TA27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN TA28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN TA29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN TA30
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
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS TA1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS TA2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS TA3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS TA4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS TA5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS TA6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS TA7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS TA8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS TA9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS TA10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS TA11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS TA12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS TA13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS TA14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS TA15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS TA16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS TA17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS TA18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS TA19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS TA20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS TA21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS TA22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS TA23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS TA24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS TA25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS TA26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS TA27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS TA28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS TA29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(TA_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS TA30
    FROM registry_42_01
) a