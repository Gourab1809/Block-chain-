pragma solidity>=0.7.0<0.9.0;
//ethereum is the blockchain & ether is the cryptocurrency for ethereum

contract leaarnEtherUnits{
    function test()public{
        assert(1 ether==1e18);
        assert(1 minutes == 60 seconds);
        assert(24 hours==1440 minutes);
        assert(1 days==24 hours);
        assert(1 weeks==7 days);
        assert(2 ether==2000000000000000000 wei);
    }
}