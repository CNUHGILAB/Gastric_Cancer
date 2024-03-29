import pandas as pd
from Base_ETL import BaseETL
from functools import reduce

class Endoscope_FileMerge(BaseETL):

    def run(self):
        
        sql01 = "SELECT * FROM endoscope_total.endoscope_01;"
        sql02 = "SELECT * FROM endoscope_total.endoscope_02;"
        sql03 = "SELECT * FROM endoscope_total.endoscope_03;"
        sql04 = "SELECT * FROM endoscope_total.endoscope_04;"
        sql05 = "SELECT * FROM endoscope_total.endoscope_05;"
        sql06 = "SELECT * FROM endoscope_total.endoscope_06;"
        sql07 = "SELECT * FROM endoscope_total.endoscope_07;"
        sql08 = "SELECT * FROM endoscope_total.endoscope_08;"
        sql09 = "SELECT * FROM endoscope_total.endoscope_09;"
        sql10 = "SELECT * FROM endoscope_total.endoscope_10;"
        sql11 = "SELECT * FROM endoscope_total.endoscope_11;"
        sql12 = "SELECT * FROM endoscope_total.endoscope_12;"
        sql13 = "SELECT * FROM endoscope_total.endoscope_13;"
        sql14 = "SELECT * FROM endoscope_total.endoscope_14;"
        sql15 = "SELECT * FROM endoscope_total.endoscope_15;"
        sql16 = "SELECT * FROM endoscope_total.endoscope_16;"
        sql17 = "SELECT * FROM endoscope_total.endoscope_17;"
        sql18 = "SELECT * FROM endoscope_total.endoscope_18;"
        sql19 = "SELECT * FROM endoscope_total.endoscope_19;"
        sql20 = "SELECT * FROM endoscope_total.endoscope_20;"
        sql21 = "SELECT * FROM endoscope_total.endoscope_21;"
        sql22 = "SELECT * FROM endoscope_total.endoscope_22;"
        sql23 = "SELECT * FROM endoscope_total.endoscope_23;"
        sql24 = "SELECT * FROM endoscope_total.endoscope_24;"
        sql25 = "SELECT * FROM endoscope_total.endoscope_25;"
        sql26 = "SELECT * FROM endoscope_total.endoscope_26;"
        sql27 = "SELECT * FROM endoscope_total.endoscope_27;"
        sql28 = "SELECT * FROM endoscope_total.endoscope_28;"
        sql29 = "SELECT * FROM endoscope_total.endoscope_29;"
        sql30 = "SELECT * FROM endoscope_total.endoscope_30;"
        sql31 = "SELECT * FROM endoscope_total.endoscope_31;"
        sql32 = "SELECT * FROM endoscope_total.endoscope_32;"
        sql33 = "SELECT * FROM endoscope_total.endoscope_33;"
        sql34 = "SELECT * FROM endoscope_total.endoscope_34;"
        sql35 = "SELECT * FROM endoscope_total.endoscope_35;"
        sql36 = "SELECT * FROM endoscope_total.endoscope_36;"
        sql37 = "SELECT * FROM endoscope_total.endoscope_37;"
        sql38 = "SELECT * FROM endoscope_total.endoscope_38;"
        sql39 = "SELECT * FROM endoscope_total.endoscope_39;"
        sql40 = "SELECT * FROM endoscope_total.endoscope_40;"
        sql41 = "SELECT * FROM endoscope_total.endoscope_41;"
        sql42 = "SELECT * FROM endoscope_total.endoscope_42;"
        sql43 = "SELECT * FROM endoscope_total.endoscope_43;"
        sql44 = "SELECT * FROM endoscope_total.endoscope_44;"
        sql45 = "SELECT * FROM endoscope_total.endoscope_45;"
        sql46 = "SELECT * FROM endoscope_total.endoscope_46;"
        sql47 = "SELECT * FROM endoscope_total.endoscope_47;"
        sql48 = "SELECT * FROM endoscope_total.endoscope_48;"
        sql49 = "SELECT * FROM endoscope_total.endoscope_49;"
        sql50 = "SELECT * FROM endoscope_total.endoscope_50;"
        sql51 = "SELECT * FROM endoscope_total.endoscope_51;"
        sql52 = "SELECT * FROM endoscope_total.endoscope_52;"
        sql53 = "SELECT * FROM endoscope_total.endoscope_53;"
        sql54 = "SELECT * FROM endoscope_total.endoscope_54;"
        sql55 = "SELECT * FROM endoscope_total.endoscope_55;"
        sql56 = "SELECT * FROM endoscope_total.endoscope_56;"
        sql57 = "SELECT * FROM endoscope_total.endoscope_57;"
        sql58 = "SELECT * FROM endoscope_total.endoscope_58;"
        sql59 = "SELECT * FROM endoscope_total.endoscope_59;"
        sql60 = "SELECT * FROM endoscope_total.endoscope_60;"
        sql61 = "SELECT * FROM endoscope_total.endoscope_61;"
        sql62 = "SELECT * FROM endoscope_total.endoscope_62;"
        sql63 = "SELECT * FROM endoscope_total.endoscope_63;"
        sql64 = "SELECT * FROM endoscope_total.endoscope_64;"
        sql65 = "SELECT * FROM endoscope_total.endoscope_65;"
        sql66 = "SELECT * FROM endoscope_total.endoscope_66;"
        sql67 = "SELECT * FROM endoscope_total.endoscope_67;"
        sql68 = "SELECT * FROM endoscope_total.endoscope_68;"
        sql69 = "SELECT * FROM endoscope_total.endoscope_69;"
        sql70 = "SELECT * FROM endoscope_total.endoscope_70;"
        sql71 = "SELECT * FROM endoscope_total.endoscope_71;"
        sql72 = "SELECT * FROM endoscope_total.endoscope_72;"
        sql73 = "SELECT * FROM endoscope_total.endoscope_73;"
        sql74 = "SELECT * FROM endoscope_total.endoscope_74;"
        sql75 = "SELECT * FROM endoscope_total.endoscope_75;"
        sql76 = "SELECT * FROM endoscope_total.endoscope_76;"
        sql77 = "SELECT * FROM endoscope_total.endoscope_77;"
        sql78 = "SELECT * FROM endoscope_total.endoscope_78;"
        sql79 = "SELECT * FROM endoscope_total.endoscope_79;"
        sql80 = "SELECT * FROM endoscope_total.endoscope_80;"
        sql81 = "SELECT * FROM endoscope_total.endoscope_81;"
        sql82 = "SELECT * FROM endoscope_total.endoscope_82;"
        sql83 = "SELECT * FROM endoscope_total.endoscope_83;"
        sql84 = "SELECT * FROM endoscope_total.endoscope_84;"

        df01 = self.df_from_sql(db_name = "raw_data_total", sql = sql01)
        df02 = self.df_from_sql(db_name = "raw_data_total", sql = sql02)
        df03 = self.df_from_sql(db_name = "raw_data_total", sql = sql03)
        df04 = self.df_from_sql(db_name = "raw_data_total", sql = sql04)
        df05 = self.df_from_sql(db_name = "raw_data_total", sql = sql05)
        df06 = self.df_from_sql(db_name = "raw_data_total", sql = sql06)
        df07 = self.df_from_sql(db_name = "raw_data_total", sql = sql07)
        df08 = self.df_from_sql(db_name = "raw_data_total", sql = sql08)
        df09 = self.df_from_sql(db_name = "raw_data_total", sql = sql09)
        df10 = self.df_from_sql(db_name = "raw_data_total", sql = sql10)
        df11 = self.df_from_sql(db_name = "raw_data_total", sql = sql11)
        df12 = self.df_from_sql(db_name = "raw_data_total", sql = sql12)
        df13 = self.df_from_sql(db_name = "raw_data_total", sql = sql13)
        df14 = self.df_from_sql(db_name = "raw_data_total", sql = sql14)
        df15 = self.df_from_sql(db_name = "raw_data_total", sql = sql15)
        df16 = self.df_from_sql(db_name = "raw_data_total", sql = sql16)
        df17 = self.df_from_sql(db_name = "raw_data_total", sql = sql17)
        df18 = self.df_from_sql(db_name = "raw_data_total", sql = sql18)
        df19 = self.df_from_sql(db_name = "raw_data_total", sql = sql19)
        df20 = self.df_from_sql(db_name = "raw_data_total", sql = sql20)
        df21 = self.df_from_sql(db_name = "raw_data_total", sql = sql21)
        df22 = self.df_from_sql(db_name = "raw_data_total", sql = sql22)
        df23 = self.df_from_sql(db_name = "raw_data_total", sql = sql23)
        df24 = self.df_from_sql(db_name = "raw_data_total", sql = sql24)
        df25 = self.df_from_sql(db_name = "raw_data_total", sql = sql25)
        df26 = self.df_from_sql(db_name = "raw_data_total", sql = sql26)
        df27 = self.df_from_sql(db_name = "raw_data_total", sql = sql27)
        df28 = self.df_from_sql(db_name = "raw_data_total", sql = sql28)
        df29 = self.df_from_sql(db_name = "raw_data_total", sql = sql29)
        df30 = self.df_from_sql(db_name = "raw_data_total", sql = sql30)
        df31 = self.df_from_sql(db_name = "raw_data_total", sql = sql31)
        df32 = self.df_from_sql(db_name = "raw_data_total", sql = sql32)
        df33 = self.df_from_sql(db_name = "raw_data_total", sql = sql33)
        df34 = self.df_from_sql(db_name = "raw_data_total", sql = sql34)
        df35 = self.df_from_sql(db_name = "raw_data_total", sql = sql35)
        df36 = self.df_from_sql(db_name = "raw_data_total", sql = sql36)
        df37 = self.df_from_sql(db_name = "raw_data_total", sql = sql37)
        df38 = self.df_from_sql(db_name = "raw_data_total", sql = sql38)
        df39 = self.df_from_sql(db_name = "raw_data_total", sql = sql39)
        df40 = self.df_from_sql(db_name = "raw_data_total", sql = sql40)
        df41 = self.df_from_sql(db_name = "raw_data_total", sql = sql41)
        df42 = self.df_from_sql(db_name = "raw_data_total", sql = sql42)
        df43 = self.df_from_sql(db_name = "raw_data_total", sql = sql43)
        df44 = self.df_from_sql(db_name = "raw_data_total", sql = sql44)
        df45 = self.df_from_sql(db_name = "raw_data_total", sql = sql45)
        df46 = self.df_from_sql(db_name = "raw_data_total", sql = sql46)
        df47 = self.df_from_sql(db_name = "raw_data_total", sql = sql47)
        df48 = self.df_from_sql(db_name = "raw_data_total", sql = sql48)
        df49 = self.df_from_sql(db_name = "raw_data_total", sql = sql49)
        df50 = self.df_from_sql(db_name = "raw_data_total", sql = sql50)
        df51 = self.df_from_sql(db_name = "raw_data_total", sql = sql51)
        df52 = self.df_from_sql(db_name = "raw_data_total", sql = sql52)
        df53 = self.df_from_sql(db_name = "raw_data_total", sql = sql53)
        df54 = self.df_from_sql(db_name = "raw_data_total", sql = sql54)
        df55 = self.df_from_sql(db_name = "raw_data_total", sql = sql55)
        df56 = self.df_from_sql(db_name = "raw_data_total", sql = sql56)
        df57 = self.df_from_sql(db_name = "raw_data_total", sql = sql57)
        df58 = self.df_from_sql(db_name = "raw_data_total", sql = sql58)
        df59 = self.df_from_sql(db_name = "raw_data_total", sql = sql59)
        df60 = self.df_from_sql(db_name = "raw_data_total", sql = sql60)
        df61 = self.df_from_sql(db_name = "raw_data_total", sql = sql61)
        df62 = self.df_from_sql(db_name = "raw_data_total", sql = sql62)
        df63 = self.df_from_sql(db_name = "raw_data_total", sql = sql63)
        df64 = self.df_from_sql(db_name = "raw_data_total", sql = sql64)
        df65 = self.df_from_sql(db_name = "raw_data_total", sql = sql65)
        df66 = self.df_from_sql(db_name = "raw_data_total", sql = sql66)
        df67 = self.df_from_sql(db_name = "raw_data_total", sql = sql67)
        df68 = self.df_from_sql(db_name = "raw_data_total", sql = sql68)
        df69 = self.df_from_sql(db_name = "raw_data_total", sql = sql69)
        df70 = self.df_from_sql(db_name = "raw_data_total", sql = sql70)
        df71 = self.df_from_sql(db_name = "raw_data_total", sql = sql71)
        df72 = self.df_from_sql(db_name = "raw_data_total", sql = sql72)
        df73 = self.df_from_sql(db_name = "raw_data_total", sql = sql73)
        df74 = self.df_from_sql(db_name = "raw_data_total", sql = sql74)
        df75 = self.df_from_sql(db_name = "raw_data_total", sql = sql75)
        df76 = self.df_from_sql(db_name = "raw_data_total", sql = sql76)
        df77 = self.df_from_sql(db_name = "raw_data_total", sql = sql77)
        df78 = self.df_from_sql(db_name = "raw_data_total", sql = sql78)
        df79 = self.df_from_sql(db_name = "raw_data_total", sql = sql79)
        df80 = self.df_from_sql(db_name = "raw_data_total", sql = sql80)
        df81 = self.df_from_sql(db_name = "raw_data_total", sql = sql81)
        df82 = self.df_from_sql(db_name = "raw_data_total", sql = sql82)
        df83 = self.df_from_sql(db_name = "raw_data_total", sql = sql83)
        df84 = self.df_from_sql(db_name = "raw_data_total", sql = sql84)
        
        dfs = [df01, df02, df03, df04, df05,
                df06, df07, df08, df09, df10,
                df11, df12, df13, df14, df15,
                df16, df17, df18, df19, df20,
                df21, df22, df23, df24, df25,
                df26, df27, df28, df29, df30,
                df31, df32, df33, df34, df35,
                df36, df37, df38, df39, df40,
                df41, df42, df43, df44, df45,
                df46, df47, df48, df49, df50,
                df51, df52, df53, df54, df55,
                df56, df57, df58, df59, df60,
                df61, df62, df63, df64, df65,
                df66, df67, df68, df69, df70,
                df71, df72, df73, df74, df75,
                df76, df77, df78, df79, df80,
                
                df81, df82, df83, df84
        ]
        
        data = reduce(lambda left, right: pd.merge(left, right, how = 'outer'), dfs)
        data = data.drop_duplicates()
        # data = reduce(lambda left, right: pd.merge(left, right, on=['환자번호', '원무접수ID', '검사시행일']),dfs)
        #data.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/내시경.xlsx')
        
        self.insert(data, db_name = "endoscope_total", tb_name = "endoscope_file_merge") 


if __name__ == "__main__":
    obj = Endoscope_FileMerge()
    obj.run()