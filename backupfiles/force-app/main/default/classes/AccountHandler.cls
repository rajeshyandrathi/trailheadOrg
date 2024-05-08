public class AccountHandler {
    public void insertAccount(Integer value){
      List<Account> addAccounts= new List<Account>();
      Integer counter = 1;
      while(counter <= value){
        Account Acc = new Account();
          Acc.Name='Acme Inc'+ counter;
          Acc.AccountNumber='A000'+counter;
          addAccounts.add(Acc);
          counter=counter+1;
    }
	  insert addAccounts;
}
}