// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract EthereumWallet{
    
    event TransferCrypto(address from, address to, uint amount);
    event DepositCrypto(address sender, uint amount, uint balance);
    event WithdrawCrypto(address to, uint balance);
    
    address payable public owner;
    
    constructor () {
        owner = payable(msg.sender);
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the walet owner!");
        _;
        
    }
    
    function withdraw(uint _amount) public onlyOwner{
        owner.transfer(_amount);
        emit WithdrawCrypto(msg.sender, address(this).balance);
    }
    
    function depositToWallet() public payable{
        emit DepositCrypto(msg.sender, msg.value, address(this).balance);
    }
    
    function sendCrypto(address payable _to, uint amount) public onlyOwner{
        _to.transfer(amount);
        emit TransferCrypto(msg.sender, _to, address(this).balance);
    }
    
    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
    
}
