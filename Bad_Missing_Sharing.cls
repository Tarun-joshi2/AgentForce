public class Bad_Missing_Sharing {

    public static void readAccounts() {
        List<Account> accs = [SELECT Id, Name FROM Account];
        System.debug(accs);
    }
}
