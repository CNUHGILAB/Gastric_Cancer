SELECT
    원무접수ID,
    -- p53 Column에서의 데이터를 1 위치에서부터 p53 Column에서 데이터 중 ','의 인덱스에서 1을 뺀 만큼 추출 → p53 Column
    SUBSTR(p53, 1, (INSTR(p53, ',') - 1)) AS p53,
    -- p53 Column에서의 데이터를 p53 Column에서 데이터 중 ','의 인덱스에서 1을 더한 값의 위치에서부터 추출한 값에서 ',' 문자열을 ''(공백)으로 변환 → p53_p Column
    REPLACE(SUBSTR(p53, (INSTR(p53, ',') + 1)), ',', '') AS p53_p
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(p53, 'p53', ''), '-', '-,'
            ), '[(|)|.|:|;|/|!]', ''
        ) AS p53
    FROM(
        SELECT
            원무접수ID,
            CASE
                -- (((p53 Column의 데이터 글자 수) - (p53 Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(1))이 1보다 크면
                WHEN((LENGTH(p53) - LENGTH(REPLACE(p53, '!', ''))) / LENGTH('!') > 1)
                -- p53 Column에서 데이터 중 'p53 !('의 인덱스와 ')'의 인덱스를 추출하고 데이터를 인덱스 위치('p53 !)')에서부터 인덱스(')') 만큼 추출
                THEN SUBSTR(p53, INSTR(p53, 'p53 !('), INSTR(p53, ')'))
                -- (((p53 Column의 데이터 글자 수) - (p53 Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(1))가 1과 같으면
                WHEN((LENGTH(p53) - LENGTH(REPLACE(p53, '!', ''))) / LENGTH('!') = 1)
                -- p53 Column에서 데이터 중 '!'의 인덱스를 추출하고 데이터를 인덱스 위치에서부터 추출
                THEN SUBSTR(p53, INSTR(p53, '!'))
                -- (((p53 Column의 데이터 글자 수) - (p53 Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(1))이 1보다 크면
                -- WHEN(LENGTH(p53) - LENGTH(REPLACE(p53, '!', ''))) / LENGTH('!') > 1 THEN SUBSTR(p53, INSTR(p53, 'p53 !('), INSTR(p53, ')'))
                -- WHEN(LENGTH(p53) - LENGTH(REPLACE(p53, '!', ''))) / LENGTH('!') = 1 THEN SUBSTR(p53, INSTR(p53, '!'))
                ELSE p53
            END AS p53
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN((INSTR(p53, '&') != 0) OR (INSTR(p53, 'and') != 0)) -- p53 Column에서 데이터 중 '&'나 'and'의 인덱스가 0이 아니면(= '&'나 'and'가 있으면)
                    THEN REPLACE(p53, '(', '!(') -- '('를 '!(' 으로 변환
                    WHEN(INSTR(p53, 'p53 labeling index') != 0) -- p53 Column에서 데이터 중 'p53 labeling index'의 인덱스가 0이 아니면(= 'p53 labeling index'가 있으면)
                    -- '!'를 합친 문자열과 추출된 문자열을 합침
                    THEN CONCAT(
                            -- 추출한 값에 '!'를 합침
                            CONCAT(
                                -- p53 Column에서의 데이터를 인덱스 위치에서부터 글자 수(18)만큼 추출
                                SUBSTR(
                                    p53,
                                    INSTR(p53, 'p53 labeling index'), -- p53 Column에서 데이터 중 'p53 labeling index'의 인덱스
                                    LENGTH('p53 labeling index') -- 'p53 labeling index'의 글자 수 = 18
                                ), '!'
                            ),
                        -- p53 Column에서 데이터 중 'p53 labeling index'의 인덱스와 'p53 labeling index'의 글자 수(18)와 인덱스 1을 더한 값에서부터 추출
                        SUBSTR(p53, INSTR(p53, 'p53 labeling index') + LENGTH('p53 labeling index') + 1)
                    )
                    ELSE CONCAT(
                            -- 추출한 값에 '!'를 합침
                            CONCAT(
                                -- p53 Column에서의 데이터를 인덱스 위치에서부터 글자 수(3)만큼 추출
                                SUBSTR(
                                    p53,
                                    INSTR(p53, 'p53'), -- p53 Column에서 데이터 중 'p53'의 인덱스
                                    LENGTH('p53')
                                ), '!' -- 'p53'의 글자 수 = 3
                            ),
                        SUBSTR(p53, INSTR(p53, 'p53') + LENGTH('p53') + 1) -- p53 Column에서 데이터 중 'p53'의 인덱스와 'p53'의 글자 수(3)와 1을 더한 값
                    )
                END AS p53
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        REPLACE(
                                            p53, 'p-53', 'p53'
                                        ), 'positive', '(+,)'
                                    ), 'negative', '(-,)'
                                ), '3+', '(+++,)'
                            ), '2+', '(++,)'
                        ), '1+', '(+,)'
                    ) AS p53
                FROM genetic_04
            ) genetic
        ) genetic
    ) genetic
) genetic