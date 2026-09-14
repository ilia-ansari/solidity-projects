// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContractsAddress;

    address public SimpleStorageAddress;

    function createSimpleStorageContract() public {
    listOfSimpleStorageContractsAddress.push(new SimpleStorage());
    }

    function storageFactoryStore (uint256 _simpleStorageIndex, uint256 _simpleStorageFavoriteNumber) public {
        listOfSimpleStorageContractsAddress[_simpleStorageIndex].store(_simpleStorageFavoriteNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContractsAddress[_simpleStorageIndex].retrieve();
    }
}
