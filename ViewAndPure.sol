// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ViewAndPure {
    uint256 public number = 100;

    // Does not modify the state.
    function getNewNumber(uint256 _value) public view returns (uint256) {
        return number + _value;
    }

    // Does not modify or read from the state.
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
