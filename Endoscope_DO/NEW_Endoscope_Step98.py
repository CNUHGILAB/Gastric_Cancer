import pandas as pd
from base_etl import BaseETL
from functools import reduce

class NEWEndoscopeStep98(BaseETL):

    def run(
        self,
    ):
        sql01 = "SELECT * FROM gc_protocol.newendoscopestep01;"
        sql02 = "SELECT * FROM gc_protocol.newendoscopestep02;"
        sql03 = "SELECT * FROM gc_protocol.newendoscopestep03;"
        sql04 = "SELECT * FROM gc_protocol.newendoscopestep04;"
        sql05 = "SELECT * FROM gc_protocol.newendoscopestep05;"
        sql06 = "SELECT * FROM gc_protocol.newendoscopestep06;"
        sql07 = "SELECT * FROM gc_protocol.newendoscopestep07;"
        sql08 = "SELECT * FROM gc_protocol.newendoscopestep08;"
        sql09 = "SELECT * FROM gc_protocol.newendoscopestep09;"
        sql10 = "SELECT * FROM gc_protocol.newendoscopestep10;"
        sql11 = "SELECT * FROM gc_protocol.newendoscopestep11;"
        sql12 = "SELECT * FROM gc_protocol.newendoscopestep12;"
        sql13 = "SELECT * FROM gc_protocol.newendoscopestep13;"
        sql14 = "SELECT * FROM gc_protocol.newendoscopestep14;"
        sql15 = "SELECT * FROM gc_protocol.newendoscopestep15;"
        sql16 = "SELECT * FROM gc_protocol.newendoscopestep16;"
        sql17 = "SELECT * FROM gc_protocol.newendoscopestep17;"
        sql18 = "SELECT * FROM gc_protocol.newendoscopestep18;"
        sql19 = "SELECT * FROM gc_protocol.newendoscopestep19;"
        sql20 = "SELECT * FROM gc_protocol.newendoscopestep20;"
        sql21 = "SELECT * FROM gc_protocol.newendoscopestep21;"
        sql22 = "SELECT * FROM gc_protocol.newendoscopestep22;"
        sql23 = "SELECT * FROM gc_protocol.newendoscopestep23;"
        sql24 = "SELECT * FROM gc_protocol.newendoscopestep24;"
        sql25 = "SELECT * FROM gc_protocol.newendoscopestep25;"
        sql26 = "SELECT * FROM gc_protocol.newendoscopestep26;"
        sql27 = "SELECT * FROM gc_protocol.newendoscopestep27;"
        sql28 = "SELECT * FROM gc_protocol.newendoscopestep28;"
        sql29 = "SELECT * FROM gc_protocol.newendoscopestep29;"
        sql30 = "SELECT * FROM gc_protocol.newendoscopestep30;"
        sql31 = "SELECT * FROM gc_protocol.newendoscopestep31;"
        sql32 = "SELECT * FROM gc_protocol.newendoscopestep32;"
        sql33 = "SELECT * FROM gc_protocol.newendoscopestep33;"
        sql34 = "SELECT * FROM gc_protocol.newendoscopestep34;"
        sql35 = "SELECT * FROM gc_protocol.newendoscopestep35;"
        sql36 = "SELECT * FROM gc_protocol.newendoscopestep36;"
        sql37 = "SELECT * FROM gc_protocol.newendoscopestep37;"
        sql38 = "SELECT * FROM gc_protocol.newendoscopestep38;"
        sql39 = "SELECT * FROM gc_protocol.newendoscopestep39;"
        sql40 = "SELECT * FROM gc_protocol.newendoscopestep40;"
        sql41 = "SELECT * FROM gc_protocol.newendoscopestep41;"
        sql42 = "SELECT * FROM gc_protocol.newendoscopestep42;"
        sql43 = "SELECT * FROM gc_protocol.newendoscopestep43;"
        sql44 = "SELECT * FROM gc_protocol.newendoscopestep44;"
        sql45 = "SELECT * FROM gc_protocol.newendoscopestep45;"
        sql46 = "SELECT * FROM gc_protocol.newendoscopestep46;"
        sql47 = "SELECT * FROM gc_protocol.newendoscopestep47;"
        sql48 = "SELECT * FROM gc_protocol.newendoscopestep48;"
        sql49 = "SELECT * FROM gc_protocol.newendoscopestep49;"
        sql50 = "SELECT * FROM gc_protocol.newendoscopestep50;"
        sql51 = "SELECT * FROM gc_protocol.newendoscopestep51;"
        sql52 = "SELECT * FROM gc_protocol.newendoscopestep52;"
        sql53 = "SELECT * FROM gc_protocol.newendoscopestep53;"
        sql54 = "SELECT * FROM gc_protocol.newendoscopestep54;"
        sql55 = "SELECT * FROM gc_protocol.newendoscopestep55;"
        sql56 = "SELECT * FROM gc_protocol.newendoscopestep56;"
        sql57 = "SELECT * FROM gc_protocol.newendoscopestep57;"
        sql58 = "SELECT * FROM gc_protocol.newendoscopestep58;"
        sql59 = "SELECT * FROM gc_protocol.newendoscopestep59;"
        sql60 = "SELECT * FROM gc_protocol.newendoscopestep60;"
        sql61 = "SELECT * FROM gc_protocol.newendoscopestep61;"
        sql62 = "SELECT * FROM gc_protocol.newendoscopestep62;"
        sql63 = "SELECT * FROM gc_protocol.newendoscopestep63;"
        sql64 = "SELECT * FROM gc_protocol.newendoscopestep64;"
        sql65 = "SELECT * FROM gc_protocol.newendoscopestep65;"
        sql66 = "SELECT * FROM gc_protocol.newendoscopestep66;"
        sql67 = "SELECT * FROM gc_protocol.newendoscopestep67;"
        sql68 = "SELECT * FROM gc_protocol.newendoscopestep68;"
        sql69 = "SELECT * FROM gc_protocol.newendoscopestep69;"
        sql70 = "SELECT * FROM gc_protocol.newendoscopestep70;"
        sql71 = "SELECT * FROM gc_protocol.newendoscopestep71;"
        sql72 = "SELECT * FROM gc_protocol.newendoscopestep72;"
        sql73 = "SELECT * FROM gc_protocol.newendoscopestep73;"
        sql74 = "SELECT * FROM gc_protocol.newendoscopestep74;"
        sql75 = "SELECT * FROM gc_protocol.newendoscopestep75;"
        sql76 = "SELECT * FROM gc_protocol.newendoscopestep76;"
        sql77 = "SELECT * FROM gc_protocol.newendoscopestep77;"
        sql78 = "SELECT * FROM gc_protocol.newendoscopestep78;"
        sql79 = "SELECT * FROM gc_protocol.newendoscopestep79;"
        sql80 = "SELECT * FROM gc_protocol.newendoscopestep80;"
        sql81 = "SELECT * FROM gc_protocol.newendoscopestep81;"
        sql82 = "SELECT * FROM gc_protocol.newendoscopestep82;"
        sql83 = "SELECT * FROM gc_protocol.newendoscopestep83;"
        sql84 = "SELECT * FROM gc_protocol.newendoscopestep84;"

        
        

        
        df01 = self.df_from_sql(db_name="gc_raw", sql=sql01)
        df02 = self.df_from_sql(db_name="gc_raw", sql=sql02)
        df03 = self.df_from_sql(db_name="gc_raw", sql=sql03)
        df04 = self.df_from_sql(db_name="gc_raw", sql=sql04)
        df05 = self.df_from_sql(db_name="gc_raw", sql=sql05)
        df06 = self.df_from_sql(db_name="gc_raw", sql=sql06)
        df07 = self.df_from_sql(db_name="gc_raw", sql=sql07)
        df08 = self.df_from_sql(db_name="gc_raw", sql=sql08)
        df09 = self.df_from_sql(db_name="gc_raw", sql=sql09)
        df10 = self.df_from_sql(db_name="gc_raw", sql=sql10)
        df11 = self.df_from_sql(db_name="gc_raw", sql=sql11)
        df12 = self.df_from_sql(db_name="gc_raw", sql=sql12)
        df13 = self.df_from_sql(db_name="gc_raw", sql=sql13)
        df14 = self.df_from_sql(db_name="gc_raw", sql=sql14)
        df15 = self.df_from_sql(db_name="gc_raw", sql=sql15)
        df16 = self.df_from_sql(db_name="gc_raw", sql=sql16)
        df17 = self.df_from_sql(db_name="gc_raw", sql=sql17)
        df18 = self.df_from_sql(db_name="gc_raw", sql=sql18)
        df19 = self.df_from_sql(db_name="gc_raw", sql=sql19)
        df20 = self.df_from_sql(db_name="gc_raw", sql=sql20)
        df21 = self.df_from_sql(db_name="gc_raw", sql=sql21)
        df22 = self.df_from_sql(db_name="gc_raw", sql=sql22)
        df23 = self.df_from_sql(db_name="gc_raw", sql=sql23)
        df24 = self.df_from_sql(db_name="gc_raw", sql=sql24)
        df25 = self.df_from_sql(db_name="gc_raw", sql=sql25)
        df26 = self.df_from_sql(db_name="gc_raw", sql=sql26)
        df27 = self.df_from_sql(db_name="gc_raw", sql=sql27)
        df28 = self.df_from_sql(db_name="gc_raw", sql=sql28)
        df29 = self.df_from_sql(db_name="gc_raw", sql=sql29)
        df30 = self.df_from_sql(db_name="gc_raw", sql=sql30)
        df31 = self.df_from_sql(db_name="gc_raw", sql=sql31)
        df32 = self.df_from_sql(db_name="gc_raw", sql=sql32)
        df33 = self.df_from_sql(db_name="gc_raw", sql=sql33)
        df34 = self.df_from_sql(db_name="gc_raw", sql=sql34)
        df35 = self.df_from_sql(db_name="gc_raw", sql=sql35)
        df36 = self.df_from_sql(db_name="gc_raw", sql=sql36)
        df37 = self.df_from_sql(db_name="gc_raw", sql=sql37)
        df38 = self.df_from_sql(db_name="gc_raw", sql=sql38)
        df39 = self.df_from_sql(db_name="gc_raw", sql=sql39)
        df40 = self.df_from_sql(db_name="gc_raw", sql=sql40)
        df41 = self.df_from_sql(db_name="gc_raw", sql=sql41)
        df42 = self.df_from_sql(db_name="gc_raw", sql=sql42)
        df43 = self.df_from_sql(db_name="gc_raw", sql=sql43)
        df44 = self.df_from_sql(db_name="gc_raw", sql=sql44)
        df45 = self.df_from_sql(db_name="gc_raw", sql=sql45)
        df46 = self.df_from_sql(db_name="gc_raw", sql=sql46)
        df47 = self.df_from_sql(db_name="gc_raw", sql=sql47)
        df48 = self.df_from_sql(db_name="gc_raw", sql=sql48)
        df49 = self.df_from_sql(db_name="gc_raw", sql=sql49)
        df50 = self.df_from_sql(db_name="gc_raw", sql=sql50)
        df51 = self.df_from_sql(db_name="gc_raw", sql=sql51)
        df52 = self.df_from_sql(db_name="gc_raw", sql=sql52)
        df53 = self.df_from_sql(db_name="gc_raw", sql=sql53)
        df54 = self.df_from_sql(db_name="gc_raw", sql=sql54)
        df55 = self.df_from_sql(db_name="gc_raw", sql=sql55)
        df56 = self.df_from_sql(db_name="gc_raw", sql=sql56)
        df57 = self.df_from_sql(db_name="gc_raw", sql=sql57)
        df58 = self.df_from_sql(db_name="gc_raw", sql=sql58)
        df59 = self.df_from_sql(db_name="gc_raw", sql=sql59)
        df60 = self.df_from_sql(db_name="gc_raw", sql=sql60)
        df61 = self.df_from_sql(db_name="gc_raw", sql=sql61)
        df62 = self.df_from_sql(db_name="gc_raw", sql=sql62)
        df63 = self.df_from_sql(db_name="gc_raw", sql=sql63)
        df64 = self.df_from_sql(db_name="gc_raw", sql=sql64)
        df65 = self.df_from_sql(db_name="gc_raw", sql=sql65)
        df66 = self.df_from_sql(db_name="gc_raw", sql=sql66)
        df67 = self.df_from_sql(db_name="gc_raw", sql=sql67)
        df68 = self.df_from_sql(db_name="gc_raw", sql=sql68)
        df69 = self.df_from_sql(db_name="gc_raw", sql=sql69)
        df70 = self.df_from_sql(db_name="gc_raw", sql=sql70)
        df71 = self.df_from_sql(db_name="gc_raw", sql=sql71)
        df72 = self.df_from_sql(db_name="gc_raw", sql=sql72)
        df73 = self.df_from_sql(db_name="gc_raw", sql=sql73)
        df74 = self.df_from_sql(db_name="gc_raw", sql=sql74)
        df75 = self.df_from_sql(db_name="gc_raw", sql=sql75)
        df76 = self.df_from_sql(db_name="gc_raw", sql=sql76)
        df77 = self.df_from_sql(db_name="gc_raw", sql=sql77)
        df78 = self.df_from_sql(db_name="gc_raw", sql=sql78)
        df79 = self.df_from_sql(db_name="gc_raw", sql=sql79)
        df80 = self.df_from_sql(db_name="gc_raw", sql=sql80)
        df81 = self.df_from_sql(db_name="gc_raw", sql=sql81)
        df82 = self.df_from_sql(db_name="gc_raw", sql=sql82)
        df83 = self.df_from_sql(db_name="gc_raw", sql=sql83)
        df84 = self.df_from_sql(db_name="gc_raw", sql=sql84)
        

        
        dfs = [df01, df02, df03, df04, df05, df06, df07, df08, df09, df10, 
                df11, df12, df13, df14, df15, df16, df17, df18, df19, df20, 
                df21, df22, df23, df24, df25, df26, df27, df28, df29, df30,
                df31, df32, df33, df34, df35, df36, df37, df38, df39, df40, 
                df41, df42, df43, df44, df45, df46, df47, df48, df49, df50, 
                df51, df52, df53, df54, df55, df56, df57, df58, df59, df60, 
                df61, df62, df63, df64, df65, df66, df67, df68, df69, df70,
                df71, df72, df73, df74, df75, df76, df77, df78, df79, df80,
                df81, df82, df83, df84]
        data = reduce(lambda left, right: pd.merge(left, right, how='outer' ), dfs)
        data = data.drop_duplicates()
        # data = reduce(lambda left, right: pd.merge(left, right, on=['환자번호', '원무접수ID', '검사시행일']),dfs)
        
        data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/내시경.xlsx')
        self.insert(data, db_name="gc_protocol", tb_name="newendoscopestep98") 
        

if __name__ == "__main__":
    obj = NEWEndoscopeStep98()
    obj.run()