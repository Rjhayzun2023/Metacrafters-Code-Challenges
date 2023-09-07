// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* 
Now let's practice what you have been learning.

Write a Solidity contract with 4 functions; add, subtract, multiply and divide 2 numbers.

Run your contract and make sure it works.
*/

contract functionChallenge {

    //addition
    function addition(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    //subtraction
    function subtraction(uint x, uint y) external pure returns (uint) {
        return x - y;
    }

    //Multiplication
    function multiply(uint x, uint y) external pure returns (uint) {
        return x * y;
    }

    //Division
    function divide(uint x, uint y) external pure returns (uint) {
        return x /y;
    }


}