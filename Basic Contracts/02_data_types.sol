pragma solidity ^0.6.0;

contract MyContract {
    // State variables 
    string public myString = "Hello world!";

    int public myInt = -1;
    uint public myUint = 1;
    uint256 public myUint256 = 1000000000;
    uint8 public myUnitint8 = 3;

    address public myAdress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    struct MyStruct {
        uint myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Flydeck");

    // Local variables 
    function getValues() public pure returns(uint) {
        uint value = 10;
        return value;
    }


}
