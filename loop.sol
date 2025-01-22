pragma solidity>=0.7.0<0.9.0;
//check mutlipe using loop and if else condition
contract loopContract{
    function checkMultiplesValidity(uint _num,uint _nums)public view returns(bool){
        if(_num%_nums==0){
            return true;
        }else{
            return false;
        }
    }
    uint [] public numberList =[1,2,3,4,5,6,7,8,9,10];

    function checkMultiple(uint _number)public view returns(uint){
        uint count=0;
        for(uint i=1;i<numberList.length;i++){
            if(checkMultiplesValidity(numberList[i],_number)){
                count++;
            }

        }
        return count;
    }
}

contract myLoopingPracticeContract{
    uint [] longlist=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] numbersList=[1,4,34,56];

    function numbersLostLoop(uint userNumber)public view returns(bool){
        bool numberExists=false;
        for(uint i=0;i<numbersList.length;i++){
            if(numbersList[i]==userNumber){
                numberExists=true;
            }
        }
        return numberExists;
    }
    function evenNumbersLoop()public view returns(uint){
        uint count=0;
        for(uint i=0;i<longlist.length;i++){
            if(longlist[i]%2==0){
                count++;
            }

        }
        return count;
    }
}