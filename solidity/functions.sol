// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract local
{    
    uint public age = 10; // if public keyword is used, remix makes a getter functoin for it automatically
   
    function getter() public pure returns(uint)
    {
        return age;
        //  pure cannot read or write state variable
    }

    function setter(uint newage) public
    {
        age = newage;
    }
}