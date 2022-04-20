// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
pragma experimental ABIEncoderV2;

contract MyFirstContract {

    uint256 number = 0;
    uint256 number2 = 0;
    string[] names;
    mapping (string => uint) public phoneNumbers;

   function addMobileNumber(string memory _name, uint _mobileNumber) public {
       phoneNumbers[_name] = _mobileNumber;
   }

    function getMobileNumber(string memory _name) public view returns (uint) {
       return phoneNumbers[_name];
   }
   
   function getNames() public view returns (string[] memory) {
      return names;
   }

   function getNamesLength() public view returns (uint) {
       return names.length;
   }


  function addName(string memory _name) public {
       names.push(_name);
   }

   function getName(uint _index) public view returns (string memory) {
       return names[_index];
   }


   function changeNumber(uint256 _num) public {
       number = _num;
   }


   function getNumber() public view returns (uint256){
       return number;
   }

   function getNumberMultiplied(uint256 _num) public view returns (uint256) {
        return number * _num;
   }

    function addNumbers(uint256 _num1, uint256 _num2) public {
        number2 = _num1 + _num2;
    }

}
