public class SoqlTr01 {

    //Account name'lerini ve telefon numaralarini console'a yazan bir method olusturunuz
    public void method01(){
        List<Account> accs = [SELECT Name, Phone FROM Account];
        //Tum data'yi tek satirda yazdirir
       System.debug(accs);
        //Her bir data'yi farkli bir satirda yazdirir
        for(Account w : accs){
           System.debug('Account Name: ' + w.Name + ' - Account Phone: ' + w.Phone); 
        }
    }
      //Account name'lerini ve telefon numaralarini console'a yazan bir method olusturunuz (Map Kullanin)
    public static void method02(){
        
        Map<Id, Account> accsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        //Tum data'yi tek satirda yazdirir
        System.debug(accsMap);
        
        for(Account w : accsMap.values()){
            System.debug('Account Name: ' + w.Name);
        }
                    
    }  
    //Herbir Contact icin, Account name, Account rating, Contact name, Contact department, ve Case number'i, Case subject'i console yazdiran method olusturunuz
    public static void method03(){
        List<Contact> contacts = [SELECT Contact.Name, 
                                		 Contact.Department, 
                                		 Account.Name, 
                                		 Account.Rating, 
                                		 (SELECT Case.CaseNumber, Case.Subject 
                                 		 FROM Cases)         
                         		  FROM Contact];
        //Data'yi ana object'ten(Contact) aliniz
        for(Contact w : contacts){
            System.debug(w.Name + ' - ' + w.Department + ' - ' + w.Account.Name + ' - ' + w.Account.Rating);
        }
        
    }
}