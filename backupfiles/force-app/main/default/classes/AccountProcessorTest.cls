@isTest
public class AccountProcessorTest {
    
    @isTest
    public static void testAccountProcessor(){
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;

        Contact cont = New Contact();
        cont.FirstName ='Bob';
        cont.LastName ='Masters';
        cont.AccountId = a.Id;
        Insert cont;
       
        set<Id> setAccId = new Set<ID>();
        setAccId.add(a.id);
 
        Test.startTest();
            AccountProcessor.countContacts(setAccId);
        Test.stopTest();
       
        Account ACC = [select Number_of_Contacts__c from Account where id = :a.id LIMIT 1];
       // System.assertEquals (ACC.Number_of_Contacts__c,1);
  }
}