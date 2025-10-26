// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    uint256 public constant REQUIRED_AMOUNT = 0.00009 ether;
    address public owner;
    mapping(address => uint256) public contributions;
    address[] public funders;
    bool public paused;

    event FundReceived(address indexed funder, uint256 amount);
    event WithdrawalMade(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier notPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function fundMe() public payable notPaused {
        require(msg.value == REQUIRED_AMOUNT, "Must send exactly 0.00009 ETH");

        if (contributions[msg.sender] == 0) {
            funders.push(msg.sender);
        }
        contributions[msg.sender] += msg.value;

        emit FundReceived(msg.sender, msg.value);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdraw(uint256 _amount) public onlyOwner {
        require(_amount <= address(this).balance, "Insufficient balance");
        payable(owner).transfer(_amount);
        emit WithdrawalMade(owner, _amount);
    }

    function withdrawAll() public onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "No balance to withdraw");
        payable(owner).transfer(balance);
        emit WithdrawalMade(owner, balance);
    }

    function getMyContribution() public view returns (uint256) {
        return contributions[msg.sender];
    }

    function getFundersCount() public view returns (uint256) {
        return funders.length;
    }

    function togglePause() public onlyOwner {
        paused = !paused;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid address");
        owner = newOwner;
    }

    receive() external payable {
        revert("Use fundMe() function");
    }
}
