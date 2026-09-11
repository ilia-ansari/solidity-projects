# Storage Factory - Solidity Composability Example

This project demonstrates **Composability** in Solidity by creating a factory contract that can deploy and interact with multiple `SimpleStorage` contracts.

## Contracts

### 1. `SimpleStorage.sol`
A simple contract that allows:
- Storing a favorite number
- Retrieving the stored number
- Adding people with their name and age
- Mapping names to ages

### 2. `StorageFactory.sol`
A factory contract that:
- Deploys new instances of `SimpleStorage`
- Keeps track of all deployed contracts in an array
- Allows storing and retrieving numbers from any deployed `SimpleStorage` contract using an index

## Features Demonstrated
- Named Imports
- Contract Deployment using `new`
- Array of Contracts
- Inter-contract communication (Composability)
- `view` functions
- `calldata` vs `memory`

## How to Use

1. Deploy `StorageFactory`
2. Call `createSimpleStorageContract()` several times to deploy multiple `SimpleStorage` contracts
3. Use `storageFactoryStore(index, number)` to store a number in a specific contract
4. Use `storageFactoryGet(index)` to read the number from a specific contract

## Tech Stack
- Solidity `0.8.18`
- Remix IDE

## Author
Ilia Ansari
