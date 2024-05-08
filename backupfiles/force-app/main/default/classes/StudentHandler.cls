public class StudentHandler {
    
    public static Student__c insertNewStudent(String Name,String Mobile,String Country,String State,Date DOB ) {
        Student__c Stdt = new Student__c();
        Stdt.Name = Name;
        Stdt.Mobile__c = Mobile;
        Stdt.Country__c = Country;
        Stdt.State__c = State;
        Stdt.DOB__c = DOB;
        
        try
        {
            insert Stdt;
            system.debug('Inserted Record');
        } catch (Exception e) {
            return null;
        }
        return Stdt;
    }
}