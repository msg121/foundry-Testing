// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {laptop} from "../src/laptop.sol";

contract LaptopTest is Test {
    laptop public lapContract;
    address public user1 = address(0x1);
    address public user2 = address(0x2);

    function setUp() public {
        lapContract = new laptop();
    }

    function test_InitialState() public view {
        assertEq(lapContract.name(), "laptop");
        assertEq(lapContract.quantity(), 100);
        assertEq(lapContract.price(), 50000);
        assertTrue(lapContract.isAvailable());
    }

    function test_SetLaptopInfo() public {
        vm.prank(user1);
        lapContract.laptops("MacBook Pro", 5, 200000, true);

        (string memory name, uint quantity, uint price, bool isAvailable) = lapContract.laptopInfo(user1);

        assertEq(name, "MacBook Pro");
        assertEq(quantity, 5);
        assertEq(price, 200000);
        assertTrue(isAvailable);
    }

    function test_MultipleUsersCanSetInfo() public {
        vm.prank(user1);
        lapContract.laptops("Dell XPS", 2, 120000, true);

        vm.prank(user2);
        lapContract.laptops("ThinkPad", 10, 80000, false);

        (string memory name1, uint qty1, uint price1, bool avail1) = lapContract.laptopInfo(user1);
        (string memory name2, uint qty2, uint price2, bool avail2) = lapContract.laptopInfo(user2);

        assertEq(name1, "Dell XPS");
        assertEq(qty1, 2);
        assertEq(price1, 120000);
        assertTrue(avail1);

        assertEq(name2, "ThinkPad");
        assertEq(qty2, 10);
        assertEq(price2, 80000);
        assertFalse(avail2);
    }
}
