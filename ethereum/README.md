# Ethereum

Docs: https://ethdocs.org/en/latest/contracts-and-transactions/index.html

Topics
1. What is Ethereum
2. Smart Contract
3. Dapps
4. EVM and Gas
5. DAOs = decentralized autonomous organization
6. Hard and Soft Fork
7. Dao Attack
8. ICO
9. Altcoins

Ethereum is an open-source blockchain-based platform.

Types of Nodes
1. Full Node: Locally stores a copy of the entire blockchain. Verifies and validates all the block.
2. Light Node: Stores only the block header. Depends on full node.
3. Archive Node: Stores everything kept in the full node and built an archive of historical data. Requires terabytes of disk space.

Types of Ethereum Accounts
1. Externally Owned Account (EOA): 
An externally controlled account

    - has an ether balance,
    - can send transactions (ether transfer or trigger contract code),
    - is controlled by private keys,
    - has no associated code.


2. Contract Account (CA): 
A contract

    - has an ether balance,
    - has associated code,
    - code execution is triggered by transactions or messages (calls) received from other contracts.
    - when executed - perform operations of arbitrary complexity (Turing completeness) - manipulate its own persistent storage, i.e., can have its own permanent state - can call other contracts

What is a contract?
A contract is a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain. Contract accounts are able to pass messages between themselves as well as doing practically Turing complete computation. Contracts live on the blockchain in a Ethereum-specific binary format called Ethereum Virtual Machine (EVM) bytecode.

What does turing complete mean?
A Turing Complete system means a system in which a program can be written that will find an answer (although with no guarantees regarding runtime or memory).

So, if somebody says "my new thing is Turing Complete" that means in principle (although often not in practice) it could be used to solve any computation problem.

Contracts are typically written in some high level language such as Solidity and then compiled into bytecode to be uploaded on the blockchain.

What is EVM?
Ethereum implements an execution environment on the blockchain called the Ethereum Virtual Machine (EVM). Every node participating in the network runs the EVM as part of the block verification protocol. 


What is Gas?
Gas is the name for the execution fee that senders of transactions need to pay for every operation made on an Ethereum blockchain. The name gas is inspired by the view that this fee acts as cryptofuel, driving the motion of smart contracts. 

Latest Gas costs: https://github.com/djrtwo/evm-opcode-gas-costs/blob/master/opcode-gas-costs_EIP-150_revision-1e18248_2017-04-12.csv

Gas Price
It is the amount the sender wants to pay per unit of gas to ge the transaction mined. gasPrice is set by the sender.
Gas prices are denoted in gwei.

```shell
 1 gwei = 10^-9 ETH
```

1 Gas price = 10 gwei

The higher the gas price the faster the transaction will be mined, It just like the transaction in Bitcoin.

Ethereum Gas Limit
It is the maximum gas the transaction can consume.

What is the use of gas limit?
If any contract goes into infinite loop and utilizes all the gas limit, it's execution will be stopped and transaction will be considered failed. To stop any kind of unlimited money deduction or hacking of any sort.

decentralized autonomous organization (DAO)
The DAO was an organization created by developers to automate decisions and facilitate cryptocurrency transactions.

The DAO Attack

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/dao1.jpg?raw=true)

<br/>


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/dao2.jpg?raw=true)

<br/>

Hard Fork
1. During a hard fork, software implementing a protocol and its mining procedures is upgraded.
2. Once a user upgrades their software, that version rejects all transactions form older software, effectively creating a new branch of the blockchain.
3. However, those user who retain the old software continue to process transactions.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/hardfork.jpg?raw=true)

<br/>

Soft Fork
1. Soft Fork are a change to the protocol, but the end product remains unchanged.

2. A soft fork is a backward-compatible upgrade, meaning that the upgraded nodes can still communicate with the non-upgraded ones.

3. Old nodes (not upgraded nodes) could still validate blocks and transactions(the formatting didn't break the rules), but they just wouldn't understand them.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/softfork.jpg?raw=true)

<br/>

ICO: Initial Coin Offering
An initial coin offering (ICO) is the cryptocurrency industry's equivalent to an initial public offering (IPO). A company seeking to raise money to create a new coin, app, or service can launch an ICO as a way to raise funds. Interested investors can buy into an initial coin offering to receive a new cryptocurrency token issued by the company

# Ethereum 2.0 or Serenity
Ethereum 2.0, also known as Eth2 or “Serenity,” is an upgrade to the Ethereum blockchain. The upgrade aims to enhance the speed, efficiency, and scalability of the Ethereum network so that it can avoid bottlenecks and process more transactions simultaneously.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/eth2.jpg?raw=true)

<br/>

Proof of Stake
 - The more ether you pay the more chances of getting randomly selected you have.

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/pos.jpg?raw=true)

<br/>

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/posVsPoW.jpg?raw=true)

Sharding
Sharding is a type of database partitioning that separates large databases into smaller, faster, more easily managed parts. These smaller parts are called data shards. The word shard means "a small part of a whole."

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/ethereum/images/sharding.jpg?raw=true)

major Benefits
1. Trnasactions per second increase.
2. Powerful and expensive computers will not be needed. 
3. More validators will join.
4. Energy consumption will reduce.

Altcoins
Altcoins are all cryptocurrencies other than Bitcoin. These altcoins have risen to prominence and have become major players in the digital currency market. 

Problems with Bitcoin
Nevertheless, the idea of using Bitcoin as a digital currency is suffering from three primary challenges: Its value is too unstable. Transaction processing speed is too slow. Transaction fees are too high.




