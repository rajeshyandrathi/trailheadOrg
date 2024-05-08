public class Wrapper11 {
 public decimal sal {set;get;}
 public integer exp {set;get;}
 public Wrapper1 W1 {set;get;}
    
    public Wrapper11(){
        W1=new Wrapper1();
 		sal=30000;
 		exp=5;
 		W1.name='Raji';
 		W1.age=50;
    }
}