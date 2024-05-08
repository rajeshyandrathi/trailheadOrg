({
	clickInsert : function(component, event, helper) {
		 var theStudents = component.get("v.newStudent");
        component.set("v.newStudent",theStudents);
	}
})