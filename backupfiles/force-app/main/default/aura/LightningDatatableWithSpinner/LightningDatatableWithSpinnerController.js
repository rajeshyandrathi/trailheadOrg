({
    doInit: function(component,event,helper){
            component.set('v.columns', [
            {label: 'Name', fieldName: 'Name', type: 'text'},
            {label: 'Billing State', fieldName: 'BillingState', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
            {label: 'Website', fieldName: 'Website', type: 'text'}
        ]);
    },
    getAccounts : function(component, event, helper) {
        //call getAccountsHelper method
        helper.getAccountsHelper(component, event, helper);
    },
     
    // function automatic called by aura:waiting event  
    showSpinner: function(component, event, helper) {
        // make Spinner attribute true for displaying loading spinner 
        component.set("v.spinner", true); 
    },
     
    // function automatic called by aura:doneWaiting event 
    hideSpinner : function(component,event,helper){
        // make Spinner attribute to false for hiding loading spinner    
        component.set("v.spinner", false);
    }
})