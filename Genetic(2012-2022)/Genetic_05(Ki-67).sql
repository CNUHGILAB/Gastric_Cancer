SELECT
    원무접수ID,
    SUBSTR(`Ki-67`, 1, INSTR(`Ki-67`, ',') - 1) AS `Ki-67`, -- Ki-67 Column에서 인덱스 1(처음)부터 ','의 인덱스에서 1을 뺀 인덱스까지 글자 가져오기
    REPLACE(SUBSTR(`Ki-67`, INSTR(`Ki-67`, ',') + 1), ',', '') AS `Ki-67_p` -- Ki-67 Column에서 ','의 인덱스에서 1을 더한 인덱스부터 글자 가져오고 ','을 공백으로 바꿈
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(
                    `Ki-67`, '67', ''
                ), '-', '-,'
            ), '[(|)|.|:|;|/|!]', ''
        ) AS `Ki-67`
    FROM(
        SELECT
            원무접수ID,
            CASE
                WHEN ((LENGTH(`Ki-67`) - LENGTH(REPLACE(`Ki-67`, '!', ''))) / LENGTH('!')) > 1 -- ((Ki-67 Column의 글자 수) - (Ki-67 Column에서 '!'을 공백으로 바꾼 글자 수)) / ('!'의 글자 수) > 1
                THEN SUBSTR(`Ki-67`, INSTR(`Ki-67`, '67 !('), INSTR(`Ki-67`, ')')) -- Ki-67 Column에서 데이터 중 '67 !('의 인덱스부터 ')'의 인덱스만큼 글자 가져오기
                WHEN ((LENGTH(`Ki-67`) - LENGTH(REPLACE(`Ki-67`, '!', ''))) / LENGTH('!')) = 1 -- ((Ki-67 Column의 글자 수) - (Ki-67 Column에서 '!'을 공백으로 바꾼 글자 수)) / ('!'의 글자 수) = 1
                THEN SUBSTR(`Ki-67`, INSTR(`Ki-67`, '!')) -- Ki-67 Column에서 '!'의 인덱스부터 글자 가져오기
                ELSE `Ki-67` -- Ki-67 Column
            END AS `Ki-67`
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(`Ki-67`, '&') != 0 OR INSTR(`Ki-67`, 'and') != 0) -- Ki-67 Column에 '&'나 'and'가 있으면
                    THEN REPLACE(`Ki-67`, '(', '!(') -- '('를 '!('로 바꿈
                    WHEN INSTR(`Ki-67`, 'Ki-67,') != 0 -- Ki-67 Column에 'Ki-67,'이 있으면
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(
                                `Ki-67`, INSTR(`Ki-67`, 'Ki-67,'), LENGTH('Ki-67,')
                            ), '!'
                        ), SUBSTR(`Ki-67`, INSTR(`Ki-67`, 'Ki-67,') + LENGTH('Ki-67,') + 1)
                    )
                    WHEN INSTR(`Ki-67`, 'Ki-67 labeling index') != 0 -- Ki-67 Column에 'Ki-67 labeling index'가 있으면
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(
                                `Ki-67`, INSTR(`Ki-67`, 'Ki-67 labeling index'), LENGTH('Ki-67 labeling index')
                            ), '!'
                        ), SUBSTR(`Ki-67`, INSTR(`Ki-67`, 'Ki-67 labeling index') + LENGTH('Ki-67 labeling index') + 1)
                    )
                    WHEN INSTR(`Ki-67`, 'Ki-67 index') != 0-- Ki-67 Column에서 데이터 중 'Ki-67 index'가 있으면
                    THEN CONCAT(
                        CONCAT(
                            SUBSTR(
                                `Ki-67`, INSTR(`Ki-67`, 'Ki-67 index'), LENGTH('Ki-67 index')
                            ), '!'
                        ), SUBSTR(`Ki-67`, INSTR(`Ki-67`, 'Ki-67 index') + LENGTH('Ki-67 index') + 1)
                    )
                    ELSE CONCAT(
                        CONCAT(
                            SUBSTR(
                                `Ki-67`, INSTR(`Ki-67`, 'Ki-67'), LENGTH('Ki-67')
                            ), '!'
                        ), SUBSTR(`Ki-67`, INSTR(`Ki-67`, 'Ki-67') + LENGTH('Ki-67') + 1)
                    )
                END AS `Ki-67`
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            `Ki-67`, 'Ki67', 'Ki-67'
                                        ), 'positive', '(+,)'
                                    ), 'negative', '(-,)'
                                ), '3+', '(+++,)'
                            ), '2+', '(++,)'
                        ), '1+', '(+,)'
                    ) AS `Ki-67`
                FROM genetic_05
            ) genetic
        ) genetic
    ) genetic
) genetic