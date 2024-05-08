public class ContactListController {
    @AuraEnabled
    public static List<Contact> getContactList(){
        List<Contact> contactlist = new List<Contact>([Select Id,Name,Email,Phone from Contact where Email !=null]);
        return contactlist;    
    }

}