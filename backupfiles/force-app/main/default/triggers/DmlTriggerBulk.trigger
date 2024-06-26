trigger DmlTriggerBulk on Account (after update) {
    
    List<Opportunity> relatedops = [SELECT Id,Name,Probability FROM Opportunity
        WHERE AccountId IN :Trigger.New];
    
     List<Opportunity> oppsToUpdate = new List<Opportunity>();
    
    for (Opportunity opp : relatedops){
        
        if ((opp.Probability>50) && (opp.Probability<100)){
             opp.Description = 'New description for opportunity.';
             oppsToUpdate.add(opp);
        }
        
    }
    update oppsToUpdate;

}