//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
contract Token{
    string public name = "Hardhat token";
    string public symbol = "MHT";
    address public owner;
    uint public totalSupply = 1000000;
    mapping(address => uint) balances;

    constructor(){
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address _to, uint _amount) external{
        require(balances[msg.sender] >= _amount,"Not enough tokens!");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }

    function balanceOf(address _account) external view returns (uint){
        return balances[_account];
    }
}