// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.8.0 <0.8.5;

/** 
  * This is my first smart contract I programmed in solidity.
  * The contract returns a string. 
  */
    
    
contract HelloWorld{ 
    string  sayHi;

    function hello(string memory _sayHi) external {
        sayHi = _sayHi; 
    }
    
    function sayHello() public view returns(string memory){
        return(sayHi);
    }
}
