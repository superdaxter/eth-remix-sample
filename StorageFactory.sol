// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {

    SimpleStorage[] public contractList;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        contractList.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        //ABI
        SimpleStorage simpleStorage = SimpleStorage(address(contractList[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

        function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = SimpleStorage(address(contractList[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }
}
