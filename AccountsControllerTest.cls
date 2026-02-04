@IsTest
public class AccountsControllerTest {

    @IsTest
    static void testAccountUpdate() {

        // Test Data
        List<Account> accList = new List<Account>{
            new Account(Name = 'Test Account 1'),
            new Account(Name = 'Test Account 2')
        };
        insert accList;

        Test.startTest();
        AccountsController.accountUpdate();
        Test.stopTest();

        // Assert
        List<Account> updatedAccounts = [
            SELECT Id, Name FROM Account
        ];
        System.assertEquals(2, updatedAccounts.size(), 'Accounts should be updated');
    }
}
