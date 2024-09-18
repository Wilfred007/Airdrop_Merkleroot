// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AudioBox is ERC20("AudioBox", "ABXT") {
    address public immutable OWNER;
    constructor() {
        OWNER = msg.sender;
        _mint(msg.sender, 100000000);
    }

    function decimals() public pure override returns (uint8) {
        return 2;
    }

    function mint() external {
        require(msg.sender == OWNER, "You are not the owner");
        _mint(msg.sender, 100.00);
    }
}