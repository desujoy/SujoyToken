# SujoyToken - ERC-20 Token Smart Contract

This project implements a basic ERC-20 token using Solidity. The token is named **SujoyToken** with the symbol **SDT** and follows the ERC-20 standard, allowing users to transfer tokens, approve spenders, and check balances.

## Deployed Contract:
- Sepolia Testnet: `0x76B3d79282D018F423A5e223f344eD3E5E5f0617`
  - [Token](https://sepolia.etherscan.io/token/0x76B3d79282D018F423A5e223f344eD3E5E5f0617) (Total Supply 100 SDT)
  - [Contract](https://sepolia.etherscan.io/address/0x76B3d79282D018F423A5e223f344eD3E5E5f0617)

## Token Details

- **Name**: SujoyToken
- **Symbol**: SDT
- **Decimals**: 18
- **Initial Supply**: Specified during deployment (scaled by 10^18 due to decimals).

## Features

The token contract supports the following functionalities:

- **totalSupply**: Specifies the total number of tokens the contract holds.
- **balanceOf**: Indicates the balance of tokens for any address.
- **transfer**: Enables transferring tokens between addresses.
- **approve**: Allows an address to authorize a spender to use a specified number of tokens.
- **transferFrom**: Allows an approved spender to transfer tokens on behalf of the token owner.
- **allowance**: Returns the amount an approved contract is still allowed to spend or withdraw.
- **burn**: Allows a user to burn tokens, permanently reducing the total supply.

