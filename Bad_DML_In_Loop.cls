public class Bad_DML_In_Loop {

    public static void createAccounts(List<String> names) {

        for (String name : names) {
            Account acc = new Account(Name = name);
            insert acc;
        }
    }
}
