public with sharing class Good_Bulkified_Code {

    public static void updateAccounts(Set<Id> accIds) {

        List<Account> accs = [
            SELECT Id, Name
            FROM Account
            WHERE Id IN :accIds
        ];

        for (Account acc : accs) {
            acc.Name = acc.Name + ' Updated';
        }

        if (!accs.isEmpty()) {
            update accs;
        }
    }
}
