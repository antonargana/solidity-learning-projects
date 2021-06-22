// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


    /** * Second practice contract
        * this contract stores a number into an array
        *then returns the number or the index
        */
        
contract uintStorage {
    
    uint[] storeNumbers;
    
    function storeData(uint numbers) public{
        storeNumbers.push(numbers);
    }
    
    function getNumbers() public view returns(uint[] memory){
        return storeNumbers;
    }
    
    function getBasedOnIndex(uint _index) public view returns(uint){
        return storeNumbers[_index];
    }
}
