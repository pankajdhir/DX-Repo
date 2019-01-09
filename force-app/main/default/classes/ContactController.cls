public with sharing class ContactController {

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
        String var = 'pankaj';
        return [SELECT Id, Name, Title, Phone, Email FROM Contact LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getUserList() {
        String var = 'dhir';
        return [SELECT Id, Name, Title, Phone, Email FROM User LIMIT 10];
    }
    

}