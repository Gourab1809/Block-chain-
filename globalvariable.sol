pragma solidity>=0.7.0<0.9.0;
contract ledgerBalance{
    mapping(address=>uint)balance;
    function updateBalance(uint newBalance)public{
        balance[msg.sender]=newBalance;
    }
    
}
contract updated{
    function updatesBalance()public{
        ledgerBalance ledgerbalance=new ledgerBalance();
        ledgerbalance.updateBalance(30);
    }
}
contract SimpleStorage{
    uint Storedata;
    function set(uint x)public{
        Storedata=x;
        uint Storedata1=block.difficulty;
        uint Storedata2=block.number;
        uint Storedata3=block.timestamp;
    }
    function get()public view returns(uint){
            return Storedata ;
            //return Storedata1;
            //return Storedata2;
            //return Storedata3;
    }
}