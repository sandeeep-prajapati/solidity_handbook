// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Loop {
    function loop() public pure{
        for (uint i = 0; i < 10; i++) {
            if (i == 5) {
                break;
            }
        }
        uint j = 0;
        while (j < 10) {
            j++;
        }
    }
}
