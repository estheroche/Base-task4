// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    uint256 public constant REQUIRED_AMOUNT = 0.00009 ether;
    
    
    function fundMe() public payable {
        require(msg.value == REQUIRED_AMOUNT, "Must send exactly 0.00009 ETH");
    }
    
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
    
    
    receive() external payable {
        revert("Use fundMe() function");
    }
}