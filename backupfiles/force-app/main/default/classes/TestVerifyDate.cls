@isTest
public class TestVerifyDate {
    
     @isTest static void within30days() {
        Date d = VerifyDate.CheckDates(System.today()+1,System.today()+2);
        Date d1 = VerifyDate.CheckDates(System.today(),System.today()+50);
    }
   
 }