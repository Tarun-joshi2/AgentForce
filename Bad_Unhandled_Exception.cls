public with sharing class Bad_Unhandled_Exception {

    public static void deleteAccount(Id accId) {
        // ❌ No try-catch
        delete [SELECT Id FROM Account WHERE Id = :accId];
    }
}
