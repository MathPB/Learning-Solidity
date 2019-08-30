pragma solidity ^0.5.8;

contract DataTypes{

    bool myBool =  false; // or true;

    int8 myInt = -128;
    uint8 myUInt = 255;

    string myString;
    uint8[] myStringArr;

    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;

    enum Action {ADD, REMOVE, UPDATE}
    Action myAction = Action.ADD;

    address myAddress;

    mapping(address => uint) public balance;

    constructor() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }

    uint[] myIntArr = [1,2,3];

    function arrFunc(){
        myIntArr.push(1);
        myIntArr.length;
    }

    uint[10] myFixedArr;

    struct Account{
        uint balance;
        uint dailyLimit;
    }

    mapping(address => Account) _accounts;

    function payable() view public {
        _accounts[msg.sender].balance += msg.value;
    }
}