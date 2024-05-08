public class QueuableExample implements Queueable{
    public void execute(QueueableContext qc){
        List<Account> acc=[select id,fax,phone,description from Account where industry='banking'];
            
            for (account a:acc){
                a.phone='+999999';
                a.fax='+25252525';
                
                string ids= qc.getJobId();
                a.description=ids;
                update a;               
                
            }
    }
}