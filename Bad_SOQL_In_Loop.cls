public class Bad_SOQL_In_Loop {

    public static void updateContacts(List<Id> accountIds) {

        for (Id accId : accountIds) {
            List<Contact> cons = [
                SELECT Id, LastName
                FROM Contact
                WHERE AccountId = :accId
            ];

            for (Contact c : cons) {
                c.LastName = c.LastName + ' Updated';
            }

            update cons;
        }
    }
}
