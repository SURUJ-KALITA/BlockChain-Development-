//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage{
//Inheritance and Override
    //5
    //override
    //virtual override
    //dont forget to override 
    //following changes were to be made 
                //uint256[] public favoriteNumberList;
                // People[] public people;

                // function store(uint256 _favoriteNumber) public virtual {
                //     favoriteNumber = _favoriteNumber;

                // }

    function store(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 5;
    }


}

