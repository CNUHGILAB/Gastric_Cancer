SELECT
    원무접수ID,
    환자번호,
    의무기록작성일,
    진료서식ID,
    Method,
    TrocarNo5mm,
    TrocarNo10mm,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            `DSG`,
                            ',',
                            TG,
                            ',',
                            `Near TG`,
                            ',',
                            PG,
                            ',',
                            `PpG (Central G)`,
                            ',',
                            Wedge,
                            ',',
                            `Bypass GJ`,
                            ',',
                            ther
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ),
            ''
        ) is null then null
        else replace(
            replace(
                replace(
                    concat(
                        `DSG`,
                        ',',
                        TG,
                        ',',
                        `Near TG`,
                        ',',
                        PG,
                        ',',
                        `PpG (Central G)`,
                        ',',
                        Wedge,
                        ',',
                        `Bypass GJ`,
                        ',',
                        ther
                    ),
                    '0,',
                    ''
                ),
                ',0',
                ''
            ),
            '0',
            ''
        )
    end as Op,
    
    `Other_1`,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            `BⅠ`,
                            ',',
                            `BⅡ`,
                            ',',
                            `RY`,
                            ',',
                            `Other`,
                            ',',
                            `Uncut RY`,
                            ',',
                            `Modified uncut RY`,
                            ',',
                            `Loop EJ`,
                            ',',
                            `Double tract anastomosis`
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ),
            ''
        ) is null then null
        else replace(
            replace(
                replace(
                    concat(
                        `BⅠ`,
                        ',',
                        `BⅡ`,
                        ',',
                        `RY`,
                        ',',
                        `Other`,
                        ',',
                        `Uncut RY`,
                        ',',
                        `Modified uncut RY`,
                        ',',
                        `Loop EJ`,
                        ',',
                        `Double tract anastomosis`
                    ),
                    '0,',
                    ''
                ),
                ',0',
                ''
            ),
            '0',
            ''
        )
    end as Reconstruction,
    ReconMethod,
    Braun,
    Interposition,
    Antecolic,
    Anastomosis,
    ProxMargin,
    DistMargin,
    case
        when nullif(
            (`No` != '0') + (Spleen != '0') + (`Panc tail` != '0') + (GB != '0') + (Colon != '0') + (Adrenal != '0') + (Ovary != '0') + (Liver != '0') + (`Others` != '0'),
            ''
        ) is null then null
        else (Spleen != '0') + (`Panc tail` != '0') + (GB != '0') + (Colon != '0') + (Adrenal != '0') + (Ovary != '0') + (Liver != '0') + (`Others` != '0')
    end as Co_resection,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            `No`,
                            Spleen,
                            ',',
                            `Panc tail`,
                            ',',
                            GB,
                            ',',
                            Colon,
                            ',',
                            Adrenal,
                            ',',
                            Ovary,
                            ',',
                            Liver,
                            ',',
                            `Others`
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ),
            ''
        ) is null then null
        else replace(
            replace(
                replace(
                    concat(
                        `No`,
                        Spleen,
                        ',',
                        `Panc tail`,
                        ',',
                        GB,
                        ',',
                        Colon,
                        ',',
                        Adrenal,
                        ',',
                        Ovary,
                        ',',
                        Liver,
                        ',',
                        `Others`
                    ),
                    '0,',
                    ''
                ),
                ',0',
                ''
            ),
            '0',
            ''
        )
    end as Co_resectionSite,
    Radicality,
    Curability,
    Omentectomy,
    DrainNo_O,
    DrainType_O,
    DrainNo_C,
    DrainType_C,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            LC,
                            ',',
                            GC,
                            ',',
                            AW,
                            ',',
                            PW,
                            ',',
                            Circular_1
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ),
            ''
        ) is null then null
        else replace(
            replace(
                replace(
                    concat(
                        LC,
                        ',',
                        GC,
                        ',',
                        AW,
                        ',',
                        PW,
                        ',',
                        Circular_1
                    ),
                    '0,',
                    ''
                ),
                ',0',
                ''
            ),
            '0',
            ''
        )
    end as Circular,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            Eso,
                            ',',
                            EGJ,
                            ',',
                            Cardia,
                            ',',
                            F,
                            ',',
                            UB,
                            ',',
                            MB,
                            ',',
                            LB,
                            ',',
                            A,
                            ',',
                            Pylorus,
                            ',',
                            Duo
                        ),
                        '0,',
                        ''
                    ),
                    ',0',
                    ''
                ),
                '0',
                ''
            ),
            ''
        ) is null then null
        else replace(
            replace(
                replace(
                    concat(
                        Eso,
                        ',',
                        EGJ,
                        ',',
                        Cardia,
                        ',',
                        F,
                        ',',
                        UB,
                        ',',
                        MB,
                        ',',
                        LB,
                        ',',
                        A,
                        ',',
                        Pylorus,
                        ',',
                        Duo
                    ),
                    '0,',
                    ''
                ),
                ',0',
                ''
            ),
            '0',
            ''
        )
    end as Tubular1
