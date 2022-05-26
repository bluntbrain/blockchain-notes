// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract local{
    uint8 public money = 256;

    function setter() public
    {
        money = money + 1;
    }
}