// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./ERC20.sol";

contract KnabToken is ERC20 {

    constructor() ERC20("Knab","KNAB"){
        require(_msgSender() !=address(0),"owner's address cannot be null");
         _mint(msg.sender,1000000000); //1B
    }
}