// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ArrayExample {
    uint256[] public arr1;
    uint256[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint256[10] public myFixedArray;

    function get(uint256 i) public view returns (uint256) {
        return arr1[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint256[] memory) {
        return arr1;
    }

    function push(uint256 i) public {
        // Append to array
        // This will increase the array length by 1.
        arr1.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr1.pop();
    }

    function getLength() public view returns (uint256) {
        return arr1.length;
    }

    function remove(uint256 index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr1[index];
    }
}
