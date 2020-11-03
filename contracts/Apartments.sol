//SPDX-License-Identifier: MIT
pragma solidity >=0.5.2;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Metadata.sol";

contract Apartments is ERC721Metadata {
    uint32 public Id;
    mapping(address => uint32) public MDTrack;

    constructor() ERC721Metadata("Apartment Token", "APT") payable public {
        Id = 0;
    }

    //createNFT method
    function createNFT(address receiver, string calldata metadata) external returns (uint32) {
        Id++;
        _mint(receiver, Id);
        _setTokenURI(Id, metadata);
        MDTrack[receiver] = Id;
        return Id;
    }

    //transferNFT method
    function transferNFT(address sender, address receiver, uint32 transId, string calldata metadata) external {
        _transferFrom(sender, receiver, transId);
        _setTokenURI(transId, metadata);
        delete MDTrack[sender];
        MDTrack[receiver] = Id;
    }
}