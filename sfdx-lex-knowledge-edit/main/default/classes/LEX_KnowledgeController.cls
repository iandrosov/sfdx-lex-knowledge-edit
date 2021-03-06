// Example controller for knowledeg
// TRying to create LEX components to edit articles in COmmunity
global with sharing class LEX_KnowledgeController {
    // Methods to query
    @AuraEnabled
    global static KnowledgeArticleVersion getArticleInfo(String id){
        KnowledgeArticleVersion kav = [SELECT Id,KnowledgeArticleId,Summary,Title 
                                        FROM KnowledgeArticleVersion 
                                        WHERE Id =: id ];
        return kav;
    }

/**
    // Try to create articel
    @AuraEnabled
    global static string createArticle(String title, String txt){
       KnowledgeArticleVersion kav = new KnowledgeArticleVersion ();
       kav.Summary = txt;
       kav.Title = title;
       // Add erecprdtype ID for aerticle type identification
       //
       insert kav;
       return kav.Id;
    }
  **/  
    /** FAQ may not be enabled feature
    // Method to create FAQ article
    @AuraEnabled
    public static void createFAQArticle(){
      
        // create the kav instance 
        FAQ__kav faq = new FAQ__kav(
            Title = 'LEX FAQ',
            Summary = 'LEX article',
            Answer__c = 'Lex Answer text',
            Question__c = 'Custim question',
            Category__c = 'My Category',
            URLName = 'test name'
        );

        insert faq;
        // Retrieve master article Id created on FAQ__kav record insertion
        // in order to get the KnowledgeArticleId
        faq = [SELECT KnowledgeArticleId FROM FAQ__kav WHERE Id = :faq.Id];
          
        //publish Answers article
        KbManagement.PublishingService.publishArticle(faq.KnowledgeArticleId, true);
    }
    **/
}
