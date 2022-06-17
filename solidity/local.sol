// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract local
{
    function store() pure public returns(uint)
    {
        uint age = 10;
        string memory name = "ravi"; // use memory keyword to store string into memeory instead of stack or contract storage
        return age;

    }
}