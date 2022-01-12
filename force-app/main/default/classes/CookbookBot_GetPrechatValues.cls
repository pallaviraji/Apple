public with sharing class CookbookBot_GetPrechatValues {

  public class TranscriptInput {
    @InvocableVariable(required=true)
    public Id routableID;
  }
  
  public class VisitorNameOutput {
    @InvocableVariable(required=true)
    public String sFirstName;
      @InvocableVariable(required=true)
    public String sUnitedState;
  }
  

  @InvocableMethod(label='Fetch Prechat Inputs')
  public static List<VisitorNameOutput> getUserName(List<TranscriptInput> transcripts) {
    system.debug('Inside invocable method');
    List<VisitorNameOutput> names = new List<VisitorNameOutput>();
    
    for (TranscriptInput transcript : transcripts) {
    
      // Query for the transcript record based on the ID
     for ( LiveChatTranscript transcriptRecord : [SELECT Name, FirstName__c,USStates__c
                                             FROM LiveChatTranscript 
                                             WHERE Id = :transcript.routableID 
                                             LIMIT 1])
     {
      
      // Store the first name in an output variable
      VisitorNameOutput nameData = new VisitorNameOutput();
      nameData.sFirstName = transcriptRecord.FirstName__c;
         nameData.sUnitedState = transcriptRecord.USStates__c;

      names.add(nameData);
     }
        
    }
       //system.debug('nameData : '+names);
    
    return names;
  }
    
    
    
    
   
 
}