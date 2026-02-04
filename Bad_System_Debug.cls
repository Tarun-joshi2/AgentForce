public with sharing class Bad_System_Debug {

    public static void doSomething() {
        // ❌ Debug in production code
        System.debug('Debug message');
    }
}
