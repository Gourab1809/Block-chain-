pragma solidity>=0.7.0<0.9.0;
contract learnArray{
    uint[]public myArray;
    uint[]public myArray2;
    uint[]public myArray3;
    //push()add aelement at the end of the array and return length of the array;
    function push(uint number)public{
        myArray.push(number);

    }
    function pop()public{
        myArray.pop();
    }
    function getlength()public view returns(uint){
        return myArray.length;
    }
    function remove(uint i)public{
        delete myArray[i];
        //whwen you delete the  element of the ith index the length remain same
    }

/*
create a function that fully remove and item from array
create a empty array 
create a function called remove element which set the index 
remove the last index from that function
with the pop method
create a function called  test which push 1234 into the chabne array
remove the element 2 from the array
*/
uint[]public changeArray;
function removeElement(uint i)public{
    changeArray[i]=changeArray[changeArray.length-1];
    changeArray.pop();
}
function test()public{
    for(uint i=1;i<=4;i++){
        changeArray.push(i);
    }
}
function getChangeArray()public view returns(uint[]memory){
    return changeArray;
}
}