public with sharing class poc {
    @AuraEnabled
    public static List<Contact> getContacts(String objectName) {
        
        System.debug('Input Object Name:::'+objectName);
        
        Display_Object_Records__mdt[] objectRecords = [SELECT MasterLabel, Name_Of_Object__c, Object_Feilds__c FROM Display_Object_Records__mdt where Name_Of_Object__c= :objectName];
                System.debug('Metadata Object record details:::'+objectRecords);
        String cols=objectRecords[0].Object_Feilds__c;
        System.debug('Feilds of the Object for SOQL:::'+cols);
        String query='';
        query=query+'SELECT ';
        query=query+cols+' FROM '+objectName;
        System.debug('Dynamic Query:::'+query);
        
        List<sObject> sobjList = DataBase.query(query);      
        System.debug('Output of Dynamic Querys:::'+sobjList);
        return sobjList;
    }
}