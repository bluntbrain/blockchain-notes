pragma solidity >=0.5.0 <0.9.0;

contract Conditionals
{
    string memory value;

    function check(int a) public pure returns(string memory){
        
        if(a > 0){
            value = "greater than zero";
        }
        else if ( a == 0){
             value = "greater than zero";
        }
          else {
             value = "greater than zero";
        }

        return value;

    }
} 