from dataclasses import replace
import pandas as pd
from Base_ETL import BaseETL
from nltk.tokenize import sent_tokenize

class VisualFindingStep03(BaseETL):

    def run(
        self,
    ):
        text ='''병 리 진 단
1. Stomach, subtotal gastrectomy;

   Adenocarcinoma (moderately differentiated) (intestinal type), (A8-A11), with

    1) invasion through all layers of the wall and to the perigastric fat tissue.

    2) clear resection margins.    

    3) tumor size; 4.5x4x1.7cm.

    4) lymphovascular spaces with tumor emboli.

    5) tumor metastasis, regional lymph nodes of lesser and greater curvatures (0/12,

       0/11) (A1-A3,A4-A5).          

    6) desmoplastic stromal reaction.

2. Lymph nodes, labeled "12P and No.13", biopsy;

   No tumor metastasis (0/2,0/1) (D,E).

3. Stump, labeled "proximal and distal", resection;

   No tumor (B,C).







   ◈ 검사항목
       1       -    C5503    Histopathologic Examination(임파절청소포함),1수술당 '''
        sent_del = text.replace("\n",' ')
        print(sent_del)
        # sent_del = sent_del.replace("    ",' ')
        # sent_del = sent_del.replace("No.",'No;')
        # sent_del = sent_del.replace("◎",'')
        # token = sent_del.split(". ")
        # if "stomach" in token[0]:
        #     for x in token[1:]:
        #         print(x)
        #         if "Slide key" not in x:
        #             y = x.lower().split(" ")
        #             for z in y:
        #                 if "measu" in z:
        #                     print(x) 

if __name__ == "__main__":
    obj = VisualFindingStep03()
    obj.run()
    
