pragma solidity^0.4.17;

contract Bidding{
    address public organ;
    string public nameOrgan = 'Educação';
    
    address[] public provider;
    string[] public name;
    uint[] public valor;
    
    uint public minimum;
    address public endereco;
    string public vencedor;

    uint i = 0;
    
    function Bidding() public{
        organ = msg.sender;
    }
    
    function enter(string _name, uint _valor) public{
        require(msg.sender != organ);
        require(_valor > 1000);
        provider.push(msg.sender);
        name.push(_name);
        valor.push(_valor);
    }
    
    function getProviders() public view returns (address[]){
        return provider;
    }
    
    function lowestOffer() public returns(uint _minimum)  {
        uint smallest = 9999999; 
        
        for(i = 0; i < valor.length; i++){
            if(valor[i] < smallest) {
                smallest = valor[i];
            }
        }
        _minimum = smallest;
        minimum = _minimum;
    }
    
    function addrWinner() public returns(address _addrWinner)  {
        uint smallest = 9999999; 
        
        for(i = 0; i < valor.length; i++){
            if(valor[i] < smallest) {
                _addrWinner = provider[i];
                smallest = valor[i];
            }
        }
        endereco = _addrWinner;
    }
    
    function nameWinner() public returns(string _nameWinner)  {
        uint smallest = 9999999; 
        
        for(i = 0; i < valor.length; i++){
            if(valor[i] < smallest) {
                _nameWinner = name[i];
                smallest = valor[i];
            }
        }
        vencedor = _nameWinner;
    }
    
}