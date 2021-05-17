// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ERC20.sol";

contract KnabToken is ERC20 {

    address owner;

    constructor() ERC20("Knab","KNB"){
        require(_msgSender() !=address(0),"owner's address cannot be null");
        owner =msg.sender;
        mint(1000000000); //1B
    }

    function mint (uint256 amount) internal {
        require(owner==msg.sender);
        _mint(owner,amount);
    }
}