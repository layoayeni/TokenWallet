//SPDX-License-Identifier: MIT
pragma solidity >=0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract CashCoin is ERC20, ERC20Detailed, ERC20Capped, Ownable {
    constructor() 
    ERC20Detailed("CashCoin", "CC", 4) 
    ERC20Capped(100000000000) payable public {}
}