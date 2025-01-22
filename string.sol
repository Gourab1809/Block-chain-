pragma solidity>=0.7.0<0.9.0;

contract learnStrings{
    string greetings="Hello! you\'re here now!";
    function sayHello()public view returns(string memory){
        return greetings;
    }
    function changeGreeting(string  memory _change)public{
        greetings=_change;
    }
    function getChar()public view returns(uint){
        bytes memory stringToBytes=bytes(greetings);
        return stringToBytes.length;
    }
    
}