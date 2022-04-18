//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Counter{
    // Initializing the variable
    uint256 count = 0;

    // Getting the count
    function getCount() public view returns(uint) {
        return count;
    }

    // Incrementing the counter
    function increment() public{
        count = count + 1;
    }
}