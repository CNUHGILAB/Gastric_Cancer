from Genetic_Test.ETL_Genetic import ETLGenetic
from Genetic_Test.ETL_Genetic_Merge import ETLGeneticMerge

class ExeGenetic():
    
    def run(self):
        ETLGenetic.run()
        ETLGeneticMerge.run()
        
if __name__ == "__main__":
    obj = ExeGenetic()
    obj.run()