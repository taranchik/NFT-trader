# NFT Trader smart contract

![Project Image](https://i.imgur.com/smuHPFQ.png)

> NFT Trader smart contract.

---

### Table of Contents

- [Description](#description)
- [How To Use](#how-to-use)
- [Author Info](#author-info)

---

## Description

A smart contract to buy NFT for ERC20 token
- Shop owner (smart contract owner) has ability to submit new offers of NFTs (ERC 721) that he is owner of
- Listing includes a price in ERC20 token 
- Customers can buy one of the offered NFTs for ERC20 token

[Back To The Top](#bank-smart-contract-mocha/chai-tests)

---

## How To Use

    For execution purposes could be used ganache or truffle, but recommended to use Remix IDE.

### Deploying smart contracts

1. In order to own NFT, deploy the CryptoPunks smart contract.

![CryptoPunks](https://i.imgur.com/x1BVQZn.png)

2. To trade NFT, deploy the NftTrader smart contract.

![NftTrader](https://i.imgur.com/PvP6LtI.png)

3. Deploy CustomERC20 smart contract from another account, because in further the first account will take a role of seller and the second account of buyer. It is not possible to buy own NFT for ERC20 tokens. CustomERC20 smart contract is needed to own ERC20 tokens for trading. There is a possibility to name it how do you like and built-in the mint function in the constructor, by default token creator owns 10 tokens.

![CustomERC20](https://i.imgur.com/FpIJzvg.png)

### Example of Nft trading scenario

1. 

[Back To The Top](#bank-smart-contract-mocha/chai-tests)

---

## Author Info

- LinkedIn - [Viacheslav Taranushenko](https://www.linkedin.com/in/viacheslav-taranushenko-727466187/)
- GitHub - [@taranchik](https://github.com/taranchik)
- GitLab - [@taranchik](https://gitlab.com/taranchik)
- Twitter - [@viataranushenko](https://twitter.com/viataranushenko)

[Back To The Top](#bank-smart-contract-mocha/chai-tests)
