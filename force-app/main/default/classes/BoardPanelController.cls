public with sharing class BoardPanelController {
    @AuraEnabled
    public static String addResult(String result, String mode) {
        Wordshuffle__c gameResult = new Wordshuffle__c(Result__c = result, Mode__c = mode);
        insert gameResult;
        return 'success';
    }
}
