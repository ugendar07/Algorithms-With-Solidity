// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../contracts/Knapsack.sol";

contract Knapsack1Test is Knapsack {
    Knapsack knapsack;

    uint256 numberOfItems = 6;
    uint256 totalWeight = 15;

    uint256[] values = [5, 6, 4, 6, 5, 2];
    uint256[] weights = [6, 5, 6, 6, 3, 7];

    function setUp() public {
        knapsack = new Knapsack();
    }

    function testKnapsack() public {
        assert(
            17 ==  knapsack.knapsack(numberOfItems, totalWeight, weights, values)
        );
    }
}

contract Knapsack2Test is Knapsack {
    Knapsack knapsack1;

    uint256 numberOfItems = 3;
    uint256 totalWeight = 50;

    uint256[] values = [60, 100, 120];
    uint256[] weights = [10, 20, 30];

    function setUp() public {
        knapsack1 = new Knapsack();
    }

    function testKnapsack() public {
        assert(
            220 == knapsack1.knapsack(numberOfItems, totalWeight, weights, values)
        );
    }
}

contract Knapsack3Test is Knapsack {
    Knapsack knapsack2;

    uint256 numberOfItems = 3;
    uint256 totalWeight = 8;

    uint256[] values = [30, 50, 60];
    uint256[] weights = [3, 4, 5];

    function setUp() public {
        knapsack2 = new Knapsack();
    }

    function testKnapsack() public {
        assert(
            90 == knapsack2.knapsack(numberOfItems, totalWeight, weights, values)
        );
    }
}

contract Knapsack4Test is Knapsack {
    Knapsack knapsack3;

    uint256 numberOfItems = 5;
    uint256 totalWeight = 5;

    uint256[] values = [
        1000000000,
        1000000000,
        1000000000,
        1000000000,
        1000000000
    ];
    uint256[] weights = [1, 1, 1, 1, 1];

    function setUp() public {
        knapsack3 = new Knapsack();
    }

    function testKnapsack() public {
        assert(
            5000000000 == knapsack3.knapsack(numberOfItems, totalWeight, weights, values)
        );
    }
}