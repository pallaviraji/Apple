public with sharing class CookbookBot_GetUSStates {

    
 @InvocableMethod(label='Get States List')
  public static List<List<String>> getOpenAppointments() {


    // Get the list of new and scheduled appointments
    List<String> states = new List<String>();
      states.add('AA APO - AA');
states.add('AE APO - AE');
states.add('AK Alaska');
states.add('AL Alabama');
states.add('AP APO - AP');
states.add('AR Arkansas');
states.add('AZ Arizona');
states.add('CA California');
states.add('CO Colorado');
states.add('CT Connecticut');
states.add('DC District of Columbia');
states.add('DE Delaware');
states.add('FL Florida');
states.add('GA Georgia');
states.add('HI Hawaii');
states.add('IA Iowa');
states.add('ID Idaho');
states.add('IL Illinois');
states.add('IN Indiana');
states.add('KS Kansas');
states.add('KY Kentucky');
states.add('LA Louisiana');
states.add('MA Massachusetts');
states.add('MD Maryland');
states.add('ME Maine');
states.add('MI Michigan');
states.add('MN Minnesota');
states.add('MO Missouri');
states.add('MS Mississippi');
states.add('MT Montana');
states.add('NC North Carolina');
states.add('ND North Dakota');
states.add('NE Nebraska');
states.add('NH New Hampshire');
states.add('NJ New Jersey');
states.add('NM New Mexico');
states.add('NV Nevada');
states.add('NY New York');
states.add('OH Ohio');
states.add('OK Oklahoma');
states.add('OR Oregon');
states.add('PA Pennsylvania');
states.add('RI Rhode Island');
states.add('SC South Carolina');
states.add('SD South Dakota');
states.add('TN Tennessee');
states.add('TX Texas');
states.add('UT Utah');
states.add('VA Virginia');
states.add('VT Vermont');
states.add('WA Washington');
states.add('WI Wisconsin');
states.add('WV West Virginia');
states.add('WY Wyoming');
    
    // Create a list for the appointments
    // NOTE: This is a list of lists in order to handle bulk calls...
    List<List<String>> statesList = new List<List<String>>();

    // Add all the new and scheduled appointments to the list
    statesList.add(states);

    return statesList;

}
}