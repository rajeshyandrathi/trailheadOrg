({
	add : function(component) {
		
        var val = component.get("v.num1") + component.get("v.num2");
        component.set("v.sum",val);
	}
})