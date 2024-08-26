// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Variables{
    string public text = "i am Sandeep Prajapati";
    uint public num = 123;
    function doSomething() public {
        uint i = 456;
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}