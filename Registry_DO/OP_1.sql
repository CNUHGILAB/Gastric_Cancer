SELECT
    DISTINCT 원무접수ID,
    환자번호,
    REC_Date,
    TrocarNo5mm + TrocarNo10mm as OP_TROC,
    Op as OP_RESC,
    case
        when nullif(
            replace(
                replace(
                    replace(
                        concat(
                            replace(`Billroth 1`, '1', 'Billroth 1'),
                            ',',
                            replace(
                                `Billroth 2 with Braun`,
                                '1',
                                'Billroth 2 with Braun'
                            ),
                            ',',
                            replace(
                                `Billroth 2 without Braun`,
                                '1',
                                'Billroth 2 without Braun'
                            ),
                            ',',
                            replace(`Uncut RYGJ`, '1', 'Uncut RYGJ'),
                            ',',
                            replace(`RY`, '1', 'RY'),
                            ',',
                            replace(`Modified uncut RY`, '1', 'Modified uncut RY'),
                            ',',
                            replace(`Loop EJ`, '1', 'Loop EJ'),
                            ',',
                            replace(
                                `Double tract anastomosis`,
                                '1',
                                'Double tract anastomosis'
                            ),
                            ',',
                            replace(`Gastrogastrostomy`, '1', 'Gastrogastrostomy'),
                            ',',
                            replace(
                                `Esophagogastrostomy`,
                                '1',
                                'Esophagogastrostomy'
                            )
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
                        replace(`Billroth 1`, '1', 'Billroth 1'),
                        ',',
                        replace(
                            `Billroth 2 with Braun`,
                            '1',
                            'Billroth 2 with Braun'
                        ),
                        ',',
                        replace(
                            `Billroth 2 without Braun`,
                            '1',
                            'Billroth 2 without Braun'
                        ),
                        ',',
                        replace(`Uncut RYGJ`, '1', 'Uncut RYGJ'),
                        ',',
                        replace(`RY`, '1', 'RY'),
                        ',',
                        replace(`Modified uncut RY`, '1', 'Modified uncut RY'),
                        ',',
                        replace(`Loop EJ`, '1', 'Loop EJ'),
                        ',',
                        replace(
                            `Double tract anastomosis`,
                            '1',
                            'Double tract anastomosis'
                        ),
                        ',',
                        replace(`Gastrogastrostomy`, '1', 'Gastrogastrostomy'),
                        ',',
                        replace(
                            `Esophagogastrostomy`,
                            '1',
                            'Esophagogastrostomy'
                        )
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
    end as OP_RECO,
    Braun as OP_BRN,
    Interposition as OP_INTP,
    Antecolic as OP_ANTC,
    ProxMargin as OP_PRM,
    DistMargin as OP_DRM,
    Co_resection as OP_RESC_CO,
    Co_resectionSite as OP_RESC_CO_ST,
    Omentectomy as OP_OMEN,
    Radicality as OP_CURA,
    DrainNo_O + DrainNo_C as OP_DRAN_NO,
    DrainType as OP_DRAN_TP
FROM
    (
        SELECT
            원무접수ID,
            환자번호,
            STR_TO_DATE(의무기록작성일, '%%Y-%%m-%%d') as REC_Date,
            case
                when TrocarNo5mm is not null then replace(TrocarNo5mm, '개', '')
                else 0
            end as TrocarNo5mm,
            case
                when TrocarNo10mm is not null then replace(TrocarNo10mm, '개', '')
                else 0
            end as TrocarNo10mm,
            case
                when Op = 'DSG' then 'Distal gastrectomy'
                when Op = 'PG' then 'Proximal gastrectomy'
                when Op = 'PpG (Central G)' then 'Pylorus preserving gastrectomy'
                when Op = 'TG' then 'Total gastrectomy'
                when Op = 'Near TG' then 'Near Total gastrectomy'
                when Op = 'Wedge' then 'Wedge resection'
                when Op = 'Bypass GJ' then 'Bypass'
            end Op,
            instr(Reconstruction, 'BⅠ') != 0 as `Billroth 1`,
            instr(Reconstruction, 'BⅡ') != 0
            and Braun = 'Braun' as `Billroth 2 with Braun`,
            instr(Reconstruction, 'BⅡ') != 0
            and Braun = 'No braun' as `Billroth 2 without Braun`,
            instr(Reconstruction, 'RY') != 0 and not instr(Reconstruction, 'Uncut RY') != 0 as `RY`,
            instr(Reconstruction, 'Modified uncut RY') != 0 as `Modified uncut RY`,
            instr(Reconstruction, 'Uncut RY') != 0 as `Uncut RYGJ`,
            instr(Reconstruction, 'Loop EJ') != 0 as `Loop EJ`,
            instr(Reconstruction, 'Double tract anastomosis') != 0 as `Double tract anastomosis`,
            instr(Reconstruction, 'Other') != 0
            and (
                instr(Other_1, 'gastrogastrostomy') != 0
                or instr(Other_1, 'gastro-gastrostomy') != 0
                or instr(Other_1, 'gastrogastrostoym') != 0
                or instr(Other_1, 'GG') != 0
            ) as Gastrogastrostomy,
            instr(Reconstruction, 'Other') != 0
            and (
                instr(Other_1, 'esophagogastrostomy') != 0
                or instr(Other_1, 'EG') != 0
            ) as Esophagogastrostomy,
            case
                when Braun = 'No braun' then 'No'
                when Braun = 'Braun' then 'Yes'
                else Braun
            end as Braun,
            case
                when Interposition = 'No interposition' then 'No'
                when Interposition = 'Interposition' then 'Yes'
            end as Interposition,
            case
                when Antecolic = 'Retrocolic' then 'No'
                when Antecolic = 'Antecolic' then 'Yes'
            end as Antecolic,
            ProxMargin,
            DistMargin,
            case
                when Co_resection = '0' then 'No'
                when Co_resection != '0' then 'Yes'
            end as Co_resection,
            Co_resectionSite,
            case
                when Omentectomy = 'Partial' then 'Partial'
                when Omentectomy = 'Complete' then 'Total'
                else 'None'
            end Omentectomy,
            case
                when DrainNo_O is not null then replace(DrainNo_O, '개', '')
                else 0
            end as DrainNo_O,
            case
                when DrainNo_C is not null then replace(DrainNo_C, '개', '')
                else 0
            end as DrainNo_C,
            case
                when DrainType_O = '1'
                and DrainType_C = '1' then 'Closed & Open'
                when DrainType_O = '1' then 'Open sump'
                when DrainType_C = '1' then 'Closed suction'
            end DrainType,
            Radicality
        FROM
            (
                SELECT
                    *
                FROM
                    gc_db.re_operation_record
            ) b
    ) b