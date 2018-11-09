global with sharing class LEX_KnowledgeController {
    @AuraEnabled
    global static KnowledgeArticleVersion getArticleInfo(String id){
        KnowledgeArticleVersion kav = [SELECT Id,KnowledgeArticleId,Summary,Title 
                                        FROM KnowledgeArticleVersion 
                                        WHERE Id =: id ];
        return kav;
    }
}
