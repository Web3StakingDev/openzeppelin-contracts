pragma solidity ^0.5.0;

import "https://github.com/Web3StakingDev/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/Web3StakingDev/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/Web3StakingDev/openzeppelin-contracts/blob/master/contracts/token/ERC20/TokenTimelock.sol"

contract Token is ERC20, ERC20Detailed, TokenTimelock {

    constructor () public ERC20Detailed("Token", "TKN", 18) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}
