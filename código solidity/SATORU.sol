// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Import da extensão ERC721URIStorage

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Rivais is ERC721URIStorage, Ownable {
    constructor() ERC721("Rivais", "RVS") {}
// A função safeMint precisa receber tokenURI como parâmetro
    function safeMint(address to, uint256 tokenId, string memory tokenURI) public onlyOwner {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
    }
}