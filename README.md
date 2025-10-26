# Base-SubAccount-Demo

## Project Description

This project demonstrates the implementation of SubAccounts and FundMe contract on the Base network, a layer 2 (L2) scaling solution built on top of Ethereum. The project combines account management features with a decentralized funding platform.

### Key Features

#### SubAccount Features

- Creation and management of sub-accounts
- Secure fund transfers between master and sub-accounts
- Role-based access control for sub-account management
- Integration with Base network's L2 infrastructure
- Gas-efficient operations for cost-effective transactions

#### FundMe Contract Features

1. **Funding Mechanism**

   - Fixed contribution amount of 0.00009 ETH
   - Individual contribution tracking
   - Unique funders list maintenance
   - Event emission for fund receipt

2. **Withdrawal System**

   - Partial amount withdrawals
   - Complete balance withdrawal option
   - Security checks implementation
   - Withdrawal event tracking

3. **Access Control & Security**

   - Owner-restricted functions
   - Ownership transfer capability
   - Circuit breaker (pause/unpause)
   - Direct ETH transfer prevention

4. **Information & Analytics**
   - Balance checking
   - Personal contribution tracking
   - Unique funders counting
   - Individual contribution history

### Technology Stack

- Solidity Smart Contracts
- Base Network (L2)
- Hardhat/Foundry Development Environment
- Ethereum Web3 Libraries
- React + Vite Frontend

### Contract Usage Guide

1. **Contributing Funds**

   ```solidity
   fundMe()  // Send exactly 0.00009 ETH
   ```

2. **Checking Information**

   ```solidity
   getBalance()         // View contract balance
   getMyContribution()  // View your contribution
   getFundersCount()    // Get total unique funders
   ```

3. **Owner Operations**
   ```solidity
   withdraw(amount)      // Withdraw specific amount
   withdrawAll()         // Withdraw entire balance
   togglePause()        // Pause/unpause contract
   transferOwnership()  // Transfer contract ownership
   ```

### Security Implementation

- Owner-restricted access control
- Circuit breaker pattern for emergency stops
- Prevention of direct ETH transfers
- Secure ownership transfer mechanism
- Individual contribution tracking
- Event emission for transparency

This project serves as a practical example of implementing account abstraction and decentralized funding features on Base, showcasing the potential for building complex financial applications on Layer 2 solutions.

## Contract Address: 0x22497bDA4BBa42646557DEb7C424e3EdF7F529bB

## Transaction Hash: 0x5b3e53d98baead3d1c657e075598644c39098041784f5ad5cb88556160dff3e0
