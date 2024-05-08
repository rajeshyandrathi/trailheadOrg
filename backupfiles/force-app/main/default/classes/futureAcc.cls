public class futureAcc {

    public void acc(){
        List<Account>acc = [select id,fax,phone from Account where industry='banking'];
        
        for (account a: acc){
            a.phone='+9999999';
 			update a;
        } 
    }
    
    @future
    public static void accs(){
        List<Account>acc = [select id,fax,phone from Account where industry='banking'];
        for(account a:acc){
 			a.fax='+911111111';
 			update a;
 	}
  
    }
    
    public void accss(){
        acc();
        accs();
    }
    
}