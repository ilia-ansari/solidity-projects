# StorageFactory

This project demonstrates **Composability** in Solidity by creating a factory contract that can deploy and interact with multiple `SimpleStorage` contracts.

## Contracts

### SimpleStorage.sol
A simple contract that stores a number and a list of people.

### StorageFactory.sol
A factory contract that:
- Deploys new instances of `SimpleStorage`
- Keeps track of all deployed contracts in an array
- Allows storing and retrieving numbers from any deployed contract using an index

## Concepts Covered

- Named Imports
- Contract deployment using `new`
- Array of contracts
- Inter-contract communication (Composability)
- `view` functions

## How to Use

1. Deploy `StorageFactory`
2. Call `createSimpleStorageContract()` several times
3. Use `storageFactoryStore(index, number)` to store a value
4. Use `storageFactoryGet(index)` to read the value

## Tech Stack

- Solidity 0.8.18
- Remix IDE
