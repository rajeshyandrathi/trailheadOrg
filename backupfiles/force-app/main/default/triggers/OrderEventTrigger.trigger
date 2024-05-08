trigger OrderEventTrigger on Order_Event__e (after insert) {   

    List < Task > listTasks = new List < Task >();
    for (Order_Event__e event : Trigger.New) {

        if (event.Has_Shipped__c == true) {

            // Create Case to dispatch new team.
            Task tsk = new Task();
            tsk.Status = 'New';
            tsk.Priority = 'Medium';
            tsk.Subject = 'Follow up on shipped order ' + 
                event.Order_Number__c;
            tsk.OwnerId = UserInfo.getUserId();
            listTasks.add(tsk);

        }

   }
    insert listTasks;

}