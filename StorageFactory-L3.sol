//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// contract SimpleStorage {
//     //Initalized to zero

//     //point to ponder dealing twith sha256
//     uint256 favoriteNumber;

//     mapping(string => uint256) public nameToFavaoriteNumber;

//     struct People {
//         uint256 favoriteNumber;
//         string name;

//     }
//     //uint256[] public favoriteNumberList;
//     People[] public people;

//     function store(uint256 _favoriteNumber) public {
//         favoriteNumber = _favoriteNumber;

//     }


//     //view , pure  they dont modify the blockchain
//     function retrieve() public view  returns(uint256){
//         return favoriteNumber;
//     }

//     //call data , memeory , storage
//     function addperson(string memory _name , uint256 _favoriteNumber) public {
//         people.push(People(_favoriteNumber , _name));
//         nameToFavaoriteNumber[_name] = _favoriteNumber;

//     }

// }

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        //How does storage factory knoiw whats simple storage look like?
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        //adress
        //abi -- Apllication Binary Interface
     
       
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
        // simpleStorage.store(_simpleStorageNumber);
}
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }
}


