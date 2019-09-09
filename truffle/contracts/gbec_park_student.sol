pragma solidity^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract Student is ERC721Full, Ownable {
    string private _name = "GBEC's NFT";
    string private _symbol = "GSFT";
    uint256 private _tokenId = 0;

    constructor()ERC721Full(_name, _symbol) public {}

    function mint(address to, string memory pictHash) public payable onlyOwner {
        require(to != msg.sender, "Owner can't hold NFT");
        require(msg.value >= 500000000000000000, "don't enough ETH");
        _mint(to, _tokenId);
        _setTokenURI(_tokenId, pictHash);
    }

}