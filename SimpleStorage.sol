// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    //initialized to 0 (NULL value)
    uint256 myNumber;

    struct People {
        uint256 myNumber;
        string name;
    }

    People[] public people;
    //mapping a string to an int
    mapping(string => uint256) public getNum;

    function store(uint256 newNum) public {
        myNumber = newNum;
    }

    // view(want to read state off blockchain, no state change)
    //pure()
    function retrieve() public view returns(uint256) {
        return myNumber;
    }

    function addPerson(string memory _name, uint256 _num) public {
        //people.push(People({myNumber: _num, name: _name}));
        people.push(People(_num, _name));
        getNum[_name] = _num;
    }



}
