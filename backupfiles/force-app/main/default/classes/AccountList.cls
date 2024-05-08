public without sharing class AccountList {
  @Auraenabled
  public static List<Account> getAccounts()
  {
      return ([Select Id, Name from Account]);
  }
}