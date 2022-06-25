# Blockchain

Topics
1. What is Blockchain
2. Hashing Algorithm
3. Immutable Ledger
4. Distributed P2P
5. What is Mining?
6. Consensus Protocol

Started with 1991 research paper by Stuart Haber adn Scott Stornetta

What is blockchain?
Blockchain is a distributed immutable ledger which is completely transparent.

Applications of Blockchain?
Product Tracking 
Smart Contracts  
International Wire Transfer 
Healthcare system 

What is Hashing Algorithm?
A hash function takes an input string (numbers, alphabets, media files) of any length and transforms it into a fixed length. The fixed bit length can vary (like 32-bit or 64-bit or 128-bit or 256-bit) depending on the hash function which is being used. The fixed-length output is called a hash. SHA256 is most popular length. 

This first block of any blockchain is called Genesis block, and it's previous hash is always 0000

<br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/blockchain/images/hashExample.jpg?raw=true)
<br/> 

The 5 requirements of Hash Algorithm
1. One way = data can only be converted to encrypted data not vise versa
2. Deterministic = abc => 845, means gives same result for same input
3. Fast computation
4. Withstand collisions  = cannot be hacked easily
5. Avalanche effect = if an input is changed slightly (for example, flipping a single bit), the output changes significantly (e.g., half the output bits flip).

Immutable Ledger
Immutable ledger in blockchain refers to any records that have the ability to remain unchanged. Immutability means that it is very difficult to make changes without collusion.

Distributed P2P network
All nodes interact with each other, there is no client server.

<br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/blockchain/images/p2p.jpg?raw=true)
<br/> 

Blockchain Mining
Blockchain "mining" is a metaphor for the computational work that nodes in the network undertake in hopes of earning new tokens. In reality, miners are essentially getting paid for their work as auditors. They are doing the work of verifying the legitimacy of Bitcoin transactions.


<br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/blockchain/images/mining.jpg?raw=true)
<br/> 

Byzantine Generals Problem

<br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/blockchain/images/bgp.jpg?raw=true)
<br/> 

Practical Byzantine Fault Tolerance is a consensus algorithm introduced in the late 90s by Barbara Liskov and Miguel Castro. pBFT was designed to work efficiently in asynchronous(no upper bound on when the response to the request will be received) systems. It says whatever the majority says is followed.

Consensus Protocol
It solves two problems
1. Prevent Attacks
2. Competing Chain Problem

Types of Consensus Protocol
1. Proof of Work (PoW)
2. Proof of Stake (PoS)

How ot solves "Prevent Attacks"?
An algorithm that looks like the below one, runs before adding a node in blockchain
<br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/blockchain/images/consensusAlgo.jpg?raw=true)
<br/> 

How ot solves "Competing Chain Problem"?
Longest Chain Rule
The Longest Chain Rule ensures that network will recognise the “chain with most work” as the main chain. The chain with the most work is typically (not always) the longest of the forks.

1. The consensus protocol of blockchain is much better than the Byzantine Fault Tolerance as consensus protocol only needs a 51% majority while Byzantine Fault Tolerance needs approx 66%.
2. All the transaction in the Orphan Block will be dropped and the miner that had mined the block will not get any reward.
3. So that's why wait for the 6 confirmations before assuming payment to be successful.

 

