pragma solidity>=0.7.0<0.9.0;

contract Member{
    string name;
    uint age;

    constructor(string memory  _name,uint _age)public{
        name=_name;
        age=_age;
    }
}
contract Teacher is Member{
    constructor(string memory n,uint a)Member(n,a)public{
        
    }
    function getName()public view returns(string memory){
        return name;
    }
}
/*
create a contract call base which stores full accessible (inside and outside)data upon deployment
create qa contract called derived which derives the dat from bas and runs a function that always outputs the data to the integer 5

*/
contract Base{
    uint data;
    constructor(uint _data)public{
        data=_data;
    }
    function getData()public view returns(uint){
        return data;
    }
}
contract Derived is Base(5){
    function getBaseData()public view returns(uint){
        return data;
    }
}