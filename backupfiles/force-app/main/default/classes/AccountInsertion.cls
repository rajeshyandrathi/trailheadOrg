public class AccountInsertion {

    public static void insertion(){
        Account a = new Account();
        a.name = 'Testing Account';
        insert a;
    }
    
    public void updateaccount(){
        Account acc = [Select ID,AccountNumber,Active__c from Account where name='Testing Account'];
        acc.AccountNumber='127356423754';
        update acc;
    }
    
}