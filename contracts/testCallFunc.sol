// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract callee{
    function g(uint a) public pure returns (uint ret){
        return a;
    }
}

contract TesrtCallFunc{
    uint public counter;
    function increase() public {
        counter = counter +1;
    }
    function set(uint key,uint value) public {

    }
    // 具名函数
    function callWithName() public {
        // set(2,3);
        set({value:2,key:3});
    }
    function internalFunc() public {
        increase();
    }

    function externalFunc() public {
        // this.increase();
        // this.increase{value:10,gas:6000}();
        this.increase{gas:6000}();
    }
    function callThirdFunc(callee c) public pure {
        c.g(10);
    }
}