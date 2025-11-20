// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Bank{
    struct Funder {
        address addr;
        uint amount;
    }
    mapping (uint=>Funder) funders;
    receive() external payable { }
    function add(uint _am) public {
        
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

}
