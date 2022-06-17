pragma solidity >=0.5.0 <0.9.0;

contract State
{
    uint public age;
    // age = 20 this is the wrong way

    // constructor() public{
    //     age=10;
    // }

    function setAge() public
    {
        age = 12;
    }
}