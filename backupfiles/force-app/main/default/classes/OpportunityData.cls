public with sharing class OpportunityData {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunities(String accId){
        return [Select ID,Name, Amount from Opportunity where AccountId=:accID];
    }
}