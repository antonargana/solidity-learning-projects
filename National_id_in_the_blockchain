// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9.0;

contract NationalIdIssuer {
    
    struct Citizen{
        uint cardNumber;
        string lastName;
        string firstName;
        string middleName;
        string birthPlace;
        string residence;
        uint sex;
        uint birthDate;
        uint maritalStatus;
    }
    
    Citizen[] public citizen;
    
  function _createId(
      uint _cardNumber, 
      string memory _lastName, 
      string memory _firstName,
      string memory _middleName,
      string memory _birthplace, 
      string memory _residence, 
      uint _sex, 
      uint _birthDate, 
      uint _maritalStatus) private {
          
          citizen.push(Citizen(_cardNumber, _lastName, _firstName, _middleName, _birthplace, _residence, _sex, _birthDate, _maritalStatus));
      }  
 
    function _generateCardNumber(string memory _lastName, string memory _firstName, string memory _middleName, string memory _birthplace) private pure returns(uint){
        uint cardnum = uint(keccak256(abi.encodePacked(_lastName, _firstName, _middleName, _birthplace)));
        return cardnum;
    }
    
    function createId(
      //uint _cardNumber,
      string memory _lastName, 
      string memory _firstName,
      string memory _middleName,
      string memory _birthplace, 
      string memory _residence, 
      uint _sex, 
      uint _birthDate, 
      uint _maritalStatus) public  {
          uint cardnum = _generateCardNumber(_lastName, _firstName, _middleName,_residence);
          _createId(cardnum, _lastName, _firstName, _middleName, _birthplace, _residence,_sex, _birthDate, _maritalStatus);
      }
}
