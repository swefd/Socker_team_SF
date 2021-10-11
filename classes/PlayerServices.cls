public class PlayerServices {
    
    public static Map<String, List<Player__c>> groupActiveByStatus (List<Player__c> listOfPlayers){
        Map<String, List<Player__c>> playersMap = new Map<String, List<Player__c>>();
        List<Player__c> active = new List<Player__c>();
        List<Player__c> inactive = new List<Player__c>();


        for(Player__c player: listOfPlayers){
            if(player.IsActive__c){
                active.add(player);
            }else{
                inactive.add(player);
            }
        }
        playersMap.put('active', active);
        playersMap.put('inactive', inactive);
        
        return playersMap;
    }
}