// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage{
    uint public  num;
    function set(uint input_num) public {
        num = input_num;
    }
    function get() public  view returns (uint){
        return num;
    }
}