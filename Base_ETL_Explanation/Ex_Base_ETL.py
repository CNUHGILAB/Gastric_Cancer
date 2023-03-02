import pandas as pd
from sqlalchemy import create_engine


# Class BaseETL
class BaseETL():
    
    # conn 함수 : db_name으로 입력된 데이터베이스명에 대한 Connection 정보를 Return 해주는 함수
    # df_from_sql, insert 함수에서 사용
    def conn(
        self,
        db_name, # 데이터베이스명
                # db_name으로 입력된 데이터베이스에 대한 Connection 정보를 Return
    ):
        
        engine = create_engine("postgresql://postgres:mimic@127.0.0.1:5432/{}".format(db_name), encoding='utf-8')
        
        return engine
    
    # df_from_sql 함수 : db_name에 입력된 데이터베이스를 대상으로 SELECT SQL을 실행하는 함수
    # SQL의 결과를 데이터프레임(DF)에 저장하는 역할
    # SQL은 Pandas 라이브러리의 read_sql을 사용하여 실행하고 결과값인 데이터프레임(DataFrame)을 반환
    # SELECT() : 하나 또는 그 이상의 테이블에서 데이터를 추출하는 SQL의 데이터 조작 언어(DML) 중 하나
    def df_from_sql(
        self,
        db_name, # 데이터베이스명
        sql, # SELECT SQL
    ):
        print("from {}".format(db_name))
        print(sql)
        
        engine = self.conn(db_name) # db_name에 입력된 데이터베이스에서 sql을 실행
        
        return pd.read_sql(sql, engine) # Pandas 라이브러리의 read_sql을 사용하여 DataFrame Return

    # insert 함수 : 데이터프레임(DF)에 저장된 데이터를 지정된 데이터베이스, 테이블에 저장하는 함수
    # 데이터프레임(DF)에 저장된 데이터를 데이터베이스에 지정된 테이블(tb_name)로 저장하는 역할
    # 데이터 저장을 위해 Pandas 라이브러리의 to_sql 함수 사용
    # if_exists의 default값은 replace로 지정한 이름의 테이블이 이미 존재할 경우 삭제 후 다시 생성
    def insert(
        self,
        df, # 데이터프레임
        db_name, # 데이터베이스명
        tb_name, # 저장할 테이블명
        if_exists = "replace",
    ):
        
        engine = self.conn(db_name)

        df.to_sql(
            con = engine,
            name = tb_name,
            if_exists = if_exists,
        )
        
        print("to {}".format(db_name))


if __name__ == "__main__": # Main 함수 선언, 시작
    obj = BaseETL()