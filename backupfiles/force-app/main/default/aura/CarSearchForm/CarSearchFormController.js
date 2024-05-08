({
	getCarType : function(component, helper) {
        var action = component.get("c.getCarTypes");
        action.setCallback(this, function(data) {
            component.set("v.carTypes", data.getReturnValue());
        });
        $A.enqueueAction(action);
	},
})