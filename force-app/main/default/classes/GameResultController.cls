public with sharing class GameResultController {
    @AuraEnabled
    public static List<Wordshuffle__c> getResults() {
        // get current user's id
        String userId = UserInfo.getUserId();
        List<Wordshuffle__c> results = [
            SELECT Id, Name, Result__c, Mode__c, CreatedDate
            FROM Wordshuffle__c
            WHERE CreatedById = :userId
            ORDER BY CreatedDate DESC
        ];
        return results;
    }
}
