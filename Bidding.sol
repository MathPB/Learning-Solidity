pragma solidity^0.4.17;

contract Bidding{
    address public organ;
    string public nameOrgan;
    
    address[] public provider;
    string[] public name;
    uint[] public value;
    
    uint public i = 0;
    
    uint public number = 0;
    
    function Bidding(string _nameOrgan) public{
        organ = msg.sender;
        nameOrgan = _nameOrgan;
    }
    
    function enter(string _name, uint _value) public payable{
        require(msg.sender != organ);
        require(_value > 1000);
        provider.push(msg.sender);
        name.push(_name);
        value.push(_value);
    }
    
    function lowestOffer() public view returns(uint minimum)  {
        require(msg.sender == organ);
        
        uint smallest = 9999999; 
        
        for(i = 0; i < value.length; i++){
            if(value[i] < smallest) {
                smallest = value[i];
            }
            number = i;
        }
        return minimum = smallest;
    }
    
    function companyWinning() public view returns(string providerWinner)  {
        require(msg.sender == organ);

        providerWinner = name[number]; 
        provider = new address[](0);
        name = new string[](0);
        return providerWinner;
    }

}