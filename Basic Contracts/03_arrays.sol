pragma solidity ^0.6.0;

contract MyArrayDemo {
    uint[] public uIntArray = [1,23,5];
    string[] public stringArray = ["Flydeck", "Jayant", "Solidity"];
    string[] public values;
    uint[][] public array2D = [ [4,5,6], [3,2,1] ];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCounts() public view returns(uint) {
        return values.length;
    }
}