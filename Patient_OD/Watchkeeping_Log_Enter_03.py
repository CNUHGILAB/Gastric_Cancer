from base_etl import BaseETL

class WatchkeepingLogEnter03(BaseETL):

    def run(
        self,
    ):
        sql1 ='''
        SELECT enter.*, gc.*
        FROM
            gc_protocol.watchkeeping_log_enter_02 enter
            LEFT JOIN gc_raw.gc_op_all_202003 gc ON enter.ID = gc.환자번호
            and STR_TO_DATE(enter.DATE, '%%Y. %%m. %%d') = STR_TO_DATE(gc.입원일, '%%Y-%%m-%%d')
    '''
        df1 = self.df_from_sql(db_name="gc_protocol", sql=sql1)
        df1 = df1.sort_values(['DATE'])
        
        sql2 ='''
        SELECT transfer.*, gc.*
        FROM
            gc_protocol.watchkeeping_log_transfer_02 transfer
            LEFT JOIN gc_raw.gc_op_all_202003 gc ON transfer.ID = gc.환자번호
            and STR_TO_DATE(transfer.DATE, '%%Y. %%m. %%d') = STR_TO_DATE(gc.입원일, '%%Y-%%m-%%d')
    '''
        df2 = self.df_from_sql(db_name="gc_protocol", sql=sql2)
        df2 = df1.sort_values(['DATE'])
        
        sql3 ='''
        SELECT moveout.*, gc.*
        FROM
            gc_protocol.watchkeeping_log_moveout_02 moveout
            LEFT JOIN gc_raw.gc_op_all_202003 gc ON moveout.ID = gc.환자번호
            and STR_TO_DATE(moveout.DATE, '%%Y. %%m. %%d') = STR_TO_DATE(gc.입원일, '%%Y-%%m-%%d')
    '''
        df3 = self.df_from_sql(db_name="gc_protocol", sql=sql3)
        df3 = df1.sort_values(['DATE'])
        
        sql4 ='''
        SELECT `out`.*, gc.*
        FROM
            gc_protocol.watchkeeping_log_out_02 `out`
            LEFT JOIN gc_raw.gc_op_all_202003 gc ON `out`.ID = gc.환자번호
            and STR_TO_DATE(`out`.DATE, '%%Y. %%m. %%d') = STR_TO_DATE(gc.입원일, '%%Y-%%m-%%d')
    '''
        df4 = self.df_from_sql(db_name="gc_protocol", sql=sql4)
        df4 = df1.sort_values(['DATE'])
        # self.insert(df, db_name="gc_protocol", tb_name="watchkeeping_log_enter_03") 
        df1.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/merge_watchkeeping_log.xlsx', sheet_name = "입원")
        df2.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/merge_watchkeeping_log.xlsx', sheet_name = "전입")
        df3.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/merge_watchkeeping_log.xlsx', sheet_name = "전출")
        df4.to_excel('C:/Users/Hyunjeong Ki/Gastric_Cancer_xlsx/merge_watchkeeping_log.xlsx', sheet_name = "퇴원")
        
fin_enter_df = pd.DataFrame()
fin_transfer_df = pd.DataFrame()
fin_moveout_df = pd.DataFrame()
fin_out_df = pd.DataFrame()
fin_serious_df = pd.DataFrame()
fin_death_df = pd.DataFrame()
fin_OP_df = pd.DataFrame()
fin_EM_df = pd.DataFrame()
fin_OPdue_df = pd.DataFrame()

    
if __name__ == "__main__":
    obj = WatchkeepingLogEnter03()
    obj.run()           