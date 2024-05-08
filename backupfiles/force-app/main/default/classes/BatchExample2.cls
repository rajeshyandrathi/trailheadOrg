//Updating and inserting the more number of records.(Multiple DML)
Global class BatchExample2 implements Database.Batchable<Sobject>{
    Global Database.QueryLocator Start(Database.BatchableContext bc){
        Return Database.getQueryLocator('Select id,name,phone,Description from account');
    }
    Global void Execute(Database.BatchableContext bc,list<account> acc){
        for (account a:acc){
            a.phone = '9490839599';
            update a;
            account b = new account();
            b.Name='NTR';
            insert b;
            contact c = new contact();
            c.LastName='Tarak';
            c.AccountId=b.Id;
            insert c;
        }
    }
    Global void Finish(Database.Batchablecontext bc){}
}