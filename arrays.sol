// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
// 1 byte = 8 bits
// 1 hexadecimal digit = 4 bits
// Everthing that will be stored in the byte array will be in form of hexadecimal digits
contract Array
{
    uint[4] public arr = [10,20,30,40];
    uint[] public arrDynamic;

    // Bytes Array in Fixed Size 
    bytes3 public b3; // how to define a byte array
    bytes2 public b2; // 2 bytes array

    // Byte arrays are immutable = meann we cannot change value at a particluar index
    // b3 = 'abc'
    // b3[0] = 'd' this will give error

    // Bytes Array in Dynamic Size 

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