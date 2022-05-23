public class SoqlTr02 {
    
    //Example 1: Acoount objectlerinin minimum, maximum, ve ortalama isci 
    //sayilarini veren method olusturunuz.    
    //1.Way: 
    public static void method01(){        
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees), AVG(NumberOfEmployees) FROM Account];
        
        //Record'daki tum data'yi ayni satirda yazdirir
        System.debug(result);//(AggregateResult:{expr0=120, expr1=145000, expr2=21996.81818181818})
        
        //Record'daki herbir data'yi ayri ayri alabiliriz
        System.debug('Minimum number of employees = ' + result[0].get('expr0'));//Minimum number of employees = 120
        System.debug('Maximum number of employees = ' + result[0].get('expr1'));//Maximum number of employees = 145000
        System.debug('Average number of employees = ' + result[0].get('expr2'));//Average number of employees = 21996.81818181818       
    }    
    //2.Way: 
    public static void method02(){
        //Alias ==> Takma isim
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees) min, MAX(NumberOfEmployees) max, AVG(NumberOfEmployees) avg FROM Account];
        
        //Record'daki tum data'yi ayni satirda yazdirir
        System.debug(result);//(AggregateResult:{min=120, max=145000, avg=21996.81818181818})
        
        //Record'daki herbir data'yi ayri ayri alabiliriz
        System.debug('Minimum number of employees = ' + result[0].get('min'));//Minimum number of employees = 120
        System.debug('Maximum number of employees = ' + result[0].get('max'));//Maximum number of employees = 145000
        System.debug('Average number of employees = ' + result[0].get('avg'));//Average number of employees = 21996.81818181818        
    }
    
    //Example 2: Acoount ortalama isci sayilarini Industry'lere gore veren veren method olusturunuz.
    
    //1.Way:
    public static void method03(){        
        AggregateResult[] result = [SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry];
        
        //Record'daki tum data'yi ayni satirda yazdirir
        System.debug(result);//(AggregateResult:{Industry=null, avgByIndustry=null}, AggregateResult:{Industry=Agriculture, avgByIndustry=null}, AggregateResult:{Industry=Apparel, avgByIndustry=9000.0}, AggregateResult:{Industry=Banking, avgByIndustry=null}, AggregateResult:{Industry=Biotechnology, avgByIndustry=265.0}, AggregateResult:{Industry=Construction, avgByIndustry=2680.0}, AggregateResult:{Industry=Consulting, avgByIndustry=120.0}, AggregateResult:{Industry=Education, avgByIndustry=39000.0}, AggregateResult:{Industry=
        
        //Record'daki herbir data'yi ayri ayri alabiliriz
        for(AggregateResult w : result){
            System.debug('Industry:' + w.get('Industry') + ' ==> Average Number of Employees:' + w.get('avgByIndustry'));
        }    
    }
    
    //2.Way: Not recommended
    public static void method04(){       
        //Record'daki herbir data'yi ayri ayri alabiliriz
        for(AggregateResult w : [SELECT Industry, AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry]){
            System.debug('Industry:' + w.get('Industry') + ' ==> Average Number of Employees:' + w.get('avgByIndustry'));
        }        
    }
}