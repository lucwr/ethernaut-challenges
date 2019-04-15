pragma solidity ^0.4.18;

contract blackhole {
    function goto (address _to) public {
        selfdestruct(_to);
    }

    function () public payable {}
}
