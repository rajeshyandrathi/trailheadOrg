public class AnimalLocator {
    public static String getAnimalNameById(Integer Id){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' +Id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
		String strResp='';
        if (response.getStatusCode()==200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
           // List<Object> animals = (List<Object>)results.get('animal');
           Map<string,object> animals = (map<string,object>) results.get('animal');
           strResp = string.valueof(animals.get('name'));         
        }      
        return strResp;
    }
}