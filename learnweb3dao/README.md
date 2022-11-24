# Learn Web3 Dao
The use of a blockchain confirms that each unit of value was transfered only once, and the ingenious mechanisms put forth by Satoshi Nakamoto solved the long-standing decentralized double-spending problem. </br>

Ethereum </br>
It maintains consensus across all the computers in it's network with Proof of Stake (PoS). The Serenity Patch, introduced in September of 2022, made the switch for Ethereum going from Proof of Work to a Proof of Stake mechanism.</br>

ERC20 Tokens</br>

In addition to Ether, people can create and use their own currencies on Ethereum. The most common form of currency is ERC20 tokens. ERC20 Tokens are smart contracts that fit a specific standard. Developers can extend beyond the standard, but should meet the minimum requirements when making their own token. The standardization allows for digital wallets to easily support all types of tokens, without needing specialized code for each token created.</br></br>

ERC721 and ERC1155 Tokens</br>

These are what are also called NFTs. These two standards, similar to ERC20, provide a base line for what requirements should be met when creating NFTs. They provide similar benefits as well, allowing wallets and NFT marketplaces to instantly be compatible with all NFT collections as they all follow one of these two standards.</br></br>

There are 3 types of variables in Solidity

    Local
        Declared inside a function and are not stored on blockchain
    State
        Declared outside a function to maintain the state of the smart contract
        Stored on the blockchain
    Global
        Provide information about the blockchain. They are injected by the Ethereum Virtual Machine during runtime.
        Includes things like transaction sender, block timestamp, block hash, etc.


Videos to watch</br>
https://www.youtube.com/watch?v=bBC-nXj3Ng4 </br>
https://andersbrownworth.com/blockchain/ </br>

Reading Material</br>
https://solidity-by-example.org/ </br>
https://ethereum.org/en/developers/docs/web2-vs-web3/</br>
https://en.wikipedia.org/wiki/Double-spending </br>


What is Gas?</br>
Gas is the fuel that allows it (Ethereum) to operate, in the same way that a car needs gasoline to run.</br>
Just like how seconds are a unit of time, and metres a unit of distance, gas by itself is a unit of computation on the Ethereum Network.</br>

```shell
1 Gwei(Gas unit) = 0.000000001 ETH



Gwei stands for Giga-Wei, which is equal to 1,000,000,000 (10^9) wei. Wei is the smallest denomination of ETH. 1 ETH = 10^18 Wei.

```

Ethereum does not have an overall maximum supply (unlike Bitcoin, which has a maximum supply of 21M Bitcoins)</br>

Before London Upgrade</br>
gas fees = gas spent * gas price</br>

After London Upgrade</br>
gas fees = gas spent * (base fees + priority fees) </br>

A transaction has "finality" on Ethereum when it's part of a block that can't change.

# PoW vs PoS

Proof of Stake underlies the consensus mechanism used by the Ethereum network (and many other blockchains). The idea is as follows:</br>

1. Validators stake capital in the form of $ETH tokens into a smart contract on Ethereum</br>
2. Significantly less energy usage</br>
3. Lower barrier to entry </br>
4. Reduced centralization risk - due to the cost and specialized knowledge of setting up mining farms in PoW, there was a centralization risk associated with Ethereum being a PoW network. With PoS, since validators just need to stake some capital up front with much more reasonable hardware requirements</br>

A sybil attack is the problem where one user or entity pretends to be many different users or entities. Security against this type of attack is essential for a decentralized blockchain to allow validators to be rewarded based on the resources they put in, not just random selection. </br>

an algorithm called LMD-GHOST which works to identify which fork has the greatest amount of assestations in it's history.</br>

On PoS Ethereum, this is managed through the use of "checkpoint" blocks. Every 32 blocks, called an epoch, a checkpoint block is produced. Along with voting for individual blocks, validators also vote for pairs of checkpoint blocks every epoch.</br>

The state in Ethereum is stored as a really large data structure called a Merkle Patricia Trie.</br>




