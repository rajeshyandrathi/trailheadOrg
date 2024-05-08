public class ContactSearch {
    
    public static Contact[] searchForContacts(String LN,String PostCode){
        
        Contact[] cts = [SELECT Account.Name FROM Contact WHERE LastName = :LN AND MailingPostalCode= :PostCode];
        return cts;
    }

}