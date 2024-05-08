public class Create_Lead_sObject {
    public lead mylead {set;get;}
    public Create_Lead_sObject(){
        mylead=new lead();
    }
    public void create(){
        insert mylead;
    }
    public void refresh(){
        mylead=new lead();
    }
    public void save_new(){
        insert mylead;
        mylead=new lead();
    }
    
}