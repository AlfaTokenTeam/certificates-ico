pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Certificates is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Certificates(address _owner)  UpgradeableToken(_owner) {
    name = "Certificates";
    symbol = "Crf";
    totalSupply = 2200000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}