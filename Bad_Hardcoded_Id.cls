public with sharing class Bad_Hardcoded_Id {

    public static void fetchAccount() {
        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = '0015g00000ABCDE'
        ];
    }
}
