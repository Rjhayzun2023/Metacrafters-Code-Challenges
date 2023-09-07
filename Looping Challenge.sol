// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* 
Looping in Action
Let's put our new knowledge into action!.

We'll do a little lab where you will do a stress test a for loop. This is not graded but rather a way for you to practice ahead of our final challenge. Use this to try loops out and share what you learn. To get an easier result, you may want to reduce your gas limit from 3 million down to something like 300k in the deploy section of remix.

For this challenge, do a simple operation, and run it in 1000 loops.

Alternatively, try to do a complex operation and run it in 100 loops.

Does the transaction throw an error? Why? My simple operation only gave a warning asking that ive reached the gas limit, 
while with my complex operation it threw an error VM error where it reverted to the initial state
*/

contract loopingChallenge {

    //simple operation - will just store the values of loop1
    function runningThLoops() external pure {
        uint tempval = 0;
        for( uint loop1 = 0;  loop1 < 1000; loop1++){
            tempval+=loop1;
        }
    }

    //complex operation - wil run an funtion of exponential then the other function will call the expenential funtion to square 100 times;
    function complexOperation(uint base, uint exponent) public pure  returns (uint) {
        uint result = 1;
        for (uint i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }

    // Function to run the complex operation in a loop 100 times
    function runComplexOperationLoop() public pure returns (uint[100] memory results) {
        for (uint i = 0; i < 100; i++) {
            results[i] = complexOperation(i, 2); // Square the value (i) in this example
        }
    }

}
