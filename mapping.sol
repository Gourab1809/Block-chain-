pragma solidity>=0.7.0<0.9.0;

contract learnMapping{
    //key-value can be string ,uint, bool
    //while mapping we can't actually iterate;
    mapping(address=>uint)public myMap;
    function setAdress(address _addr,uint _i)public{
        myMap[_addr]=_i;
    
    }
    function getAdresss(address _addr)public view returns(uint){
        return myMap[_addr];
    }
    function rwemoveAdress(address _addr)public{
        delete myMap[_addr];
    }

    struct Movie{
        string title;
        string director;
    }

    mapping(uint=>Movie)movie;

    function addMovie(uint _id,string memory title,string memory director)public{
        movie[_id]=Movie(title,director);
        
    }
}