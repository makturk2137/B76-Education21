public class SoqlTr08 {
    
    public static void method01(){
        
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE isDeleted=true ALL ROWS];
        
        Undelete opps;//Database.undelete(opps);
        
    }

}