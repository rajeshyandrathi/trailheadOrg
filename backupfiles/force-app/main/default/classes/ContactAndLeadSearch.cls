public class ContactAndLeadSearch {
    
    public static List<List<SObject>> searchContactsAndLeads(String Txt){
        
        List<List<sObject>> searchList = [FIND :Txt IN ALL FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
        return searchList;
    }

}