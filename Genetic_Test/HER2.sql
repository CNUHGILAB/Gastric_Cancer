SELECT
    원무접수ID,
    -- REGEXP_REPLACE() : 정규식 패턴을 검색하여 대체 문자열로 바꿈
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(HER2, '[a-z]', '' -- 알파벳 소문자([a-z])에 해당하는 값을 공백('')으로 바꾸어 Return
            ),'[(|)|.|:|;|/|!]', '' -- ( 또는 ) 또는 . 또는 : 또는 ; 또는 / 또는 !와 일치하면 공백('')으로 바꾸어 Return
        ), '[0-9]', '' -- 숫자([0-9])에 해당하는 값(0부터 9까지)을 공백('')으로 바꾸어 Return
    ) AS HER2
FROM(
    SELECT
        원무접수ID,
        CASE
            -- REPLACE() : 특정 문자열을 찾아 바꾸는 함수
            -- REPLACE('문자열' OR 열 이름, '바꾸려는 문자열', '바뀔 문자열')
            -- WHEN '조건' THEN '조건에 만족할 때 출력할 데이터' ELSE '조건에 맞지 않을 때 출력할 데이터'
            -- LENGTH() : 한글 = 영문 = 공백 = 특수문자 = 1자리
            WHEN ((LENGTH(HER2) - LENGTH(REPLACE(HER2, '!', ''))) / LENGTH('!') > 1) -- (((HER2 Column의 데이터 글자 수) - (HER2 Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(= 1))이 1보다 크면
            -- 7 - 
            THEN SUBSTR(HER2, INSTR(HER2, 'B2 !(')) -- HER2 Column에서 데이터 중 'B2 !('의 인덱스를 추출하고 데이터를 인덱스 위치에서부터 추출
            WHEN ((LENGTH(HER2) - LENGTH(REPLACE(HER2, '!', ''))) / LENGTH('!') = 1) -- (((HER2 Column의 데이터 글자 수) - (HER2 Column의 데이터 중 '!'를 ''(공백)으로 변환)) / '!'의 글자 수(= 1))가 1과 같으면
            THEN SUBSTR(HER2, INSTR(HER2, '!(')) -- HER2 Column에서 데이터 중 '!('의 인덱스를 추출하고 데이터를 인덱스 위치에서부터 추출
            -- WHEN(LENGTH(HER2) - LENGTH(REPLACE(HER2, '!', ''))) / LENGTH('!') > 1 THEN SUBSTR(HER2, INSTR(HER2, 'B2 !('))
            -- WHEN(LENGTH(HER2) - LENGTH(REPLACE(HER2, '!', ''))) / LENGTH('!') = 1 THEN SUBSTR(HER2, INSTR(HER2, '!('))
            ELSE SUBSTR(HER2, INSTR(HER2, 'B2')) -- 그렇지 않으면 HER2 Column에서 데이터 중 'B2'의 인덱스를 추출하고 데이터를 인덱스 위치에서부터 추출
        END AS HER2
    FROM (
        SELECT
            원무접수ID,
            CASE
                -- 공백을 가지고 있는 데이터를 조회하려면 != 사용
                -- HER2 Column에서 데이터 중 '&'나 'and'나 ','나 ';'의 인덱스가 0이 아니면(= '&'나 'and'나 ','나 ';'가 있으면)
                WHEN (INSTR(HER2, '&') != 0 OR INSTR(HER2, 'and') != 0 OR INSTR(HER2, ',') != 0 OR INSTR(HER2, ';') != 0)
                THEN REPLACE(HER2, '(', '!(') -- HER2 Column에서 '(' 데이터를 '!('로 변환
                ELSE HER2
            END AS HER2
        FROM (
            SELECT
                원무접수ID,
                REPLACE (
                    REPLACE (
                        REPLACE (
                            REPLACE (
                                REPLACE (
                                        HER2, 'positive', '(+)' -- HER2 Column의 데이터 중 'positive'를 '(+)'로 변환
                                        ),
                                    'negative', '(-)' -- HER2 Column의 데이터 중 'negative'를 '(-)'로 변환
                                    ),
                                '3+', '(+++)' -- HER2 Column의 데이터 중 '3+'를 '(+++)'로 변환
                                ),
                            '2+', '(++)' -- HER2 Column의 데이터 중 '2+'를 '(++)'로 변환
                            ),
                        '1+', '(+)' -- HER2 Column의 데이터 중 '1+'를 '(+)'로 변환
                    ) AS HER2
            FROM genetic_02
        ) genetic
    ) genetic
) genetic