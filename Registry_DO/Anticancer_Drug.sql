SELECT
    환자번호 as ID,
    원무접수ID as Checkin,
    약품처방일 as AD_Date,
    case
        when P != 0
        and F != 0
        and L != 0 then 'PFL'

        when P != 0
        and F != 0
        and Et != 0 then 'PFE'

        when P != 0
        and F != 0
        and X != 0 then 'PCF'

        when D != 0
        and F != 0
        and dox != 0 then 'Dfdox'

        when D != 0
        and F != 0
        and X != 0 then 'DCF'

        when D != 0
        and F != 0
        and L != 0 then 'DfL'

        when O != 0
        and F != 0
        and L != 0 then 'OFL'

        when T != 0
        and F != 0
        and X != 0 then ' HFC'

        when T != 0
        and C != 0
        and X != 0 then ' HCX'

        when I != 0
        and F != 0
        and L != 0 then 'IFL'

        when C != 0
        and E != 0
        and X != 0 then 'ECX'

        when dox != 0
        and X != 0
        and Et != 0 then 'EAP'

        when C != 0
        and O != 0 then 'Xelox'

        when P != 0
        and X != 0 then 'PC'

        when D != 0
        and X != 0 then 'DC'

        when D != 0
        and F != 0 then 'DF'

        when F != 0
        and L != 0 then 'FL'

        when F != 0
        and X != 0 then 'FC'

        when `S-1` != 0
        and X != 0 then 'S-1C'

        when I != 0
        and F != 0 then 'IF'

        when I != 0
        and X != 0 then 'IC'

        when C != 0
        and X != 0 then 'CX'

        when C != 0
        and O != 0 then 'CAPOX'

        when R != 0
        and P != 0 then 'RP'

        when F != 0
        and O != 0 then 'OF'

        when X != 0
        and Et != 0 then 'EP'

        when `S-1` != 0 then 'S-1'

        when C != 0 then 'Xeloda'

        when I != 0 then 'I'

        when D != 0 then 'D'

        when F != 0 then 'F'
        when P != 0 then 'P'

        when Et != 0 then 'E'

        when dox != 0 then 'Dox'

        when X != 0 then 'Cisplatin'

        when Tegafur != 0 then 'Tegafur'

        when T != 0 then 'Trastuzumab'

        when O != 0 then 'Oxaliplatin'

        when E != 0 then 'Epirubicin'

        when L != 0 then 'Leucovorin'
        
    end as AD
FROM
    (
        SELECT
            *,
            instr(`약품명(성분명)`, 'Fluorouracil') != 0 as F,
            instr(`약품명(성분명)`, 'Oxaliplatin') != 0 as O,
            instr(`약품명(성분명)`, 'Tegafur') != 0
            and instr(`약품명(성분명)`, 'Gimeracil') != 0
            and instr(`약품명(성분명)`, 'Oteracil') != 0 as `S-1`,
            instr(`약품명(성분명)`, 'Capecitabine') != 0 as C,
            instr(`약품명(성분명)`, 'Cisplatin') != 0 as X,
            instr(`약품명(성분명)`, 'Docetaxel') != 0 as D,
            instr(`약품명(성분명)`, 'Doxorubicin') != 0 as dox,
            instr(`약품명(성분명)`, 'Epirubicin') != 0 as E,
            instr(`약품명(성분명)`, 'Etoposide') != 0 as Et,
            instr(`약품명(성분명)`, 'Irinotecan') != 0 as I,
            instr(`약품명(성분명)`, 'Leucovorin') != 0 as L,
            instr(`약품명(성분명)`, 'Paclitaxel') != 0 as P,
            instr(`약품명(성분명)`, 'Ramucirumab') != 0 as R,
            instr(`약품명(성분명)`, 'Tegafur') != 0 as Tegafur,
            instr(`약품명(성분명)`, 'Trastuzumab') != 0 as T
        FROM
            (
                SELECT
                    환자번호,
                    원무접수ID,
                    약품처방일,
                    GROUP_CONCAT(DISTINCT `약품명(성분명)`) as `약품명(성분명)`
                FROM
                    gc_raw.anticancer_drug
                group by
                    환자번호,
                    약품처방일
            ) a
    ) a