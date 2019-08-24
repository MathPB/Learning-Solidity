pragma solidity ^0.5.1;

contract WhatTheFunc {
    string public word = "bird";
    uint public number = 42;
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender != owner,"Sem permissão!");
        _;
    }
    
    function getWord() public view returns (string memory){
        return word;
    }
    
    function setWord(string memory w)public onlyOwner {
        word = w;
        emit Changed(msg.sender);
    }

}