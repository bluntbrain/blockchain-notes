// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract local
{
    uint public age = 10; // if public keyword is used, remix makes a getter functoin for it automatically

    function getter() public view returns(uint) // view or pure is used only is we care not going to change any value
    {
        return age;
    }

    function setter(uint newage) public
    {
        age = newage;
    }
}