//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//JUST SAMPLE EXAMPLE ETHEREUM VIRTUAL MACHINES
//AVALANCHE , FANTON , POLYGON

contract SimpleStorage {
    //Initalized to zero

    //point to ponder dealing twith sha256
    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavaoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;

    }
    //uint256[] public favoriteNumberList;
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

    }


    //view , pure  they dont modify the blockchain
    function retrieve() public view  returns(uint256){
        return favoriteNumber;
    }

    //call data , memeory , storage
    function addperson(string memory _name , uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber , _name));
        nameToFavaoriteNumber[_name] = _favoriteNumber;

    }

}

