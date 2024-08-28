// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionModifier {
    address public owner;
    uint public x = 10;
    bool private locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    modifier nonReentrancy() {
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
        emit OwnershipTransferred(_newOwner);
    }

    function decrement(uint i) public onlyOwner nonReentrancy {
        require(i > 0, "Invalid input");
        x -= 1;
        if (i > 1) {
            decrement(i - 1);
        }
    }

    event OwnershipTransferred(address newOwner);
}
