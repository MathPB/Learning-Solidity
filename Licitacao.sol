pragma solidity ^0.4.17;

contract Licitacao{
    
    struct Organ{
        uint value;
        address organAddr;
    }
    mapping(address => Organ) organ;
    
    struct Provider{
        address addr; //address of the Provider
    }
    
    address owner;
    
    mapping(address => Provider) providers;
    Provider[] participants;
    
    
    function Auction(address _organ, uint _value) public view{
        if ( owner != msg.sender) return;
        organ[_organ].organAddr;
        _value.value;
    }

}