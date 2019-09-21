pragma solidity ^0.5.1;

contract Licitacao{
    address public organ;
    string public nameOrgan;
    uint public valueOrgan;
    
    constructor() public{
        organ = msg.sender;
    }
    
    struct Provider{
        string razSocial;
        address addrProviders;
    }
    mapping(address => Provider) providers;
    
    function Auction(string memory name, uint value) public {
        require(msg.sender == organ);
        nameOrgan = name;
        valueOrgan = value;
    }
    
    function register(address toRegister) public{
        providers[toRegister].addrProviders;
        providers[toRegister].razSocial;
    }
    
}
