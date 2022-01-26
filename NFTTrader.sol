// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./CustomERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NftTrader {
    mapping(address => mapping(uint256 => Listing)) public listingNFTs;

    struct Listing {
        CustomERC20 ERC20token;
        uint256 price;
        address seller;
    }

    function submitOffer(
        address ERC20tokenAddr,
        uint256 price,
        address NFTcontractAddr,
        uint256 tokenId
    ) public {
        ERC721 NFTtoken = ERC721(NFTcontractAddr);
        CustomERC20 ERC20token = CustomERC20(ERC20tokenAddr);

        require(
            listingNFTs[NFTcontractAddr][tokenId].seller == address(0),
            "The NFT is already on sale"
        );
        require(
            NFTtoken.ownerOf(tokenId) == msg.sender,
            "The sender is not the owner of the NFT"
        );
        require(
            NFTtoken.isApprovedForAll(msg.sender, address(this)),
            "Smart contract must be approved"
        );

        listingNFTs[NFTcontractAddr][tokenId] = Listing(
            ERC20token,
            price,
            address(msg.sender)
        );
    }

    function purchase(address NFTcontractAddr, uint256 tokenId) public payable {
        Listing memory item = listingNFTs[NFTcontractAddr][tokenId];

        require(item.seller != msg.sender, "Seller can not purchase own NFT");
        require(item.seller != address(0), "NFT in not on sale");

        ERC721 token = ERC721(NFTcontractAddr);

        item.ERC20token.transferFrom(msg.sender, item.seller, item.price);
        token.safeTransferFrom(item.seller, msg.sender, tokenId);

        listingNFTs[NFTcontractAddr][tokenId].seller = address(0);
    }
}
