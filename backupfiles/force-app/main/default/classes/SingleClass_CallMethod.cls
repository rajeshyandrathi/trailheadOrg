public class SingleClass_CallMethod {
   public integer aval {get;set;}
    public integer bval {get;set;}
    public integer cval {get;set;}
    public integer dval {get;set;}
    
    public void m1(){
        aval=10;
        bval=20;
        m2();
    }
    
    public void m2(){
        cval=30;
        dval=40;
    }
}