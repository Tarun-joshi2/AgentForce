public with sharing class Bad_Unhandled_Exception {

    public static void deleteAccount(Id accId) {
        delete [SELECT Id FROM Account WHERE Id = :accId];
    }
}
