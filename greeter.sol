pragma solidity >=0.4.0 > 0.5.8;

contract greeter{
    // Define variable greeting of the type string
    string public yourName;

    // This runs when the contract is executed
    function Greeter() public{
        yourName = "World";
    }

    function set(string memory name)public{
        yourName = name;
    }

    function hello() public view returns (string memory){
        return yourName;
    }

}