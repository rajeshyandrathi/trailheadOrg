public class SOQL_DML_NoRecords_GovLim {
    public void SOQL_DML_GovLim(){
        list<contact> con = new list<contact>();
        
        for (integer i=0;i<10001;i++){
            contact c = new contact();
            c.LastName='Rajesh';
            con.add(c);
        }
        insert con;
        delete con;
    }

}