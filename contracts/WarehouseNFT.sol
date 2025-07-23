
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WarehouseNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;
    constructor() ERC721("WarehouseNFT", "WHNFT") {}

    function mint(string memory tokenURI) public returns (uint256) {
        _tokenIds++;
        _mint(msg.sender, _tokenIds);
        _setTokenURI(_tokenIds, tokenURI);
        return _tokenIds;
    }
}
