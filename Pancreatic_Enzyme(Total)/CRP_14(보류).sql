SELECT
    ID,
    CHKID,
    Op_Date,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 1
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 1
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 1
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 1
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 1
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 1
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 1
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 1
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 1
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 1
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 1
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 1
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 1
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 1
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 1
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 1
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 1
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 1
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 1
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 1
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 1
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 1
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 1
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 1
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 1
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 1
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 1
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 1
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 1
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 1
        THEN CRP30
        ELSE NULL
    END AS POD1,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 2
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 2
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 2
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 2
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 2
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 2
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 2
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 2
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 2
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 2
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 2
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 2
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 2
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 2
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 2
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 2
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 2
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 2
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 2
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 2
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 2
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 2
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 2
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 2
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 2
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 2
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 2
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 2
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 2
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 2
        THEN CRP30
        ELSE NULL
    END AS POD2,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 3
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 3
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 3
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 3
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 3
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 3
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 3
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 3
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 3
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 3
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 3
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 3
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 3
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 3
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 3
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 3
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 3
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 3
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 3
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 3
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 3
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 3
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 3
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 3
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 3
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 3
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 3
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 3
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 3
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 3
        THEN CRP30
        ELSE NULL
    END AS POD3,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 4
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 4
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 4
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 4
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 4
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 4
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 4
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 4
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 4
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 4
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 4
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 4
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 4
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 4
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 4
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 4
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 4
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 4
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 4
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 4
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 4
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 4
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 4
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 4
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 4
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 4
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 4
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 4
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 4
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 4
        THEN CRP30
        ELSE NULL
    END AS POD4,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 5
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 5
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 5
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 5
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 5
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 5
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 5
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 5
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 5
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 5
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 5
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 5
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 5
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 5
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 5
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 5
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 5
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 5
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 5
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 5
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 5
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 5
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 5
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 5
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 5
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 5
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 5
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 5
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 5
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 5
        THEN CRP30
        ELSE NULL
    END AS POD5,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 6
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 6
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 6
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 6
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 6
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 6
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 6
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 6
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 6
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 6
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 6
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 6
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 6
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 6
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 6
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 6
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 6
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 6
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 6
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 6
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 6
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 6
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 6
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 6
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 6
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 6
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 6
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 6
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 6
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 6
        THEN CRP30
        ELSE NULL
    END AS POD6,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 7
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 7
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 7
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 7
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 7
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 7
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 7
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 7
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 7
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 7
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 7
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 7
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 7
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 7
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 7
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 7
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 7
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 7
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 7
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 7
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 7
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 7
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 7
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 7
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 7
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 7
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 7
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 7
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 7
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 7
        THEN CRP30
        ELSE NULL
    END AS POD7,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 8
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 8
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 8
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 8
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 8
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 8
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 8
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 8
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 8
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 8
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 8
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 8
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 8
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 8
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 8
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 8
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 8
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 8
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 8
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 8
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 8
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 8
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 8
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 8
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 8
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 8
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 8
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 8
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 8
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 8
        THEN CRP30
        ELSE NULL
    END AS POD8,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 9
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 9
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 9
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 9
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 9
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 9
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 9
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 9
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 9
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 9
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 9
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 9
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 9
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 9
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 9
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 9
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 9
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 9
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 9
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 9
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 9
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 9
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 9
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 9
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 9
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 9
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 9
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 9
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 9
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 9
        THEN CRP30
        ELSE NULL
    END AS POD9,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 10
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 10
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 10
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 10
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 10
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 10
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 10
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 10
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 10
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 10
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 10
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 10
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 10
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 10
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 10
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 10
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 10
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 10
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 10
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 10
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 10
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 10
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 10
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 10
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 10
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 10
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 10
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 10
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 10
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 10
        THEN CRP30
        ELSE NULL
    END AS POD10,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 11
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 11
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 11
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 11
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 11
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 11
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 11
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 11
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 11
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 11
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 11
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 11
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 11
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 11
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 11
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 11
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 11
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 11
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 11
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 11
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 11
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 11
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 11
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 11
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 11
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 11
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 11
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 11
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 11
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 11
        THEN CRP30
        ELSE NULL
    END AS POD11,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 12
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 12
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 12
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 12
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 12
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 12
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 12
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 12
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 12
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 12
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 12
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 12
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 12
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 12
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 12
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 12
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 12
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 12
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 12
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 12
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 12
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 12
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 12
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 12
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 12
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 12
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 12
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 12
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 12
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 12
        THEN CRP30
        ELSE NULL
    END AS POD12,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 13
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 13
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 13
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 13
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 13
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 13
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 13
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 13
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 13
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 13
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 13
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 13
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 13
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 13
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 13
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 13
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 13
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 13
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 13
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 13
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 13
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 13
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 13
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 13
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 13
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 13
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 13
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 13
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 13
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 13
        THEN CRP30
        ELSE NULL
    END AS POD13,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 14
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 14
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 14
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 14
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 14
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 14
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 14
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 14
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 14
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 14
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 14
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 14
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 14
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 14
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 14
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 14
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 14
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 14
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 14
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 14
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 14
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 14
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 14
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 14
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 14
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 14
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 14
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 14
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 14
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 14
        THEN CRP30
        ELSE NULL
    END AS POD14,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 15
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 15
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 15
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 15
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 15
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 15
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 15
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 15
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 15
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 15
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 15
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 15
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 15
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 15
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 15
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 15
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 15
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 15
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 15
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 15
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 15
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 15
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 15
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 15
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 15
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 15
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 15
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 15
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 15
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 15
        THEN CRP30
        ELSE NULL
    END AS POD15,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 16
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 16
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 16
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 16
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 16
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 16
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 16
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 16
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 16
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 16
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 16
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 16
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 16
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 16
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 16
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 16
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 16
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 16
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 16
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 16
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 16
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 16
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 16
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 16
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 16
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 16
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 16
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 16
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 16
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 16
        THEN CRP30
        ELSE NULL
    END AS POD16,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 17
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 17
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 17
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 17
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 17
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 17
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 17
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 17
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 17
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 17
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 17
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 17
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 17
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 17
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 17
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 17
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 17
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 17
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 17
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 17
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 17
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 17
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 17
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 17
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 17
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 17
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 17
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 17
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 17
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 17
        THEN CRP30
        ELSE NULL
    END AS POD17,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 18
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 18
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 18
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 18
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 18
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 18
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 18
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 18
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 18
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 18
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 18
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 18
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 18
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 18
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 18
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 18
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 18
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 18
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 18
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 18
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 18
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 18
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 18
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 18
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 18
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 18
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 18
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 18
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 18
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 18
        THEN CRP30
        ELSE NULL
    END AS POD18,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 19
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 19
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 19
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 19
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 19
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 19
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 19
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 19
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 19
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 19
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 19
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 19
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 19
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 19
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 19
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 19
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 19
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 19
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 19
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 19
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 19
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 19
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 19
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 19
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 19
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 19
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 19
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 19
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 19
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 19
        THEN CRP30
        ELSE NULL
    END AS POD19,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 20
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 20
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 20
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 20
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 20
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 20
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 20
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 20
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 20
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 20
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 20
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 20
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 20
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 20
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 20
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 20
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 20
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 20
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 20
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 20
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 20
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 20
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 20
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 20
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 20
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 20
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 20
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 20
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 20
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 20
        THEN CRP30
        ELSE NULL
    END AS POD20,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 21
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 21
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 21
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 21
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 21
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 21
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 21
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 21
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 21
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 21
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 21
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 21
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 21
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 21
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 21
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 21
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 21
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 21
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 21
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 21
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 21
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 21
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 21
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 21
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 21
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 21
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 21
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 21
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 21
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 21
        THEN CRP30
        ELSE NULL
    END AS POD21,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 22
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 22
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 22
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 22
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 22
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 22
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 22
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 22
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 22
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 22
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 22
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 22
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 22
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 22
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 22
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 22
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 22
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 22
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 22
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 22
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 22
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 22
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 22
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 22
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 22
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 22
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 22
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 22
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 22
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 22
        THEN CRP30
        ELSE NULL
    END AS POD22,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 23
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 23
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 23
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 23
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 23
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 23
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 23
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 23
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 23
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 23
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 23
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 23
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 23
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 23
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 23
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 23
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 23
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 23
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 23
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 23
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 23
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 23
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 23
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 23
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 23
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 23
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 23
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 23
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 23
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 23
        THEN CRP30
        ELSE NULL
    END AS POD23,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 24
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 24
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 24
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 24
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 24
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 24
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 24
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 24
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 24
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 24
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 24
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 24
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 24
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 24
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 24
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 24
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 24
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 24
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 24
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 24
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 24
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 24
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 24
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 24
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 24
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 24
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 24
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 24
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 24
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 24
        THEN CRP30
        ELSE NULL
    END AS POD24,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 25
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 25
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 25
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 25
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 25
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 25
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 25
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 25
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 25
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 25
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 25
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 25
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 25
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 25
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 25
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 25
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 25
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 25
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 25
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 25
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 25
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 25
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 25
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 25
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 25
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 25
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 25
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 25
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 25
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 25
        THEN CRP30
        ELSE NULL
    END AS POD25,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 26
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 26
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 26
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 26
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 26
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 26
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 26
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 26
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 26
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 26
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 26
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 26
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 26
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 26
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 26
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 26
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 26
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 26
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 26
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 26
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 26
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 26
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 26
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 26
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 26
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 26
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 26
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 26
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 26
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 26
        THEN CRP30
        ELSE NULL
    END AS POD26,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 27
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 27
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 27
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 27
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 27
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 27
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 27
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 27
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 27
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 27
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 27
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 27
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 27
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 27
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 27
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 27
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 27
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 27
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 27
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 27
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 27
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 27
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 27
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 27
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 27
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 27
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 27
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 27
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 27
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 27
        THEN CRP30
        ELSE NULL
    END AS POD27,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 28
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 28
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 28
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 28
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 28
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 28
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 28
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 28
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 28
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 28
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 28
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 28
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 28
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 28
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 28
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 28
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 28
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 28
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 28
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 28
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 28
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 28
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 28
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 28
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 28
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 28
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 28
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 28
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 28
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 28
        THEN CRP30
        ELSE NULL
    END AS POD28,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 29
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 29
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 29
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 29
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 29
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 29
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 29
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 29
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 29
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 29
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 29
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 29
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 29
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 29
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 29
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 29
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 29
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 29
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 29
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 29
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 29
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 29
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 29
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 29
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 29
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 29
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 29
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 29
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 29
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 29
        THEN CRP30
        ELSE NULL
    END AS POD29,
    CASE 
        WHEN DATEDIFF(DATE1, Op_Date) = 30
        THEN CRP1
        WHEN DATEDIFF(DATE2, Op_Date) = 30
        THEN CRP2
        WHEN DATEDIFF(DATE3, Op_Date) = 30
        THEN CRP3
        WHEN DATEDIFF(DATE4, Op_Date) = 30
        THEN CRP4
        WHEN DATEDIFF(DATE5, Op_Date) = 30
        THEN CRP5
        WHEN DATEDIFF(DATE6, Op_Date) = 30
        THEN CRP6
        WHEN DATEDIFF(DATE7, Op_Date) = 30
        THEN CRP7
        WHEN DATEDIFF(DATE8, Op_Date) = 30
        THEN CRP8
        WHEN DATEDIFF(DATE9, Op_Date) = 30
        THEN CRP9
        WHEN DATEDIFF(DATE10, Op_Date) = 30
        THEN CRP10
        WHEN DATEDIFF(DATE11, Op_Date) = 30
        THEN CRP11
        WHEN DATEDIFF(DATE12, Op_Date) = 30
        THEN CRP12
        WHEN DATEDIFF(DATE13, Op_Date) = 30
        THEN CRP13
        WHEN DATEDIFF(DATE14, Op_Date) = 30
        THEN CRP14
        WHEN DATEDIFF(DATE15, Op_Date) = 30
        THEN CRP15
        WHEN DATEDIFF(DATE16, Op_Date) = 30
        THEN CRP16
        WHEN DATEDIFF(DATE17, Op_Date) = 30
        THEN CRP17
        WHEN DATEDIFF(DATE18, Op_Date) = 30
        THEN CRP18
        WHEN DATEDIFF(DATE19, Op_Date) = 30
        THEN CRP19
        WHEN DATEDIFF(DATE20, Op_Date) = 30
        THEN CRP20
        WHEN DATEDIFF(DATE21, Op_Date) = 30
        THEN CRP21
        WHEN DATEDIFF(DATE22, Op_Date) = 30
        THEN CRP22
        WHEN DATEDIFF(DATE23, Op_Date) = 30
        THEN CRP23
        WHEN DATEDIFF(DATE24, Op_Date) = 30
        THEN CRP24
        WHEN DATEDIFF(DATE25, Op_Date) = 30
        THEN CRP25
        WHEN DATEDIFF(DATE26, Op_Date) = 30
        THEN CRP26
        WHEN DATEDIFF(DATE27, Op_Date) = 30
        THEN CRP27
        WHEN DATEDIFF(DATE28, Op_Date) = 30
        THEN CRP28
        WHEN DATEDIFF(DATE29, Op_Date) = 30
        THEN CRP29
        WHEN DATEDIFF(DATE30, Op_Date) = 30
        THEN CRP30
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
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 1), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 1)
            ELSE NULL
        END AS CRP1,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 2), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 2)
            ELSE NULL
        END AS CRP2,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 3), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 3)
            ELSE NULL
        END AS CRP3,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 4), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 4)
            ELSE NULL
        END AS CRP4,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 5), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 5)
            ELSE NULL
        END AS CRP5,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 6), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 6)
            ELSE NULL
        END AS CRP6,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 7), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 7)
            ELSE NULL
        END AS CRP7,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 8), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 8)
            ELSE NULL
        END AS CRP8,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 9), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 9)
            ELSE NULL
        END AS CRP9,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 10), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 10)
            ELSE NULL
        END AS CRP10,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 11), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 11)
            ELSE NULL
        END AS CRP11,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 12), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 12)
            ELSE NULL
        END AS CRP12,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 13), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 13)
            ELSE NULL
        END AS CRP13,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 14), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 14)
            ELSE NULL
        END AS CRP14,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 15), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 15)
            ELSE NULL
        END AS CRP15,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 16), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 16)
            ELSE NULL
        END AS CRP16,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 17), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 17)
            ELSE NULL
        END AS CRP17,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 18), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 18)
            ELSE NULL
        END AS CRP18,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 19), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 19)
            ELSE NULL
        END AS CRP19,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 20), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 20)
            ELSE NULL
        END AS CRP20,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 21), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 21)
            ELSE NULL
        END AS CRP21,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 22), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 22)
            ELSE NULL
        END AS CRP22,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 23), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 23)
            ELSE NULL
        END AS CRP23,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 24), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 24)
            ELSE NULL
        END AS CRP24,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 25), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 25)
            ELSE NULL
        END AS CRP25,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 26), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 26)
            ELSE NULL
        END AS CRP26,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 27), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 27)
            ELSE NULL
        END AS CRP27,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 28), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 28)
            ELSE NULL
        END AS CRP28,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 29), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 29)
            ELSE NULL
        END AS CRP29,
        CASE 
            WHEN NULLIF(REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 30), '') IS NOT NULL
            THEN REGEXP_SUBSTR(CRP_RESULT, '[^,]+', 1, 30)
            ELSE NULL
        END AS CRP30
    FROM registry_50_01
) a