({
	doadd : function(component, event, helper) {
		var num1 = component.get('v.Input1');
        var num2 = component.get('v.Input2');
        //alert(parseInt(num1) + parseInt(num2));
        component.set('v.Output',parseInt(num1) + parseInt(num2));
	},
    dosub : function(component, event, helper) {
		var num1 = component.get('v.Input1');
        var num2 = component.get('v.Input2');
      // alert(parseInt(num1) - parseInt(num2));
      component.set('v.Output',parseInt(num1) - parseInt(num2));
	},
 	domultiply : function(component, event, helper) {
		var num1 = component.get('v.Input1');
        var num2 = component.get('v.Input2');
        //alert(parseInt(num1) * parseInt(num2));
        component.set('v.Output',parseInt(num1) * parseInt(num2));
	},
	dodivide : function(component, event, helper) {
		var num1 = component.get('v.Input1');
        var num2 = component.get('v.Input2');
        component.set('v.Output',parseInt(num1) / parseInt(num2));
	},
	dorefresh : function(component, event, helper) {
        component.set('v.Input1',"");
        component.set('v.Input2',"");
        component.set('v.Output',"");
	}

})