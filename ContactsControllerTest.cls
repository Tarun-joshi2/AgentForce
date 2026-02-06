@IsTest
public class ContactsControllerTest {

    @IsTest
    static void testContactUpdate() {

        // Parent Account
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        // Test Data
        List<Contact> conList = new List<Contact>{
            new Contact(LastName = 'Test Contact 1', AccountId = acc.Id),
            new Contact(LastName = 'Test Contact 2', AccountId = acc.Id)
        };
        insert conList;

        Test.startTest();
        ContactsController.contactUpdate();
        Test.stopTest();

        // Assert
        List<Contact> updatedContacts = [
            SELECT Id, LastName FROM Contact
        ];
        System.assertEquals(2, updatedContacts.size(), 'Contacts should be updated');
    }
}
