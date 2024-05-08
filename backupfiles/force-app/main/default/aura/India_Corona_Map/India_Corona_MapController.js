({
    initialiseSetup : function(component, event, helper) {
        Promise.all([helper.fetchData(component, 'https://api.covid19india.org/v2/state_district_wise.json' ,'v.nationalData'),
        helper.fetchData(component, 'https://api.covid19india.org/data.json' ,'v.stateData')])
        .then(values => {
            component.set("v.isLoading", false);
            let nationalData = values[1];
            let stateData = values[0];            
            const lastArrayIndex = nationalData.cases_time_series.length - 1;
            
            //draw donut for todays cases
            helper.todaysCasesDonut(component, nationalData.cases_time_series[lastArrayIndex]);
            
            //draw donut for todays cases
            helper.overallCasesDonut(component, nationalData.cases_time_series[lastArrayIndex]);
            
            //last 5 days count
            const lastFiveDaysData = [];
            for(let i = 0 ; i < 5 ; i ++)
            	lastFiveDaysData.push(nationalData.cases_time_series[lastArrayIndex - i]);
            
            //historical per day count for past 5 days
            helper.historicalPerDayCount(component, lastFiveDaysData);
            
            //historical overall count for past 5 days
            helper.historicalTotalCount(component, lastFiveDaysData);
            
            //find state list
            let states = [];
            let districtDataByState = {};        
            stateData.forEach(st => {
            	states = [...states, st.state];
                districtDataByState[st.state] = st.districtData;
        	});
           
            component.set("v.states", states);
            component.set("v.stateData", districtDataByState);
        
            //statewise count
            helper.stateWiseCount(component);
        })
        .catch( err => console.log(err));
	},
    onSelectState : function(component, event, helper){
        //statewise count
        helper.stateWiseCount(component);
    }
})