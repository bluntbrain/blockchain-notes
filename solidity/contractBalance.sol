// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract pay{

    address payable user = payable(0xABCD);

    function payEther() public payable
    {

    }

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function sendEtherAccount() public
    {
        user.transfer(1 ether);
    }
}