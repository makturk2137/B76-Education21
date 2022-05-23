public class SoqlTr07 {

    public static void method01(){
        
        //Opportunity Object olusturunuz
        //Olusturdugunuz Opportunity Object'ini siliniz
        Opportunity obj = new Opportunity();
        obj.Name='TechProEd';
        obj.StageName='Closed Won';
        obj.CloseDate=Date.today().addDays(2);
        Database.insert(obj);
        
    }
}