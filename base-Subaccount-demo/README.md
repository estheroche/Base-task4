<<<<<<< HEAD
# Base Subaccount Demo with FundMe Contract

This project demonstrates a decentralized funding application built with React + Vite and Solidity smart contracts.

## Smart Contract Features

### FundMe Contract

The `FundMe` contract is a decentralized funding platform with the following features:

1. **Funding Mechanism**

   - Fixed contribution amount of 0.00009 ETH
   - Tracks individual contributions
   - Maintains list of unique funders
   - Emits events on fund receipt

2. **Withdrawal System**

   - Owner can withdraw partial amounts
   - Complete withdrawal option available
   - Built-in security checks
   - Events emitted on withdrawals

3. **Access Control**

   - Owner-restricted functions
   - Ownership transfer capability
   - Circuit breaker (pause/unpause)

4. **Information Tracking**

   - Get contract balance
   - View personal contributions
   - Count total unique funders
   - Track individual contributions

5. **Security Features**
   - Pausable contract functionality
   - Owner-only access control
   - Invalid address checks
   - Direct ETH transfers prevented

## Frontend Development (React + Vite)

This template provides a minimal setup to get React working in Vite with HMR and ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Contract Usage

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

## Security Considerations

- Owner access is restricted to authorized functions
- Circuit breaker pattern implemented
- Direct ETH transfers are prevented
- Ownership transfer requires valid address

## Development Setup

For production applications, we recommend:

- Using TypeScript with type-aware lint rules
- Check the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for TypeScript integration
- Implementing [`typescript-eslint`](https://typescript-eslint.io)
=======
# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) (or [oxc](https://oxc.rs) when used in [rolldown-vite](https://vite.dev/guide/rolldown)) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## React Compiler

The React Compiler is not enabled on this template because of its impact on dev & build performances. To add it, see [this documentation](https://react.dev/learn/react-compiler/installation).

## Expanding the ESLint configuration

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.
>>>>>>> origin/main
