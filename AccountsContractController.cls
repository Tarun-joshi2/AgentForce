/******************************************************************************************
Apex Class         : AccountsContractController
Created Date       : Aug , 2025
@Description       : update Account fields
@Author            : Tarun Joshi
User Story         : 12345
********************************************************************************************/
public with sharing class AccountsController{
    public static void accountUpdate() {
        List<Account> Accounts = new List<Account>();
            Accounts = [SELECT Id, Name FROM Account];
        update Accounts;
    } 
}