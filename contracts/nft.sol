// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
 
import "../node_modules/@0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "../node_modules/@0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
 
contract newNFT is NFTokenMetadata, Ownable {
 
  constructor() {
    nftName = "Cool Swam";
    nftSymbol = "SWAM";
  }
 
  function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
 
}