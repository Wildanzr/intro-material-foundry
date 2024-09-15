// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test, console, stdError} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
  Token public token;

  event TestEvent(address indexed from, address indexed to, uint256 amount);


  function setUp() public {
    token = new Token();
  }

  function testEmitTransferEvent() public {
    // Marking the first and second topic to be checked
    vm.expectEmit(true, true, false, true);
    emit TestEvent(address(this), address(123), 10);
    token.transferA(address(this), address(123), 10);
  }

  function testEmitMany() public {
    address[] memory to = new address[](2);
    to[0] = address(1);
    to[1] = address(2);
    uint256[] memory amount = new uint256[](2);
    amount[0] = 10;
    amount[1] = 20;

    for (uint i; i < to.length;) {
      vm.expectEmit(true, true, false, true);
      emit TestEvent(address(this), to[i], amount[i]);
      unchecked {
        i++;
      }
    }
    token.transferAMany(address(this), to, amount);
  }
}