public class Bad_Not_Bulkified {

    public static void updateAccount(Id accId) {

        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :accId
        ];

        acc.Name = 'Updated';
        update acc;
    }
}
