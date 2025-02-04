pragma solidity>=0.7.0<0.9.0;
contract MyContract{
    uint value;

    function setValue(uint _value)external{
        value=_value;
    }
    function getValue()external view returns(uint){
        return value;
    }
    function getNewValue()external pure returns(uint){
        return 3+3;
    }
}