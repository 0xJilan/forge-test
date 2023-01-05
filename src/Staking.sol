// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC20/IERC20.sol";

contract Staking {
    mapping(address => uint256) public s_balances;

    function stake(uint256 _amount, address _token) external returns (bool) {
        s_balances[msg.sender] = s_balances[msg.sender] + _amount;
        //call the transfer function of an ERC20 token
    }
}
