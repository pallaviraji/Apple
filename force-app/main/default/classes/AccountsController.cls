public class AccountsController {
    @AuraEnabled
    public static List <Account> getAccounts(){
        return [select Id, name, industry, Type, NumberOfEmployees, TickerSymbol, Phone FROM Account ORDER BY createdDate ASC];
    }

}