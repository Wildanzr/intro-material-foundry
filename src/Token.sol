// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20, Ownable {
    event TestEvent(address indexed from, address indexed to, uint256 amount);

    constructor() 
    ERC20("Meong", "MEOW", 18) 
    Ownable(msg.sender)
    {}

    function transferA(address from, address to, uint256 amount) public {
      emit TestEvent(from, to, amount);
    }

    function transferAMany(address from, address[] calldata to, uint256[] calldata amount) public {
      for (uint256 i = 0; i < to.length; i++) {
        emit TestEvent(from, to[i], amount[i]);
      }
    }
}
