// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Account{
    uint public balance;
    uint public constant MAX_UINT = 2**256 - 1;
    function deposit(uint amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + amount;
        require(newBalance >= oldBalance, "Overflow");
        balance = newBalance;
        assert(balance >= oldBalance);
    }
    function withdraw(uint _amount) public {
        uint oldBalance = balance;
        require(balance >= _amount, "Underflow");
        if (balance < _amount){
            revert("Underflow");
        }
        balance -= _amount;
        assert(balance <= oldBalance);
    }
}