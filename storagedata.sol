pragma solidity >=0.4.0 > 0.5.8;

contract storagedata{
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }

    function increment(uint n) public {
        storedData = storedData + n;
    }

    function decrement(uint n) public {
        storedData = storedData - n;
    }
}