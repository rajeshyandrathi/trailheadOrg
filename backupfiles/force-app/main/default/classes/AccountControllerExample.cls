public class AccountControllerExample {
 @AuraEnabled
    public static List <Account> fetchAccounts() {
        //Qyery 10 accounts
        List<Account> accList = [SELECT Id, Name, BillingState, 
                                    Website, Phone from Account LIMIT 10];
        //return list of accounts
        return accList;
    }
}