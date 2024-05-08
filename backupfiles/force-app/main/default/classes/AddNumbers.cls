public class AddNumbers {

    public integer aval {get;set;}
    public integer bval {get;set;}
    public integer cval {get;set;}
    
    public void addnum(){
        cval = aval + bval;
    }
    
    public void reset(){
        aval=null;
        bval=null;
        cval=null;
    }
}