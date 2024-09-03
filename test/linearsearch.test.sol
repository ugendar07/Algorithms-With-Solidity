// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;


import "../contracts/LinearSearch.sol";

contract LinearSearchTest is LinearSearch {
    // Target contract
    LinearSearch ls;

    /// Test Params
    uint256[] public arr = [12, 14, 11, 3, 15, 5, 4, 13, 7, 20];
    uint private key = 4;

    //  =====   Set up  =====g
    function setUp() public {
        ls = new LinearSearch();
    }

    /// @dev Test `LinearSearch`

    function test_LinearSearch() public {
        int searchedIndex = ls.search(arr,key);
        int expectedIndex = 6;
        assert(expectedIndex == searchedIndex);
    }
}