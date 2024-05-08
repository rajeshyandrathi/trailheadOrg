public class AccountProcessor {
    
    @future
    public static void countContacts(Set<ID> AccountID){
         List<Account> accounts = [Select Id, Name from Account Where Id IN :AccountID];
        
        for (Account acc: accounts){
            List<Contact> Cntcts = acc.contacts;
            acc.Number_of_Contacts__c=Cntcts.size();
        }
        
        update accounts;
        
    }

}