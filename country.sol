// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract country is ERC721A {
    address public owner;
    uint256 public maxQuantity = 5; //total number of images that can be minted
    string baseUrl = "https://gateway.pinata.cloud/ipfs/QmcX3QoHU2kSJwEacBDqXpLJ3XhEGf3cawpffjarGwMqaQ/";
    string public prompt = "countries";
    constructor() ERC721A("country", "CRT") {
        owner = msg.sender;
    }

  
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action!");
        _;
    }

  //only the owner can execute the minting function
    function mint(uint256 quantity) external payable onlyOwner {
        require(
            totalSupply() + quantity <= maxQuantity,
            "You can not mint more than 5"
        );
        _mint(msg.sender, quantity);
    }
  
 //Return the base URL
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

 
  //Return the prompt description of every generated image
  function promptDescription() external view returns (string memory) {
        return prompt;
    }
}
