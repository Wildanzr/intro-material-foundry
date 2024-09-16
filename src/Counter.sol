// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function get() public view returns (uint256) {
        return number;
    }

    function inc() public {
        number++;
    }

    function dec() public {
        number--;
    }
}
