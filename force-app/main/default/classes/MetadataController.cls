public class MetadataController {

    @AuraEnabled
    public static List<Contact> getContacts() {
        List<Contact> contacts =
                [SELECT Id, Name, Phone, Email FROM Contact];
        return contacts;
    }
}