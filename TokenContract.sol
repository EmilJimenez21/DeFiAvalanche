// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenContract is ERC20, Ownable {
    constructor(address owner, uint256 tokenCount) ERC20("Token", "TOKEN") {
        super._mint(owner, tokenCount * 10**18);
    }
}
