public class AccountWeatherController {
    
    public String city{get;set;}
    public String temp{get;set;}
    public string pressure{get;set;}
    public string humidity{get;set;}
    public string temp_min{get;set;}
    public string temp_max{get;set;}
    
    
    public AccountWeatherController(ApexPages.StandardController stdController){
        Account account = (Account)stdController.getRecord();
		account = [SELECT Id, ShippingCity FROM Account WHERE Id =:account.Id];
        
        String accountcity = account.ShippingCity;
        String apiKey = '84159038af591895981bf00bc1eef507';
        
        String requestEndpoint = 'http://api.openweathermap.org';
        requestEndpoint += '/data/2.5/weather';
        requestEndpoint += '?q=' + accountcity;
        //requestEndpoint += '&units=metric';
        requestEndpoint += '&APPID=' + apiKey;
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(requestEndpoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200)
        {
            Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            city = String.valueOf(results.get('name'));
            
            Map<String,Object> mainresults = (Map<String,Object>)(results.get('main'));
            temp = String.valueOf(mainResults.get('temp'));
            pressure = String.valueOf(mainResults.get('pressure'));
			humidity = String.valueOf(mainResults.get('humidity')); 
			temp_min = String.valueOf(mainResults.get('temp_min')); 
			temp_max = String.valueOf(mainResults.get('temp_max'));
   
        }
        else{
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'There was an error retrieving the weather information.');
           ApexPages.addMessage(myMsg);
        }
        
    }

}