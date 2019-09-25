pragma solidity ^0.5.1;

contract Licitacao{
    
    address organ;
    string public nameOrgan;
    uint public valueOrgan;
    
    // constructor() public{
    //     organ = msg.sender;
    // }
    
    struct Provider{
        address aProv;
        string rSoc;
    }
    
    Provider p;
    
    function Auction(string memory name, uint value) public {
        require(msg.sender == organ);
        nameOrgan = name;
        valueOrgan = value;
    }
    
    function typeToRegister (address a, string memory r) public{
        Provider storage prv = p;
        
        prv.aProv = a;
        prv.rSoc = r;
    }
    
    
}
