public class SOQL_DMLLim {
    public void SOQL_DML(){
        for (integer i=0;i<151;i++){
            account a = new account();
            a.name='Rajesh';
            a.AccountNumber='999999';
            insert a;
        }
    }
}