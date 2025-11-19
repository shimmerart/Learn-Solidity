// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol";
contract testAddr {
    constructor() payable{

    }
    // 如果合约的余额大于等于10，则给x转10 ether
    function testTrasfer(address payable x) public {
        address myAddress = address(this);
        if (x.balance > 10 && myAddress.balance >= 10 ) {
            x.transfer(0.1 ether);
        }
    }

    function getBalance() public view returns (uint) {
        return address(this).balance; //wei
    }

    // function testCall(address payalbe x,uint amount) public payable {
    //     // x.transfer(1 ether);
    //     // x.call{value:amount} (new bytes(0));
    //     Address.senValue(x,amount);
    // }

    // function getCode(address x) public view return (bytes memory) {
    //     return x.code;
    // }

    // function getCodeHash(address x) public view return (bytes32) {
    //     return x.codehash;
    // }

    // function balance(address addr) public view return (uint) {
    //     return addr.balance;
    // }
}