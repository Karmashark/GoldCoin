pragma solidity ^0.4.24;

import "./PausableToken.sol";
import "./BurnableToken.sol";
import "./MintableToken.sol";


contract GoldCoin is PausableToken, MintableToken, BurnableToken {
    string public name = "GoldCoin";
    string public symbol = "GOLD";
    uint public decimals = 8;
    uint public INITIAL_SUPPLY = 150000000 * (10 ** uint256(decimals));
    uint public golddecimals =4;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }

    function goldHoldings(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
}

