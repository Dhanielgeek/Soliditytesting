// SPDX-License-Identifier: MIT
 pragma solidity 0.8.18 ;

  contract SimpleStorage {

   //store our number 
    uint256 FavNumber;
   
     string Myname = "hello world";


     ///update our Number 
    function hold( uint256 NewNumber) public {
        FavNumber = NewNumber;
    }
     /// View Our Number or updatedNumber 
    function See ()public view returns (uint256){
        return  FavNumber;
    }
   /// add a number and also do multiple stuff with the number 
    function addNumber (uint256 a, uint256 b) public  pure returns (uint256){
        return a+b;
    }

  struct Person {
    uint Age;
    string Name;
    bool has_Pet;
  }

  mapping  (uint256 => string) public  PersoName;

  Person[] public PersonInfo;

  function addPersonInfo (uint256 _MaiNumber, string memory _MaiNamer, bool _isYes) public {
    PersonInfo.push(Person(_MaiNumber,_MaiNamer, _isYes));
    PersoName[_MaiNumber] = _MaiNamer;
  }
  
  }
