//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Test is ERC1155 {
    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    uint256 public constant THORS_HAMMER = 2;
    uint256 public constant SWORD = 3;
    uint256 public constant SHIELD = 4;
    string public name;

    constructor(string memory _name, string[] memory _cids, uint256[] memory mintNumber) ERC1155("fuck you") {
        name = _name;
        for(uint256 idx = 0; idx < _cids.length; idx++){
            string memory tokenUri = string(abi.encodePacked("https://ipfs.io/ipfs/", _cids[idx]));
            _setURI(tokenUri);
            _mint(msg.sender, idx, mintNumber[idx], "");
        }
    }
    // constructor(string memory _name, string memory _cid, uint256 mintNumber) ERC1155("fuck you") {
    //     name = _name;
    //     string memory tokenUri = _cid;
    //     _setURI("https://ipfs.io/ipfs/bafybeiggya4utnrobqgtpzgo6yq647muafdz76qqlenrrm2zlukn63zdme");
    //     _mint(msg.sender, GOLD, mintNumber, "");
    // }
}