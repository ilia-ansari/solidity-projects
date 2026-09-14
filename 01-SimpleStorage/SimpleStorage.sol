// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256 private favoriteNumber;

    struct Person {
        string name;
        uint256 age;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToAge;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string calldata _name, uint256 _age) public {
        listOfPeople.push(Person(_name, _age));
        nameToAge[_name] = _age;
    }
}