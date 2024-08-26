// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Primitives{
    bool public  boo = true;
    uint8 public  u8 = 1;
    uint public u256 = 456;
    uint public  u  = 123;
    int8 public  i8 = -1;
    int public i256 = 456;
    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bool public defaultBoo;
    uint public defaultUint;
    int public defaultInt;
    address public defaultAddr;
}