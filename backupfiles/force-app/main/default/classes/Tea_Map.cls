public class Tea_Map {

    public static void orderTea(){
        
        Map<String,String> teatype = new Map<String,String>();
        
        teaType.put('Black','Black Tea');
        teaType.put('Brown','Brown Tea');
        teaType.put('Lemon','Lemon Tea');
        teaType.put('Badam','Badam Tea');
        
        System.debug(teaType);
        
        String val = teaType.get('Lemon');
        
        System.debug('The flavoured tea is '+val);
        
    }
    
    
    
}