pragma solidity>=0.7.0<0.9.0;

contract  enumsl{
    enum shirtColor{RED,WHITE,BLUE}
    shirtColor choice;
    shirtColor constant defaultChoice=shirtColor.BLUE;

    function setWhite()public{
        choice=shirtColor.WHITE;
    }
    function getChoice()public view returns(shirtColor){
        return choice;
    }
    function getDefaultChoice()public view returns(uint){
        return uint(defaultChoice);
    }
}