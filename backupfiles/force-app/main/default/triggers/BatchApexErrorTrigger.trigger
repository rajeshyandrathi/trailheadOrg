trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {

    List<BatchLeadConvertErrors__c> BatchLeadConvertErrors = new List<BatchLeadConvertErrors__c>();
    for(BatchApexErrorEvent Batch: Trigger.New){
        BatchLeadConvertErrors__c bc = new BatchLeadConvertErrors__c();
        bc.AsyncApexJobId__c = Batch.AsyncApexJobId;
        bc.Records__c = Batch.JobScope;
        bc.StackTrace__c = Batch.StackTrace;
        
        BatchLeadConvertErrors.add(bc);   
    }
    if (BatchLeadConvertErrors.size()>0){
        insert BatchLeadConvertErrors;
    }
}