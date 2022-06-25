# Crypto currency

Topics
1. What is Bitcoin?
2. Bitcoin's Monetary Policy
3. Mining
4. Nonce
5. CPU's vs GPU's vs ASICs
6. Mempool
7. Transactions
8. Wallets
9. Public key and Private Key

A coin is the default cryptocurrency of a blockchain. For instance, Ether (ETH) is the default currency on the Ethereum blockchain. When a cryptocurrency uses or “borrows” another blockchain's network, then it is considered a token.

Bitcoin's Monetary Policy

1. The Halving
a Bitcoin halving is the process of halving the rewards of mining Bitcoin after each set of 210,000 blocks is mined. By reducing the rewards of mining Bitcoin as more blocks are mined, a Bitcoin halving limits the supply of new coins, so prices could rise if demand remains strong.
<br/>  

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/halving.jpg?raw=true)

<br/> 


2. Block Frequency
Each new bitcoin block is produced every 10 minutes, on average. The exact time required to produce a new block can vary significantly and depends in part on the current mining difficulty level, which adjusts every 2,016 blocks, or approximately once every two weeks.

The Nonce
In cryptocurrency, a nonce is an abbreviation for "number only used once," which is a number added to a hashed—or encrypted—block in a blockchain that, when rehashed, meets the difficulty level restrictions. The nonce is the number that blockchain miners are solving to receive the block reward.

What is target?
The target is used in mining. It is a number that a block hash must be below for the block to be added on to the blockchain. 


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/target.jpg?raw=true)

<br/> 

Bitcoin's Target History

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/targetHistory.jpg?raw=true)

<br/> 

CPU vs GPU vs ASIC <br/> 

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/asic.jpg?raw=true)

<br/> 

Mining Pools
A mining pool is a joint group of cryptocurrency miners who combine their computational resources over a network to strengthen the probability of finding a block or otherwise successfully mining for cryptocurrency.

Nonce Range


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/nonceRange.jpg?raw=true)

<br/> 


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/nonceRange2.jpg?raw=true)

<br/> 

Timestamp
Q. What the miners do when all the nonce get exhausted and miners have not hit the target?
Timestamps help the network determine how long it takes to extract blocks for a certain period, and from there adjust the mining difficulty parameter.



![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/timestamp.jpg?raw=true)

<br/> 

Mempool
The mempool is where all the valid transactions wait to be confirmed by the Bitcoin network. A high mempool size indicates more network traffic which will result in longer average confirmation time and higher priority fees. 


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/mempool.jpg?raw=true)

<br/> 

Transaction and UTXOs
An unspent transaction output (UTXO) is the technical term for the amount of digital currency that remains after a cryptocurrency transaction.


Cryptocurrency Wallet

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/wallet.jpg?raw=true)

Public Key & Private Key
The public key is used to send cryptocurrency into a wallet. The private key is used to verify transactions and prove ownership of a blockchain address. If someone sends you, say one bitcoin (BTC), a private key will be required to “unlock” that transaction and prove that you are now the owner of that bitcoin.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/privatekey.jpg?raw=true)

Demo: https://tools.superdatascience.com/blockchain/public-private-keys/signatures

Segregated Witness
Segregated Witness (SegWit) refers to a change in Bitcoin's transaction format where the witness information was removed from the input field of the block. The stated purpose of Segregated Witness is to prevent non-intentional Bitcoin transaction malleability and allow for more transactions to be stored within a block.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/segwit.jpg?raw=true)

HD Wallet
A hierarchical deterministic (HD) wallet is a digital wallet commonly used to store the digital keys for holders of cryptocurrencies such as Bitcoin and Ethereum. Anyone with a copy of both the public and password-like private key can control the cryptocurrency in the account.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/cryptocurrency/images/hdwallet.jpg?raw=true)