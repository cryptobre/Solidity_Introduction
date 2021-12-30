

// SPDX-License-Identifier: MIT
pragma solidity 0.6.0;

contract SimpleStorage {

   // this will get initialised as 0
   uint256 favoriteNumber;


   struct People {

       uint256 favoriteNumber;
       string name;

   }


    // empty argument is dynamic array

   People[] public people;
   mapping(string => uint256) public nameToFavoriteNumber;



   function store(uint256 _favoriteNumber) public {
         favoriteNumber = _favoriteNumber;
   }

   // (type view and pure)
   // pure does purely math
   // orange buttons change the state of the blockchain
   // blue buttons don't change blockchain 
   function retrieve() public view returns(uint256) {

          return favoriteNumber;

   }

   // memory - keep only during execution - storage, keep forever
   function addPerson(string memory _name, uint256 _favoriteNumber) public {

       people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
       nameToFavoriteNumber[_name] = _favoriteNumber;

   }

}