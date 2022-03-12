// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MyCryptoToken {
    string NAME = "Blockchain Developers";
    string SYMBOL = "BDEV";

    mapping(address => uint256) balances;
    address deployer;

    function name() public view returns (string memory) {
        return NAME;
    }

    function symbol() public view returns (string memory) {
        return SYMBOL;
    }

    function decimals() public view returns (uint8) {
        return 8;
    }

    function totalSupply() public view returns (uint256) {
        return 10000000 * 1e8; //10M * 10^8 because decimals is 8
    }
}
