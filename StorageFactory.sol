	// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    // Array to store instances of deployed SimpleStorage contracts
    SimpleStorage[] public listOfSimpleStorageContracts;

    // Function to deploy a new SimpleStorage contract
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorage) public {
// Address 
//ABI - Application Binary Interface
    }
}

