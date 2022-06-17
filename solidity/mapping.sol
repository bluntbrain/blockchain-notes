// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract demo {

    struct Student{
        string name;
        uint class;
    }

    mapping(uint => Student) public data;

    function setter(uint _roll, string memory _name, uint _class) public
    {
       data[_roll] = Student(_name, _class);
    }
}

// contract demo {
//     mapping(uint => string) public roll_no;

//     function setter(uint keys, string memory value) public
//     {
//         roll_no[keys] = value ;
//     }
// }

//  The key cannot be types mapping, dynamic array, enum, struct
//  The value can be of any type
//  Mappings are always stored in storage irrespective of whether they are declared in contract storage or not