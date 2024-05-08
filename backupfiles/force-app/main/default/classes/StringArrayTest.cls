public class StringArrayTest {
 
    public static String[] generateStringArray(integer len) {
       
        String[] myArray = new String[len];
            
            for(Integer i=0;i< len;i++) {
                    myArray.add('Test ' +i);          
                    System.debug(myArray[i]);
            } 
            return myArray;
        }   
}