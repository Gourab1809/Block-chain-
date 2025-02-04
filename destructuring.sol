pragma solidity>=0.7.0<0.9.0;
contract DestructuringFunction{
    uint public changeValue;
    string public  tom='hello';
    function f()public pure returns(uint,bool,string memory){
        return(3,true,'goodbye');
    }
    function g()public{
        (changeValue,,tom)=f();
    }
}