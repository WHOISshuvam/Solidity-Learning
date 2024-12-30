// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

//Inheritance
contract AddFiveStorage is SimpleStorage{
    // + 5
    // Virtual Override
    // Override
    function store(uint256 _newNumber) public override {
        myfavouriteNumber = _newNumber + 5;
    }
}
