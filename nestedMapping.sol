pragma solidity>=0.7.0<0.9.0;
contract learnNesstedMapping{
    struct Movie{
        string title;
         string director;
    }
    mapping(uint=>Movie)movie;
    function addMovie(uint _id,string memory title,string memory director)public{
         movie[_id]=Movie(title,director);
    }
    mapping(address=>mapping(uint=>Movie))public myMovie;
    function addmyMovie(uint id,string memory title,string memory director)public{
        myMovie[msg.sender][id]=Movie(title,director);
    }
}