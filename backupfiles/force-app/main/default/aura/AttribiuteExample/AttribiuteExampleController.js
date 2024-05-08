({
	doclick : function(component, event, helper) {
		alert(component.isValid());
        alert(component.getName());
        alert(component.get('v.Name'));
        component.set('v.Name',"Rajitha Yandrathi");
	}
})