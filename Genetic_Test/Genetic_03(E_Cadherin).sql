SELECT
    원무접수ID,
    SUBSTR(E_Cadherin, 1, INSTR(E_Cadherin, ',') -1) AS E_Cadherin_1,
    -- REPLACE() : 특정 문자열을 찾아 바꾸는 함수
    -- REPLACE('문자열' OR 열 이름, '바꾸려는 문자열', '바뀔 문자열')
    REPLACE(
        SUBSTR(
            E_Cadherin, INSTR(E_Cadherin, ',') + 1
        ), ',', ''
    ) AS E_Cadherin_2
FROM(
    SELECT
        원무접수ID,
        REGEXP_REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(
                        E_Cadherin, 'rin', ''
                    ), '-', '-,'
                ), '+', '+,'
            ), '[(|)|.|:|;|/|!]', ''
        ) AS E_Cadherin
    FROM(
        SELECT
            원무접수ID,
            CASE
                -- (((E_Cadherin Column의 데이터 글자 수) - (E_Cadherin Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(1))이 1보다 크면
                WHEN (LENGTH(E_Cadherin) - LENGTH(REPLACE(E_Cadherin, '!', '')) / LENGTH('!') > 1)
                -- E_Cadherin Column에서 데이터 중 'rin !('의 인덱스와 ')'의 인덱스를 추출하고 데이터를 인덱스 위치('rin !)')에서부터 인덱스(')') 만큼 추출
                THEN SUBSTR(E_Cadherin, INSTR(E_Cadherin, 'rin !('), INSTR(E_Cadherin, ')'))
                -- (((E_Cadherin Column의 데이터 글자 수) - (E_Cadherin Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(1))가 1과 같으면
                WHEN (LENGTH(E_Cadherin) - LENGTH(REPLACE(E_Cadherin, '!', '')) / LENGTH('!') = 1)
                -- E_Cadherin Column에서 데이터 중 '!'의 인덱스를 추출하고 데이터를 인덱스 위치에서부터 추출
                THEN SUBSTR(E_Cadherin, INSTR(E_Cadherin, '!'))
                -- WHEN(LENGTH(E_Cadherin) - LENGTH(REPLACE(E_Cadherin, '!', ''))) / LENGTH('!') > 1 THEN SUBSTR(E_Cadherin, INSTR(E_Cadherin, 'rin !('), INSTR(E_Cadherin, ')'))
                -- WHEN(LENGTH(E_Cadherin) - LENGTH(REPLACE(E_Cadherin, '!', ''))) / LENGTH('!') = 1 THEN SUBSTR(E_Cadherin, INSTR(E_Cadherin, '!'))
                ELSE E_Cadherin
            END AS E_Cadherin
        FROM(
            SELECT
                원무접수ID,
                CASE
                    WHEN (INSTR(E_Cadherin, '&') != 0 OR INSTR(E_Cadherin, 'and') != 0) -- E_Cadherin Column에서 데이터 중 '&'나 'and'의 인덱스가 0이 아니면(= '&'나 'and'가 있으면)
                    THEN REPLACE(E_Cadherin, '(', '!(') -- '('를 '!(' 으로 변환
                    -- CONCAT() : 여러 문자열을 하나로 합쳐주는 함수
                    -- E_Cadherin Column에서 데이터 중 '&'나 'and'의 인덱스가 0이면(= '&'나 'and'가 없으면)
                    WHEN (INSTR(E_Cadherin, '&') = 0 OR INSTR(E_Cadherin, 'and') = 0)
                    -- '!'를 합친 문자열과 추출된 문자열을 합침
                    THEN CONCAT(
                        -- 추출한 값에 '!'를 합침
                        CONCAT(
                            -- E_Cadherin Column에서의 데이터를 인덱스 위치에서부터 글자 수(10)만큼 추출
                            SUBSTR(
                                E_Cadherin,
                                INSTR(E_Cadherin, 'E-Cadherin'), -- E_Cadherin Column에서 데이터 중 'E-Cadherin'의 인덱스
                                LENGTH('E-Cadherin') -- 'E-Cadherin'의 글자 수 = 10
                            ), '!'
                        ),
                        --  E_Cadherin Column에서의 데이터를 나온 값에서부터 추출
                        SUBSTR(E_Cadherin, INSTR(E_Cadherin, 'E-Cadherin') + LENGTH('E-Cadherin') + 1) -- E_Cadherin Column에서 데이터 중 'E-Cadherin'의 인덱스와 'E-Cadherin'의 글자 수와 1을 더한 값
                    )
                    WHEN (INSTR(E_Cadherin, '&') = 0 OR INSTR(E_Cadherin, 'and') = 0)
                    THEN CONCAT(
                        -- 추출한 값에 '!'를 합침
                        CONCAT(
                            -- E_Cadherin Column에서의 데이터를 인덱스 위치에서부터 글자 수(10)만큼 추출
                            SUBSTR(
                                E_Cadherin,
                                INSTR(E_Cadherin, 'E Cadherin'), -- E_Cadherin Column에서 데이터 중 'E Cadherin'의 인덱스
                                LENGTH('E Cadherin') -- 'E-Cadherin'의 글자 수 = 10
                            ), '!'
                        ),
                        --  E_Cadherin Column에서의 데이터를 나온 값에서부터 추출
                        SUBSTR(E_Cadherin,INSTR(E_Cadherin, 'E Cadherin') + LENGTH('E Cadherin') + 1) -- E_Cadherin Column에서 데이터 중 'E-Cadherin'의 인덱스와 'E-Cadherin(10)'의 글자 수와 1을 더한 값
                    )
                END AS E_Cadherin
            FROM(
                SELECT
                    원무접수ID,
                    REPLACE(
                        REPLACE(
                            E_Cadherin, 'positive', '(+,)' -- E_Cadherin Column의 데이터 중 'positive'를 '(+,)'로 변환
                        ), 'negative', '(-,)' -- E_Cadherin Column의 데이터 중 'negative'를 '(-,)'로 변환
                    ) AS E_Cadherin
                FROM genetic_03
            ) genetic
        ) genetic
    ) genetic
) genetic