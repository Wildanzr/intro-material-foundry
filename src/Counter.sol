// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint public number;

    function get() public view returns (uint) {
        return number;
    }

    function inc() public {
        number++;
    }

    function dec() public {
        number--;
    }
}
