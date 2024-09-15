// SPDX-License-Identifiier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testGreeter() public view {
        assertEq(helloWorld.greet(), "Hello World!");
    }

    function testSetGreet() public {
        helloWorld.setGreet("Hello Forge!");
        assertEq(helloWorld.greet(), "Hello Forge!");
    }

    function testFail_Greet() public view {
        assertEq(helloWorld.greet(), "Hello Forge!");
    }
}
