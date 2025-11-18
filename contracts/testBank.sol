// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Bank{
    uint public amount;
    function add(uint _am) public {
        amount = amount + _am;
    }
    function get() public {
        
    }

}
