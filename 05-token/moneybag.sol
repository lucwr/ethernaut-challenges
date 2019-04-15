pragma solidity ^0.4.18;

contract Tokenizer {
    function send(address _to, uint _value) public returns (bool);
}

contract Sacrifice {
    function inventTokens(address _token, address _recipient, uint _value) public {
        Token tk = send(_token);
        tk.transfer(_recipient, _value);
    }
}
