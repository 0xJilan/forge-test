// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin/contracts/token/ERC20/IERC20.sol";

error StakingContract_TransferFailed();

contract Staking {
    mapping(address => uint24) public s_balances;

    function stake(uint24 _amount, address _token) external returns (bool) {
        s_balances[msg.sender] = s_balances[msg.sender] + _amount;
        //call the transfer function of an ERC20 token
        bool success = IERC20(_token).transferFrom(msg.sender, address(this), _amount);
        if (!success) revert StakingContract_TransferFailed();
        return success;
    }
}
