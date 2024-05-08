({
doinit : function(component, event, helper) {
    var action = component.get("c.getAccounts");
    action.setCallback(this, function(response){
            var result =response.getReturnValue();
            console.log(result);
            component.set("v.Accounts",result);
    });
    $A.enqueueAction(action);
}
});