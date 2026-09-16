# FundMe

A decentralized crowdfunding smart contract that accepts ETH only if the contribution is worth at least $5 USD (using Chainlink Price Feeds).

## Features

- Accept ETH contributions with a minimum USD value check
- Track all funders and their contribution amounts
- Only the contract owner can withdraw the funds
- Uses Chainlink Price Feed for real-time ETH/USD conversion
- Gas-optimized with `constant`, `immutable`, and custom errors
- Supports direct ETH transfers via `receive` and `fallback`

## Main Functions

- `fund()` — Send ETH to the contract (minimum ~$5)
- `withdraw()` — Owner withdraws all funds
- `getConversionRate()` — Convert ETH amount to USD

## Concepts Covered

- Payable functions
- Chainlink Data Feeds & Interfaces
- Libraries (`PriceConverter`)
- Custom Errors
- `immutable` & `constant`
- Modifiers (`onlyOwner`)
- `receive` & `fallback`
- Sending ETH with `call`
- For loops & resetting mappings/arrays

## How to Use

1. Deploy the contract (owner will be set automatically)
2. Call `fund` with enough ETH (or send ETH directly to the contract)
3. Only the owner can call `withdraw`

## Tech Stack

- Solidity 0.8.18
- Chainlink Price Feeds
- Remix IDE
