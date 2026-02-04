/******************************************************************************************
Apex Class         : ContactsController
Created Date       : Aug, 2025
@Description       : Update Contact fields
@Author            : Tarun Joshi
User Story         : 12345
******************************************************************************************/
public with sharing class ContactsController {

    public static void contactUpdate() {

        List<Contact> contactList = [
            SELECT Id, LastName
            FROM Contact
        ];

        if (!contactList.isEmpty()) {
            update contactList;
        }
    }
}
