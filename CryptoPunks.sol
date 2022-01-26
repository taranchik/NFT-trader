// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract CryptoPunks is ERC721 {
    uint256 public constant TOM = 0;
    uint256 public constant DARREN = 1;
    uint256 public constant EDD = 2;
    uint256 public constant JOE = 3;
    uint256 public constant ETHAN = 4;

    constructor() public ERC721("CryptoPunks", "CP") {
        _mint(msg.sender, TOM);
        _mint(msg.sender, DARREN);
        _mint(msg.sender, EDD);
        _mint(msg.sender, JOE);
        _mint(msg.sender, ETHAN);
    }

    function _baseURI() internal view override returns (string memory) {
        return
            "https://bafybeicr6ythei5d3akhpcc3trj6wug6e2oukhoehbnacvb2kbp6ne7wki.ipfs.dweb.link/";
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        string memory baseURI = _baseURI();
        return
            bytes(baseURI).length > 0
                ? string(
                    abi.encodePacked(
                        baseURI,
                        Strings.toString(tokenId),
                        ".json"
                    )
                )
                : "";
    }
}
