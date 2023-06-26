SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN SN30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN SN30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN SN30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN SN30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN SN30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN SN30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN SN30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN SN30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN SN30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN SN30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN SN30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN SN30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN SN30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN SN30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN SN30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN SN30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN SN30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN SN30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN SN30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN SN30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN SN30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN SN30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN SN30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN SN30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN SN30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN SN30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN SN30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN SN30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN SN30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN SN1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN SN2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN SN3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN SN4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN SN5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN SN6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN SN7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN SN8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN SN9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN SN10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN SN11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN SN12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN SN13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN SN14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN SN15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN SN16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN SN17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN SN18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN SN19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN SN20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN SN21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN SN22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN SN23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN SN24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN SN25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN SN26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN SN27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN SN28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN SN29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN SN30
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
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS SN1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS SN2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS SN3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS SN4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS SN5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS SN6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS SN7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS SN8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS SN9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS SN10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS SN11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS SN12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS SN13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS SN14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS SN15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS SN16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS SN17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS SN18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS SN19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS SN20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS SN21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS SN22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS SN23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS SN24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS SN25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS SN26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS SN27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS SN28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS SN29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(SN_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS SN30
    FROM registry_48_01
) a