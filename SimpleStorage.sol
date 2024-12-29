//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19; // Stating our version 

contract SimpleStorage {
 uint256  myfavouriteNumber;
//uint256[] listofFavouriteNumbers; 
// [0,87,23]
//  0 1   2

//We can create our own type too
struct Person{
    uint256 favouriteNumber;
    string name;
}

// Person public pat = Person({favouriteNumber: 7, name: "pat"});
// Person public bibek = Person({favouriteNumber: 70, name: "bibek"});

Person[] public listofPeople; // []

// Chealsea --- > 81
mapping(string => uint256) public nameToFavouriteNumber;

function store(uint256 _favouriteNumber) public {
    myfavouriteNumber = _favouriteNumber;
}

//view /pure dont require transaction
function retrieve() public view returns(uint256) {
    return myfavouriteNumber;
}

//calldata, memory, storage calldata and memory are temporary variables.

// Memory variable can be changed but calldata variable passed cant be modified.
// Storage is permananent variable that can be modified.
function addPerson(string memory _name, uint256 _favouriteNumber) public {
     listofPeople.push(Person(_favouriteNumber, _name) );
     nameToFavouriteNumber[_name] = _favouriteNumber;
}
}
