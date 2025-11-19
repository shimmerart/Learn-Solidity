// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract testPayee{
    address  myAddress = address(this);
    function getBalance() public view returns (uint){
        return myAddress.balance;
    }
}