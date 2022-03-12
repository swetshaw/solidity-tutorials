// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Todos {
    uint256 id;
    struct NFTCharacter {
        uint256 characterId;
        string name;
        string description;
    }

    // An array of 'NFTCharacter' structs
    NFTCharacter[] public nftcharacters;

    function create(string memory _name, string memory _desc) public {
        id += 1;
        nftcharacters.push(
            NFTCharacter({characterId: id, name: _name, description: _desc})
        );
    }

    // update text
    function update(uint256 _index, string memory _name) public {
        NFTCharacter storage character = nftcharacters[_index];
        character.name = _name;
    }
}
