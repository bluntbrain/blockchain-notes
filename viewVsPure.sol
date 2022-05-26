// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract local
{// if public keyword is used, remix makes a getter functoin for it automatically

    function getter() public pure returns(uint) // pure cannot read or write state variable
    {
        return age;
    }

    function setter(uint newage) public
    {
        age = newage;
    }
}