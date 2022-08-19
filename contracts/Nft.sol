// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract YinkaToken is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;
    uint256 MAXIMUM_SUPPLY = 200000;

    constructor() ERC721("YinkaToken", "@") {

    }

    function mintTo(address to, string memory URI) public {
        uint256 _tokenId = _tokenIdCounter.current();
          require(_tokenIdCounter.current() <= MAXIMUM_SUPPLY, "NO more mint!");
        _tokenIdCounter.increment();
        _safeMint(to, _tokenId);
        _setTokenURI(_tokenId, URI);
    }

    // =================================>.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)public view  override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }
}

//================================Contract address=============================>
// 0x4E387D827E0B134AF9847149E3DEAA0bbDFEc73b//
// OPENSEA LINK: https://testnets.opensea.io/collection/yinkatoken