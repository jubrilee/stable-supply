// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ELifeToken is ERC20 {
    constructor()
    ERC20("eLife Token", "ELIF") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    /**
     * Overrides
     */
    function _mint(address to, uint256 amount) internal override(ERC20) {
        super._mint(to, amount);
    }
}