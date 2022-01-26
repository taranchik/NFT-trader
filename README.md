# NFT Trader smart contract

![Project Image](https://i.imgur.com/smuHPFQ.png)

> NFT Trader smart contract

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

> For execution purposes could be used ganache or truffle, but recommended to use Remix IDE.

### Deploying smart contracts

1. In order to own NFT, deploy the CryptoPunks smart contract.

![CryptoPunks](https://i.imgur.com/x1BVQZn.png)

2. To trade NFT, deploy the NftTrader smart contract.

![NftTrader](https://i.imgur.com/PvP6LtI.png)

3. Deploy CustomERC20 smart contract from another account, because in further the first account will take a role of seller and the second one of buyer. It is not possible to buy own NFT for ERC20 tokens. CustomERC20 smart contract is needed to own ERC20 tokens for trading. There is a possibility to name it how do you like and built-in the mint function in the constructor, by default token creator owns 10 tokens.

![CustomERC20](https://i.imgur.com/FpIJzvg.png)

### Example of NFT trading scenario

1. Approve NFT trader smart contract for trading NFT.

![Approve NFT](https://i.imgur.com/ww0w2gZ.png)

2. Submit the offer.

![Submit offer](https://i.imgur.com/oFWUjmA.png)

3. Switch to the account, which owns ERC20 tokens and approve NFT trader smart contract for making transfers in ERC20 tokens, set the amount which you would like to spend.

![Approve ERC20](https://i.imgur.com/5mVxuaP.png)

4. Purchase the NFT.

![Purchase NFT](https://i.imgur.com/cHrlhz5.png)

5. In result, the second account should have 9 ERC20 tokens and one NFT. The seller of the offer should point to the null address.

![ERC20 balance](https://i.imgur.com/3TLSY4W.png)
![NFT balance](https://i.imgur.com/AO9fpHV.png)
![null pointer to seller](https://i.imgur.com/WqcQ1VD.png)

[Back To The Top](#bank-smart-contract-mocha/chai-tests)

---

## Author Info

- LinkedIn - [Viacheslav Taranushenko](https://www.linkedin.com/in/viacheslav-taranushenko-727466187/)
- GitHub - [@taranchik](https://github.com/taranchik)
- GitLab - [@taranchik](https://gitlab.com/taranchik)
- Twitter - [@viataranushenko](https://twitter.com/viataranushenko)

[Back To The Top](#bank-smart-contract-mocha/chai-tests)
