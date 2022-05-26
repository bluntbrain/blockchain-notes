// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Array
{
    uint[4] public arr = [10,20,30,40];
    uint[] public arrDynamic;

    function setter(uint index, uint value) public
    {
        arr[index] = value;
    }

    function lengtharr() public view returns(uint)
    {
        return arr.length;
    }

    function pushElement(uint item) public
    {
        arrDynamic.push(item);
    }

    function popElement() public
    {
        arrDynamic.pop();
    }

    function lengtharrDynamic() public view returns(uint)
    {
        return arrDynamic.length;
    }
}