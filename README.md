# SujoyToken - ERC-20 Token Smart Contract

This project implements a basic ERC-20 token using Solidity. The token is named **SujoyToken** with the symbol **SDT** and follows the ERC-20 standard, allowing users to transfer tokens, approve spenders, and check balances.

## Deployed Contract:
- Sepolia Testnet: `0xF8b689ecc168d94cf1200a89A62B3f79BB27a092`
  - [Token](https://sepolia.etherscan.io/token/0xF8b689ecc168d94cf1200a89A62B3f79BB27a092)
  - [Contract](https://sepolia.etherscan.io/address/0xF8b689ecc168d94cf1200a89A62B3f79BB27a092)

## Features

The token contract supports the following functionalities:

- **totalSupply**: Specifies the total number of tokens the contract holds.
- **balanceOf**: Indicates the balance of tokens for any address.
- **transfer**: Enables transferring tokens between addresses.
- **approve**: Allows an address to authorize a spender to use a specified number of tokens.
- **transferFrom**: Allows an approved spender to transfer tokens on behalf of the token owner.

## Token Details

- **Name**: SujoyToken
- **Symbol**: SDT
- **Decimals**: 18
- **Initial Supply**: Specified during deployment (scaled by 10^18 due to decimals).

## Interacting with the Contract

You can use the following methods to interact with your deployed token contract:

- **totalSupply**: View the total token supply.
- **balanceOf(address)**: Check the token balance of any address.
- **transfer(address, amount)**: Transfer tokens to another address.
- **approve(address, amount)**: Approve a spender to spend tokens on your behalf.
- **transferFrom(address, address, amount)**: Transfer tokens from an approved address to another.
