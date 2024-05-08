public class DyanmicPageReference {
    public account acc {set;get;}
    
    public DyanmicPageReference(){
        acc = new account();
    }
    public pagereference create(){
        insert acc;
        pagereference p = new pagereference('/'+acc.Id);
        return p;
    }
}