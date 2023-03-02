import pandas as pd
from sqlalchemy import create_engine
import pymysql
pymysql.install_as_MySQLdb()

class BaseETL():

    def conn(
        self,
        db_name,
    ):
        # create_engine("mysql+pymysql://아이디"+"암호"+"@mysql주소:포트/데이터베이스이름?charset=utf8", encoding = 'utf-8')
        # create_engine("mysql+mysqlab://아이디:비밀번호(암호)@호스트이름(IP):포트/데이터베이스명?charset=utf8", encoding = 'utf-8')
        engine = create_engine("mysql+mysqldb://SC:cnuh12345!@127.0.0.1:3306/{}".format(db_name), encoding='utf-8')
        
        return engine

    def df_from_sql(
        self,
        db_name,
        sql,
    ):
        
        print("from {}".format(db_name))
        # print(sql)
        
        engine = self.conn(db_name)
        
        return pd.read_sql(sql, engine)

    def insert(
        self,
        df,
        db_name,
        tb_name,
        if_exists = "replace", # 기존 테이블이 있을 경우 삭제하고 새로운 테이블을 만들어 데이터를 넣음
    ):
        
        engine = self.conn(db_name)

        df.to_sql(
            con = engine,
            name = tb_name,
            if_exists = if_exists,
            index = False # DateFrame은 항상 Index가 있기 때문에 이 부분이 테이블 구조와 맞지 않을 수 있기 때문
        )
        
        print("to {}".format(db_name))


if __name__ == "__main__":
    obj = BaseETL()