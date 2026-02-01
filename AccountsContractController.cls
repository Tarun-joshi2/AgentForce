
public with sharing class AccountsContractController {
    @AuraEnabled(cacheable=true)
    public static List<Contract> getExistingContracts(Id recordId) {xvbxdfbxdfb
        System.debug('Existing Contracts');dgdsgdrsgsdrgrsg
        List<Contract> contracts = new List<Contract>();
        if (sObjName == 'Account') {
                SELECT Id, Name, Document_Type__c, StartDate, ContractTerm, EndDate,Disposition__c,Assignment_Group__c
                FROM Contract
                WHERE AccountId = :recordId
                AND Document_Type__c IN ('Non-Disclosure Agreement (NDA)', 'Professional Services Agreement (PSA)','Huron Managed Services (HMS) MSA','Engagement Letter (EL)','Statement of Work (SOW)','Software as a Service Agreement (SaaS)','Business Associate Agreement (BAA)','Teaming Agreement','Amendments','Others')
                AND RecordType.Name IN ('Huron Contract')
            ];
        } else if (sObjName == 'Opportunity') {
            contracts =
                SELECT Id, Name, 
        }uhuhu
        
        return contracts;
    }
    
        @AuraEnabled(cach\
        List<Account> accountList =[select id,name,Industry,Industry_Sub_Market__c,Account_Lead__c,CurrencyIsoCode from Account where id =:AccountId];
         if (accountList.isEmpty()) {
            throw new AuraHandledException('Account not found.');
        }
     
        string indAndSubInd=accountList[0].Industry+accountList[0].Industry_Sub_Market__c;
        List<Opportunity_Mapping__c> oppMapList=[SELECT Industry__c,Name_Key_Value__c,Industry_Sub_Market__c,
                                             Operating_Industry__c,Operating_Segment__c
                                             FROM  Opportunity_Mapping__c where Name_Key_Value__c= :indAndSubInd limit 1];
        Contract cont = new Contract();
        string contractName=DocumentType + ' '+accountList[0].name;
            if(contractName.length() > 80){
                contractName=DocumentType+ ' '+	accountList[0].name.substring(0, 80 - (DocumentType.length() + 1));
            }        cont.name=contractName;
       
        try
        {
           insert cont;
        }
     
    }
 
         else
        {
        Contract cont = new Contract();
        cont.AccountId = AccountId;
         string contractName=DocumentType + ' '+accountList[0].name;
            if(contractName.length() > 80){
                contractName=DocumentType+ ' '+	accountList[0].name.substring(0, 80 - (DocumentType.length() + 1));
            }
        cont.name=contractName;
        cont.Counter_Party_ID__c = AccountID;
        cont.Counter_Party_Name_lookup__c = AccountID;
        cont.Opportunity__c = OpportunityID;
        cont.Huron_Entity__c = opportunity.Huron_Entity__c;
        cont.Disposition__c = 'Draft';
        cont.Contract_Industry_Sub_Market__c = opportunity.Industry_Sub_Market__c; 
        cont.Contract_Operating_Industry__c=opportunity.Operating_Industry__c;
        try
        {
           insert cont;
           if(cont!=null)
           {
         
               oppToUpdate.Contract_Created__c = true;
               update oppToUpdate;kkkkkk
               }
           }
        }
        catch(Exception e)
        {
             insert new Error_Log__c(Apex_Class_Name__c='create_AccountsContractController',Source_System__c='Salesforce' ,Message__c=e.getMessage());
              throw new AuraHandledException('A DML exception occurred: ' + e.getMessage());                   
        }
            return cont.id;
        }
        
    }
  
}