FROM
    (
        SELECT
            원무접수ID,
            환자번호,
            의무기록작성일,
            진료서식ID,
            case
                when `100471612` = '1'
                and `100471622` = '1' then 2
                when `100471612` = '1'
                and `100471621` = '1' then 1
                when `100471612` = '1' then 1
                when `100471611` = '1'
                and `100471622` = '1' then 2
                when `100471611` = '1'
                and `100471621` = '1' then 0
                when `100471611` = '1' then 0
            end as Method,
            `100471615` as TrocarNo5mm,
            `100471618` as TrocarNo10mm,
            case
                when `100471626` = '1' then replace(`100471626`, '1', 'DSG')
                else 0
            end as DSG,
            case
                when `100471627` = '1' then replace(`100471627`, '1', 'TG')
                else 0
            end as TG,
            case
                when `100471628` = '1' then replace(`100471628`, '1', 'Near TG')
                else 0
            end as `Near TG`,
            case
                when `100471629` = '1' then replace(`100471629`, '1', 'PG')
                else 0
            end as PG,
            case
                when `100471630` = '1' then replace(`100471630`, '1', 'PpG (Central G)')
                else 0
            end as `PpG (Central G)`,
            case
                when `100471631` = '1' then replace(`100471631`, '1', 'Wedge')
                else 0
            end as Wedge,
            case
                when `100471632` = '1' then replace(`100471632`, '1', 'Bypass GJ')
                else 0
            end as `Bypass GJ`,
            case
                when `100471635` = '1' then replace(`100471635`, '1', 'ther')
                else 0
            end as ther,
            case
                when `100471643` = '1' then replace(`100471643`, '1', 'BⅠ')
                else 0
            end as `BⅠ`,
            case
                when `100471644` = '1' then replace(`100471644`, '1', 'BⅡ')
                else 0
            end as `BⅡ`,
            case
                when `100471645` = '1' then replace(`100471645`, '1', 'RY')
                else 0
            end as `RY`,
            case
                when `100471646` = '1' then replace(`100471646`, '1', 'Uncut RY')
                else 0
            end as `Uncut RY`,
            case
                when `100471647` = '1' then replace(`100471647`, '1', 'Modified uncut RY')
                else 0
            end as `Modified uncut RY`,
            case
                when `100471648` = '1' then replace(`100471648`, '1', 'Loop EJ')
                else 0
            end as `Loop EJ`,
            case
                when `100710195` = '1' then replace(`100710195`, '1', 'Double tract anastomosis')
                else 0
            end as `Double tract anastomosis`,
            case
                when `100710197` is not null then 'Other'
                else 0
            end as `Other`,
            case
                when `100710197` is not null then `100710197`
            end as `Other_1`,
            `100471662` as ReconMethod,
            case
                when `100471650` = '1' then 'No braun'
                when `100471651` = '1' then 'Braun'
            end as Braun,
            case
                when `100471656` = '1' then 'No interposition'
                when `100471657` = '1' then 'Interposition'
            end as Interposition,
            case
                when `100471653` = '1' then 'Antecolic'
                when `100471654` = '1' then 'Retrocolic'
            end as Antecolic,
            case
                when `100471660` = '1' then 'Intra corporeal'
                when `100471659` = '1' then 'Extra corporeal'
            end as Anastomosis,
            `100471637` as ProxMargin,
            `100471640` as DistMargin,
            case
                when `100471709` = '1' then replace(`100471709`, '1', 'No')
                else 0
            end as `No`,
            case
                when `100471710` = '1' then replace(`100471710`, '1', 'Spleen')
                else 0
            end as Spleen,
            case
                when `100471711` = '1' then replace(`100471711`, '1', 'Panc tail')
                else 0
            end as `Panc tail`,
            case
                when `100471712` = '1' then replace(`100471712`, '1', 'GB')
                else 0
            end as GB,
            case
                when `100471713` = '1' then replace(`100471713`, '1', 'Colon')
                else 0
            end as Colon,
            case
                when `100471714` = '1' then replace(`100471714`, '1', 'Adrenal')
                else 0
            end as Adrenal,
            case
                when `100471715` = '1' then replace(`100471715`, '1', 'Ovary')
                else 0
            end as Ovary,
            case
                when `100471716` = 1 then replace(`100471716`, '1', 'Liver')
                else 0
            end as Liver,
            case
                when `100471719` is not null then `100471719`
                else 0
            end as `Others`,
            case
                when `100471594` = 1 then 'R0'
                when `100471595` = 1 then 'R1'
                when `100471596` = 1 then 'R2'
                when `100471597` = 1 then 'No resection'
            end as Curability,
            case
                when `100471706` = 1 then 'Complete'
                when `100471707` = 1 then 'Partial'
            end as Omentectomy,
            `100471758` as DrainNo_O,
            `100471757` as DrainType_O,
            `100471755` as DrainNo_C,
            `100471754` as DrainType_C,
            case
                when `100471443` = 1 then replace(`100471443`, '1', 'LC')
                else 0
            end as LC,
            case
                when `100471444` = 1 then replace(`100471444`, '1', 'GC')
                else 0
            end as GC,
            case
                when `100471445` = 1 then replace(`100471445`, '1', 'AW')
                else 0
            end as AW,
            case
                when `100471446` = 1 then replace(`100471446`, '1', 'PW')
                else 0
            end as PW,
            case
                when `100471447` = 1 then replace(`100471447`, '1', 'Circular')
                else 0
            end as Circular_1,
            case
                when `100471450` then replace(`100471450`, '1', 'Eso')
                else 0
            end as Eso,
            case
                when `100471451` then replace(`100471451`, '1', 'EGJ')
                else 0
            end as EGJ,
            case
                when `100471452` then replace(`100471452`, '1', 'Cardia')
                else 0
            end as Cardia,
            case
                when `100471453` then replace(`100471453`, '1', 'F')
                else 0
            end as `F`,
            case
                when `100471454` then replace(`100471454`, '1', 'UB')
                else 0
            end as UB,
            case
                when `100471455` then replace(`100471455`, '1', 'MB')
                else 0
            end as MB,
            case
                when `100471456` then replace(`100471456`, '1', 'LB')
                else 0
            end as LB,
            case
                when `100471457` then replace(`100471457`, '1', 'A')
                else 0
            end as `A`,
            case
                when `100471458` then replace(`100471458`, '1', 'Pylorus')
                else 0
            end as Pylorus,
            case
                when `100471459` then replace(`100471459`, '1', 'Duo')
                else 0
            end as Duo,
            case
                when `100471695` = '1' then 'D0'
                when `100471696` = '1' then 'D1'
                when `100471697` = '1' then 'D1+a(#7)'
                when `100471698` = '1' then 'D1+b(#7,8,9)'
                when `100471699` = '1' then 'D2'
                when `100471700` = '1' then 'D3'
                when `100471701` = '1' then 'Radicality_Others1'
                when `100471702` is not null then `100471702`
            end as Radicality
        FROM
            re_operation_record_step_03
    ) c