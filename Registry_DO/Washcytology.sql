SELECT
    cast(ID as char) as ID,
    Checkin,
    WashCytology,
    WCresult
FROM
(
        SELECT
            ID,
            Checkin,
            검사시행일,
            WashCytology,
            case
                when num = 1 then 'Pos'
                when num = 0 then null
                when num is null then WCresult
            end as WCresult
        FROM
(
                SELECT
                    ID,
                    Checkin,
                    검사시행일,
                    WashCytology,
                    WCresult,
                    case
                        when num_ID in (
                            SELECT
                                검사시행일 as 검사시행일A
                            FROM
(
                                    SELECT
                                        검사시행일,
                                        a
                                    FROM
(
                                            SELECT
                                                ID,
                                                검사시행일,
                                                WashCytology,
                                                WCresult,
                                                case
                                                    when ID in (
                                                        SELECT
                                                            a
                                                        FROM
(
                                                                SELECT
                                                                    검사시행일,
                                                                    a
                                                                FROM
(
                                                                        SELECT
                                                                            검사시행일,
                                                                            case
                                                                                when ID in (
                                                                                    SELECT
                                                                                        ID
                                                                                    FROM
(
                                                                                            SELECT
                                                                                                ID,
                                                                                                검사시행일,
                                                                                                WashCytology,
                                                                                                WCresult
                                                                                            FROM
(
                                                                                                    SELECT
                                                                                                        distinct a.환자번호 as ID,
                                                                                                        case
                                                                                                            when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                                                                            else 'No'
                                                                                                        end as WashCytology,
                                                                                                        date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                                                                        case
                                                                                                            when a.A2_1 = 'positive' then 'Pos'
                                                                                                            when nullif(a.A2_1, '') is null
                                                                                                            and nullif(a.A2_2, '') is null
                                                                                                            and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                                                                            when a.A2_1 = 'negative' then 'Neg'
                                                                                                            when a.A2_1 = 'Others' then 'Others'
                                                                                                            when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                                                                            when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                                                                            when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                                                                        end as WCresult
                                                                                                    FROM
                                                                                                        (
                                                                                                            SELECT
                                                                                                                distinct 환자번호,
                                                                                                                A1,
                                                                                                                A2_1,
                                                                                                                A2_2,
                                                                                                                검사시행일
                                                                                                            FROM
                                                                                                                gc_protocol.washcytology
                                                                                                        ) a,
                                                                                                        (
                                                                                                            SELECT
                                                                                                                distinct 환자번호,
                                                                                                                원무접수ID
                                                                                                            FROM
                                                                                                                gc_row.patient
                                                                                                            WHERE
                                                                                                                원무접수ID in (
                                                                                                                    SELECT
                                                                                                                        원무접수ID
                                                                                                                    FROM
                                                                                                                        gc_row.operation
                                                                                                                    WHERE
                                                                                                                        원무접수ID in (
                                                                                                                            SELECT
                                                                                                                                distinct 원무접수ID
                                                                                                                            FROM
                                                                                                                                gc_row.operation_record
                                                                                                                        )
                                                                                                                )
                                                                                                        ) b
                                                                                                    WHERE
                                                                                                        a.환자번호 = b.환자번호
                                                                                                ) c
                                                                                        ) c
                                                                                    group by
                                                                                        1
                                                                                    having
                                                                                        count(*) > 1
                                                                                ) then ID
                                                                            end as a
                                                                        FROM
(
                                                                                SELECT
                                                                                    distinct a.환자번호 as ID,
                                                                                    case
                                                                                        when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                                                        else 'No'
                                                                                    end as WashCytology,
                                                                                    date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                                                    case
                                                                                        when a.A2_1 = 'positive' then 'Pos'
                                                                                        when nullif(a.A2_1, '') is null
                                                                                        and nullif(a.A2_2, '') is null
                                                                                        and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                                                        when a.A2_1 = 'negative' then 'Neg'
                                                                                        when a.A2_1 = 'Others' then 'Others'
                                                                                        when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                                                        when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                                                        when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                                                    end as WCresult
                                                                                FROM
                                                                                    (
                                                                                        SELECT
                                                                                            distinct 환자번호,
                                                                                            A1,
                                                                                            A2_1,
                                                                                            A2_2,
                                                                                            검사시행일
                                                                                        FROM
                                                                                            gc_protocol.washcytology
                                                                                    ) a,
                                                                                    (
                                                                                        SELECT
                                                                                            distinct 환자번호,
                                                                                            원무접수ID
                                                                                        FROM
                                                                                            gc_row.patient
                                                                                        WHERE
                                                                                            원무접수ID in (
                                                                                                SELECT
                                                                                                    원무접수ID
                                                                                                FROM
                                                                                                    gc_row.operation
                                                                                                WHERE
                                                                                                    원무접수ID in (
                                                                                                        SELECT
                                                                                                            distinct 원무접수ID
                                                                                                        FROM
                                                                                                            gc_row.operation_record
                                                                                                    )
                                                                                            )
                                                                                    ) b
                                                                                WHERE
                                                                                    a.환자번호 = b.환자번호
                                                                            ) c
                                                                    ) c
                                                                WHERE
                                                                    a is not null
                                                                group by
                                                                    검사시행일,
                                                                    a
                                                                having
                                                                    count(a) > 1
                                                            ) c
                                                    )
                                                    and WCresult = 'Pos' then ID
                                                end as a
                                            FROM
(
                                                    SELECT
                                                        distinct a.환자번호 as ID,
                                                        case
                                                            when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                            else 'No'
                                                        end as WashCytology,
                                                        date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                        case
                                                            when a.A2_1 = 'positive' then 'Pos'
                                                            when nullif(a.A2_1, '') is null
                                                            and nullif(a.A2_2, '') is null
                                                            and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                            when a.A2_1 = 'negative' then 'Neg'
                                                            when a.A2_1 = 'Others' then 'Others'
                                                            when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                            when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                            when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                        end as WCresult
                                                    FROM
                                                        (
                                                            SELECT
                                                                distinct 환자번호,
                                                                A1,
                                                                A2_1,
                                                                A2_2,
                                                                검사시행일
                                                            FROM
                                                                gc_protocol.washcytology
                                                        ) a,
                                                        (
                                                            SELECT
                                                                distinct 환자번호,
                                                                원무접수ID
                                                            FROM
                                                                gc_row.patient
                                                            WHERE
                                                                원무접수ID in (
                                                                    SELECT
                                                                        원무접수ID
                                                                    FROM
                                                                        gc_row.operation
                                                                    WHERE
                                                                        원무접수ID in (
                                                                            SELECT
                                                                                distinct 원무접수ID
                                                                            FROM
                                                                                gc_row.operation_record
                                                                        )
                                                                )
                                                        ) b
                                                    WHERE
                                                        a.환자번호 = b.환자번호
                                                ) c
                                        ) c
                                    WHERE
                                        a is not null
                                ) c
                        ) then WCresult = 'Pos'
                    end as num
                FROM
(
                        SELECT
                            ID,
                            Checkin,
                            검사시행일,
                            WashCytology,
                            WCresult,
                            case
                                when ID in(
                                    SELECT
                                        a
                                    FROM
                                        (
                                            SELECT
                                                ID,
                                                검사시행일,
                                                WashCytology,
                                                WCresult,
                                                case
                                                    when ID in (
                                                        SELECT
                                                            a
                                                        FROM
                                                            (
                                                                SELECT
                                                                    검사시행일,
                                                                    a
                                                                FROM
                                                                    (
                                                                        SELECT
                                                                            ID,
                                                                            검사시행일,
                                                                            WashCytology,
                                                                            WCresult,
                                                                            case
                                                                                when ID in (
                                                                                    SELECT
                                                                                        ID
                                                                                    FROM
                                                                                        (
                                                                                            SELECT
                                                                                                ID,
                                                                                                검사시행일,
                                                                                                WashCytology,
                                                                                                WCresult
                                                                                            FROM
                                                                                                (
                                                                                                    SELECT
                                                                                                        distinct a.환자번호 as ID,
                                                                                                        case
                                                                                                            when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                                                                            else 'No'
                                                                                                        end as WashCytology,
                                                                                                        date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                                                                        case
                                                                                                            when a.A2_1 = 'positive' then 'Pos'
                                                                                                            when nullif(a.A2_1, '') is null
                                                                                                            and nullif(a.A2_2, '') is null
                                                                                                            and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                                                                            when a.A2_1 = 'negative' then 'Neg'
                                                                                                            when a.A2_1 = 'Others' then 'Others'
                                                                                                            when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                                                                            when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                                                                            when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                                                                        end as WCresult
                                                                                                    FROM
                                                                                                        (
                                                                                                            SELECT
                                                                                                                distinct 환자번호,
                                                                                                                A1,
                                                                                                                A2_1,
                                                                                                                A2_2,
                                                                                                                검사시행일
                                                                                                            FROM
                                                                                                                gc_protocol.washcytology
                                                                                                        ) a,
                                                                                                        (
                                                                                                            SELECT
                                                                                                                distinct 환자번호,
                                                                                                                원무접수ID
                                                                                                            FROM
                                                                                                                gc_row.patient
                                                                                                            WHERE
                                                                                                                원무접수ID in (
                                                                                                                    SELECT
                                                                                                                        원무접수ID
                                                                                                                    FROM
                                                                                                                        gc_row.operation
                                                                                                                    WHERE
                                                                                                                        원무접수ID in (
                                                                                                                            SELECT
                                                                                                                                distinct 원무접수ID
                                                                                                                            FROM
                                                                                                                                gc_row.operation_record
                                                                                                                        )
                                                                                                                )
                                                                                                        ) b
                                                                                                    WHERE
                                                                                                        a.환자번호 = b.환자번호
                                                                                                ) c
                                                                                        ) c
                                                                                    group by
                                                                                        1
                                                                                    having
                                                                                        count(*) > 1
                                                                                ) then ID
                                                                            end as a
                                                                        FROM
                                                                            (
                                                                                SELECT
                                                                                    distinct a.환자번호 as ID,
                                                                                    case
                                                                                        when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                                                        else 'No'
                                                                                    end as WashCytology,
                                                                                    date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                                                    case
                                                                                        when a.A2_1 = 'positive' then 'Pos'
                                                                                        when nullif(a.A2_1, '') is null
                                                                                        and nullif(a.A2_2, '') is null
                                                                                        and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                                                        when a.A2_1 = 'negative' then 'Neg'
                                                                                        when a.A2_1 = 'Others' then 'Others'
                                                                                        when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                                                        when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                                                        when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                                                    end as WCresult
                                                                                FROM
                                                                                    (
                                                                                        SELECT
                                                                                            distinct 환자번호,
                                                                                            A1,
                                                                                            A2_1,
                                                                                            A2_2,
                                                                                            검사시행일
                                                                                        FROM
                                                                                            gc_protocol.washcytology
                                                                                    ) a,
                                                                                    (
                                                                                        SELECT
                                                                                            distinct 환자번호,
                                                                                            원무접수ID
                                                                                        FROM
                                                                                            gc_row.patient
                                                                                        WHERE
                                                                                            원무접수ID in (
                                                                                                SELECT
                                                                                                    원무접수ID
                                                                                                FROM
                                                                                                    gc_row.operation
                                                                                                WHERE
                                                                                                    원무접수ID in (
                                                                                                        SELECT
                                                                                                            distinct 원무접수ID
                                                                                                        FROM
                                                                                                            gc_row.operation_record
                                                                                                    )
                                                                                            )
                                                                                    ) b
                                                                                WHERE
                                                                                    a.환자번호 = b.환자번호
                                                                            ) c
                                                                    ) c
                                                                WHERE
                                                                    a is not null
                                                                group by
                                                                    검사시행일,
                                                                    a
                                                                having
                                                                    count(a) > 1
                                                            ) c
                                                    )
                                                    and WCresult = 'Pos' then ID
                                                end as a
                                            FROM
                                                (
                                                    SELECT
                                                        distinct a.환자번호 as ID,
                                                        case
                                                            when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                                            else 'No'
                                                        end as WashCytology,
                                                        date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                                        case
                                                            when a.A2_1 = 'positive' then 'Pos'
                                                            when nullif(a.A2_1, '') is null
                                                            and nullif(a.A2_2, '') is null
                                                            and nullif(a.A1, '') is null then 'Unsatisfactory'
                                                            when a.A2_1 = 'negative' then 'Neg'
                                                            when a.A2_1 = 'Others' then 'Others'
                                                            when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                                            when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                                            when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                                        end as WCresult
                                                    FROM
                                                        (
                                                            SELECT
                                                                distinct 환자번호,
                                                                A1,
                                                                A2_1,
                                                                A2_2,
                                                                검사시행일
                                                            FROM
                                                                gc_protocol.washcytology
                                                        ) a,
                                                        (
                                                            SELECT
                                                                distinct 환자번호,
                                                                원무접수ID
                                                            FROM
                                                                gc_row.patient
                                                            WHERE
                                                                원무접수ID in (
                                                                    SELECT
                                                                        원무접수ID
                                                                    FROM
                                                                        gc_row.operation
                                                                    WHERE
                                                                        원무접수ID in (
                                                                            SELECT
                                                                                distinct 원무접수ID
                                                                            FROM
                                                                                gc_row.operation_record
                                                                        )
                                                                )
                                                        ) b
                                                    WHERE
                                                        a.환자번호 = b.환자번호
                                                ) c
                                        ) c
                                    WHERE
                                        a is not null
                                ) then 검사시행일
                            end as num_ID
                        FROM
(
                                SELECT
                                    distinct a.환자번호 as ID,
                                    a.원무접수ID as Checkin,
                                    case
                                        when (a.환자번호 = b.환자번호) = 1 then 'Yes'
                                        else 'No'
                                    end as WashCytology,
                                    date_format(검사시행일, '%Y-%m-%d') AS 검사시행일,
                                    case
                                        when a.A2_1 = 'positive' then 'Pos'
                                        when nullif(a.A2_1, '') is null
                                        and nullif(a.A2_2, '') is null
                                        and nullif(a.A1, '') is null then 'Unsatisfactory'
                                        when a.A2_1 = 'negative' then 'Neg'
                                        when a.A2_1 = 'Others' then 'Others'
                                        when a.A2_1 = 'Atypical cells' then 'Atypical cells'
                                        when instr(a.A2_2, 'Malignancy') != 0 then 'Pos'
                                        when instr(a.A2_2, 'Benign cellular') != 0 then 'Pos'
                                    end as WCresult
                                FROM
                                    (
                                        SELECT
                                            distinct 환자번호,
                                            원무접수ID,
                                            A1,
                                            A2_1,
                                            A2_2,
                                            검사시행일
                                        FROM
                                            gc_protocol.washcytology
                                    ) a,
                                    (
                                        SELECT
                                            distinct 환자번호,
                                            원무접수ID
                                        FROM
                                            gc_row.patient
                                        WHERE
                                            원무접수ID in (
                                                SELECT
                                                    원무접수ID
                                                FROM
                                                    gc_row.operation
                                                WHERE
                                                    원무접수ID in (
                                                        SELECT
                                                            distinct 원무접수ID
                                                        FROM
                                                            gc_row.operation_record
                                                    )
                                            )
                                    ) b
                                WHERE
                                    a.환자번호 = b.환자번호
                            ) c
                    ) c
            ) c
    ) c
WHERE
    WCresult is not NULL