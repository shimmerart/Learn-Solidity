pragma solidity ^0.8.3;
contract testBool {
    bool public isOpen = true;
    bool public isChanged = false;
    uint public num;
    function setOpen(bool o) public {
        isOpen = o;
        if( isOpen || tryChange()){
            num = 1;
        }
    }
    function tryChange() internal returns(bool){
        isChanged = !isChanged;
        return isChanged;
    }
}