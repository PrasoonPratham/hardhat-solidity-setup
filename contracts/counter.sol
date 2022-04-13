//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Importing for console logs
import "hardhat/console.sol";

contract counter{
    uint public count = 0;

    function getCount() public view returns (uint){
        console.log("Count: ",count);
        return count;
    }

    function incrementCount() public{
        count++;
    }
}