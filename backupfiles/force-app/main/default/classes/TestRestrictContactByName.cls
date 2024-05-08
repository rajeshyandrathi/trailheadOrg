@isTest
public class TestRestrictContactByName {
    
        @isTest static void TestInvalidLastName() {
        
        Contact myContact = new Contact(LastName='INVALIDNAME');
        insert myContact;
        
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(myContact, false);
        Test.stopTest();
        // Verify 
        // In this case the creation should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot create contact with invalid last name.',
                             result.getErrors()[0].getMessage());
        
    }
    }