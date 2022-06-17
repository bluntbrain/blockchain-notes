pragma solidity >=0.5.0 <0.9.0;

contract Conditionals
{ 
    bool public value = true; // be default value is false

    function check(uint a) public returns(bool){
        
            if(a > 0){
               value = true;
               return value;
            }
           
            else {
                value = false;
               return value;
            }

        }
}