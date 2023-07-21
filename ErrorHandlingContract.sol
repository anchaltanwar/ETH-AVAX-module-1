// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    address private _owner;
    uint private _balance;

    constructor() {
        _owner = msg.sender;
    }

    function deposit(uint amount) public {
        require(amount > 0, "Amount should be greater than 0");
        _balance += amount;
    }

    function withdraw(uint amount) public {
        require(msg.sender == _owner, "Only the owner can withdraw");
        require(amount > 0, "Amount should be greater than 0");
        require(_balance >= amount, "Insufficient balance");
        _balance -= amount;
    }

    function assertExample(uint a, uint b) public pure returns (uint) {
        assert(b != 0); // Ensure b is not zero to avoid division by zero
        return a / b;
    }

    function revertExample(uint a, uint b) public pure returns (uint) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

    function getBalance() public view returns (uint) {
        return _balance;
    }
}
