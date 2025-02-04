pragma solidity>=0.7.0<0.9.0;
contract owners{
    address owner;
    constructor()public{
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
    modifier costs(uint price){
        require(msg.value>=price);
        _;
    }
}
contract  Register is owners{
    mapping(address=>bool)registerAddress;
    uint price;
    constructor(uint initialPrice)public{
        price=initialPrice;

    }
    function register()public payable costs(price){
        registerAddress[msg.sender]==true;
    }
    function changePrice(uint _price)public onlyOwner{
        price=_price;
    }
}