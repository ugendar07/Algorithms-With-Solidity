// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import "../contracts/BubbleSort.sol";

contract BubbleSortTest is BubbleSort {
    BubbleSort bs;

    /// Test Params
    uint256[] public arr = [65, 55, 45, 35, 25, 15, 10];
    uint256[] expected_result = [10, 15, 25, 35, 45, 55, 65];

    //  =====   Set up  =====
    function setUp() public {
        bs = new BubbleSort();
    }

    /// @dev Test `bubbleSort`

    function test_bubbleSort() view public {
        uint256[] memory result = bs.bubbleSort(arr);

        for (uint256 i = 0; i < result.length; i++) {
            require(result[i] == expected_result[i], "Array elements differ");
        }
    }
}