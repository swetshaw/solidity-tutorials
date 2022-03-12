// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MyCryptoToken {
    string NAME = "Blockchain Developers";
    string SYMBOL = "BDEV";

    mapping(address => uint256) balances;
    address deployer;

    // 2. Add constructor
    constructor() {
        deployer = msg.sender;
        balances[deployer] = 1000000 * 1e8;
    }

    function name() public view returns (string memory) {
        return NAME;
    }

    function symbol() public view returns (string memory) {
        return SYMBOL;
    }

    function decimals() public pure returns (uint8) {
        return 8;
    }

    // 3. Add function to retrieve balance of owner
    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }

    // 4. Add Transfer function
    function transfer(address _to, uint256 _amount) public returns (bool) {
        assert(balances[msg.sender] > _amount);
        balances[msg.sender] = balances[msg.sender] - _amount;
        balances[_to] = balances[_to] + _amount;
        return true;
    }
}
