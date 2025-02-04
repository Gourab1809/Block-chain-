pragma solidity>=0.7.0<0.9.0;
contract fallBack{
    event  Log(uint gas);
      fallback()external payable{
        //not recomended to write to much code ghere because thew function will fail if it uses to much gases
        //invoke send : we get 2300gas which is enough to emit the log
        emit Log(gasleft());//special functyion in solidity return how much gas is left

      }
      function getBalance()public view returns(uint){
        return address(this).balance;//return the store balance of the conyrtract
      }
}
//new contract will send ether to fallback contract which will trigger fallback functions

contract SendToFallBack{
    function transferToFallBack(address payable _to)public payable{
        _to.transfer(msg.value);
    }
    function callFallBack(address payable _to)public payable{
        (bool sent,)=_to.call{value:msg.value}('');
        require(sent,'failed to send!');
    }
}
