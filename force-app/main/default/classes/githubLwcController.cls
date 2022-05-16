public with sharing class githubLwcController {
   @AuraEnabled
   public static string searchUsers(String searchValue){
       try {
           Http ht = new Http();
           HttpRequest req = new HttpRequest();
           HttpResponse res = new HttpResponse();

           req.setTimeout(120000);
           req.setMethod('GET');
           req.setHeader('Client_id' , 'c00698987ec8f2dc7718');
           req.setHeader('Client_secret' , '3778a6996a99fde8acf3dc7c3a1ac495f971e1b4');
           req.setEndpoint('https://api.github.com/search/users?q=' + searchValue + '&client_id=c00698987ec8f2dc7718&client_secret=3778a6996a99fde8acf3dc7c3a1ac495f971e1b4');

           res = ht.send(req);
           return res.getbody();
       } catch (Exception e) {
           throw new AuraHandledException(e.getMessage());
       }
   }
   @AuraEnabled
   public static string getUserDetail(String login){
       try {
           Http ht = new Http();
           HttpRequest req = new HttpRequest();
           HttpResponse res = new HttpResponse();

           req.setTimeout(120000);
           req.setMethod('GET');c00698987ec8f2dc7718
           req.setHeader('Client_id' , '');
           req.setHeader('Client_secret' , '3778a6996a99fde8acf3dc7c3a1ac495f971e1b4');
           req.setEndpoint('https://api.github.com/users/' + login );

           res = ht.send(req);
           return res.getbody();
       } catch (Exception e) {
           throw new AuraHandledException(e.getMessage());
       }
   }
   @AuraEnabled
   public static string getRepos(String login){
       try {
           Http ht = new Http();
           HttpRequest req = new HttpRequest();
           HttpResponse res = new HttpResponse();

           req.setTimeout(120000);
           req.setMethod('GET');
           req.setHeader('Client_id' , 'c00698987ec8f2dc7718');
           req.setHeader('Client_secret' , '3778a6996a99fde8acf3dc7c3a1ac495f971e1b4');
           req.setEndpoint('https://api.github.com/users/' + login + '/repos' );

           res = ht.send(req);
           return res.getbody();
       } catch (Exception e) {
           throw new AuraHandledException(e.getMessage());
       }
   }
}
