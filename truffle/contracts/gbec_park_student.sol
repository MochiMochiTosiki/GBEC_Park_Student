pragma solidity^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";

contract Student is ERC721Full {
    string private _name = "GBEC's NFT";
    string private _symbol = "GSFT";
    uint256 private _tokenId = 0;

    constructor()ERC721Full(_name, _symbol) public {}

    function mint(address to, string memory pictHash) public {
        require(to != msg.sender, "can only mint by snder");
        _tokenId += 1;
        _mint(to, _tokenId);
        _setTokenURI(_tokenId, pictHash);
    }
}