
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Define a contract named Error
contract Error {
    // Define a public function testRequire
    function testRequire(uint _i) public pure {
        // Use require to check if _i is greater than 10, if not, revert with a message
        require(_i > 10, "Input must be Greater than 10");
    }

    // Define a public function testRevert
    function testRevert(uint _i) public pure {
        // Use if statement to check if _i is less than or equal to 10
        if (_i <= 10) {
            // If true, revert with a message
            revert("Input must be greater than 10");
        }
    }

    // Declare a public state variable num of type unsigned integer
    uint public num;

    // Define a public function testAssert
    function testAssert() public view {
        // Use assert to check if num is equal to 0, if not, revert
        assert(num == 0);
    }

    // Define a custom error InsufficientBalance with two fields: balance and withdrawAmount
    error InsufficientBalance(uint balance, uint withdrawAmount);

    // Define a public function testCustomError
    function testCustomError(uint _withdrawAmount) public view {
        // Get the contract's balance
        uint bal = address(this).balance;

        // Check if the balance is less than the withdrawAmount
        if (bal < _withdrawAmount) {
            // If true, revert with the custom error and its fields
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
