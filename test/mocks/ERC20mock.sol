// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.20;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) { }

    function mint(uint256 amount) public {
        _mint(msg.sender, amount);
    }
}
