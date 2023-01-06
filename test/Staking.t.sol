// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Staking.sol";
import "../mocks/MockERC20.sol";


contract StakingTest is Test {
    Staking public staking;
    MockERC20 public token;
    uint256 public constant AMOUNT = 1e18;

    function setUp() public {
        staking = new Staking(); 
        token = new MockERC20();
    }

    function testStakingToken(uint24 _amount) public {
       token.approve(address(staking), _amount);
       bool success = staking.stake(_amount, address(token));
       assertTrue(success);
    }
}
