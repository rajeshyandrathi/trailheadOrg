global class SendReminderEmail implements Database.Batchable<sObject> {
    global String query;
	global String subject;
	global String body;
    global Database.QueryLocator start(Database.BatchableContext bc) {
          return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Speaker__c> scope) {
         String[] addresses = new String[]{},
            	 subjects = new String[]{},
                 messages = new String[]{};
        for (Speaker__c speaker : scope) {
            addresses.add(speaker.Email__c);
            subjects.add(this.subject);
            messages.add(this.body);
        }
        EmailManager em = new EmailManager(); 
        em.sendMail(addresses, subjects, messages);
    }
    global void finish(Database.BatchableContext bc) {
    }
}