pragma solidity>=0.7.0<0.9.0;

//using of if else  condition
contract DecisionMaking{
    uint oranges=5;//state variable
    function validateOranges()public view returns(bool){
        //uint=4;local variable
        if(oranges==5){
            return true;
        }else{
            return false;
        }
    }
    
    function airdrop(uint stakingWallet)public view returns(uint){
        if(stakingWallet>=10){
            return stakingWallet+10;
        }else{
            return stakingWallet+1;
        }
    }

}
contract C{
    uint public data=10;
    function x()public view returns(uint){
        return data;
    }
    function y()public view returns(uint){
         uint newdata=25;
        return newdata;

    }

}