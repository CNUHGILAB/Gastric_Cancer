SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN PA30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN PA30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN PA30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN PA30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN PA30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN PA30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN PA30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN PA30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN PA30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN PA30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN PA30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN PA30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN PA30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN PA30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN PA30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN PA30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN PA30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN PA30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN PA30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN PA30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN PA30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN PA30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN PA30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN PA30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN PA30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN PA30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN PA30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN PA30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN PA30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN PA1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN PA2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN PA3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN PA4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN PA5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN PA6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN PA7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN PA8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN PA9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN PA10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN PA11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN PA12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN PA13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN PA14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN PA15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN PA16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN PA17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN PA18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN PA19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN PA20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN PA21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN PA22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN PA23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN PA24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN PA25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN PA26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN PA27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN PA28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN PA29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN PA30
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
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS PA1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS PA2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS PA3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS PA4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS PA5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS PA6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS PA7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS PA8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS PA9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS PA10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS PA11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS PA12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS PA13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS PA14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS PA15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS PA16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS PA17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS PA18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS PA19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS PA20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS PA21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS PA22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS PA23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS PA24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS PA25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS PA26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS PA27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS PA28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS PA29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(PA_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS PA30
    FROM pancreatic_amylase_09
) a
