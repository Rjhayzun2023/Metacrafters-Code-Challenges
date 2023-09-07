// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;


//Write a smart contract that takes some ether from the user. Find out its value in units of:

contract Challenge {
    //variable - will contain the value of eth
    uint _ether;

    //Funtion getEtherValue  - gets the value of eth and stores it in _ether variable
    function getEtherValue(uint _etherValue) public {
        _ether = _etherValue;
    }

    //Funtion displayEtheInWei  - displays the value of ether to wei "PS since solidity does not have a floating type value it cant show eth to wei"
    function displayEtheInWei() public view returns (uint) {
        return _ether * 1e18;
    }

    //Funtion displayEtherInEther  - displays the value of ether to ether
    function displayEtherInEther() public view returns (uint) {
        return _ether;
    }

    //Funtion ddisplayEtherInGwei  - displays the value of ether to gwei
    function displayEtherInGwei() public view returns (uint) {
        return _ether * 10*9;
    }
}