trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tasklist = new List<Task>();
    
    for (opportunity opp: [Select ID,StageName from Opportunity where StageName='Closed Won' and ID IN:Trigger.new]){
        taskList.add(new Task(Subject = 'Follow Up Test Task',WhatId = opp.Id));
    }
        
    if (tasklist.size()>0){
        insert taskList;

    }

}