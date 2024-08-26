// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Immutable{
    address public  immutable my_address;
    uint public immutable my_uint;
    constructor(uint abc){
        my_address = msg.sender;
        my_uint = abc;
    }

}