Global class BatchExample implements Database.Batchable<sObject> {
    Global Database.QueryLocator start(database.BatchableContext bc){
        Return Database.getQueryLocator('Select id,name,phone,Description from account');
    }

    Global void Execute(Database.BatchableContext bc,list<account> acc){
        list<account> bat=new list<account>();
        for(account a:acc){
     		a.phone='0090091';
 			//a.Email__c='ravi@gmail.com';
 			a.Description=bc.getjobid();
 			bat.add(a);
 		}
		update bat;
        string[]x = new string[]{};
            for(account a:bat){
 			x.add(a.Phone);
 		}
        messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
		msg.setToAddresses(x);
 		msg.setsubject('Batch Execution');
 		msg.setplaintextbody('batch Execution');
 		messaging.Email[] em=new messaging.Email[]{msg};
 		messaging.sendemail(em);
    }
    
     Global void Finish(Database.Batchablecontext bc){
 		messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
 		string[] x= new string[]{'rajeshyandrathi@gmail.com'};
 		msg.setToAddresses(x);
 		msg.setsubject('Batch finish');
 		msg.setplaintextbody('Batch finished');
 		messaging.Email[] em=new messaging.Email[]{msg};
 		messaging.sendemail(em);
 }
}