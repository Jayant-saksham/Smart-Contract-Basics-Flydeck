pragma solidity ^0.6.0;

contract Hotel {
    address payable public owner;
    enum Stateuses { Vacant, Occupied }
    Stateuses currentState;
    constructor() public{
        owner = msg.sender;
        currentState = Stateuses.Vacant;
    }
    modifier onlyWhileVacant {
        require(currentState == Stateuses.Vacant, "Currently occupied");
        _;
    }
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided");
        _;
    }
    receive() external payable onlyWhileVacant costs(2 ether) {
        owner.transfer(msg.value);
        currentState = Stateuses.Occupied;
    }
}