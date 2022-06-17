# solidity
My journey through solidity

Since there are millions of transactions, transactions get grouped together in blocks. Hence the name. These blocks are chained together in a cryptographically verifiable way so they are historically traceable. The current state of a network can be recalculated at any time by starting from the genesis block and transitioning the state according to each block's information up until now.

By storing data in a peer to peer network of nodes, the blockchain is a decentralized network.

What is web3?
Web3, the future internet we’re moving towards, is a decentralized internet. Under Web3, the internet is shared online and governed by the collective “we,” rather than owned by centralized entities. 

```shell
Web1: Read
Web2: Read-Write
Web3: Read-Write-Own
```

What is Ethereum?
It maintains consensus across all the computers in it's network with Proof of Work (PoW). In the near future Ethereum will be moving to a Proof of Stake (PoS) mechanism.

ERC20 Tokens
In addition to Ether, people can create and use their own currencies on Ethereum. The most common form of currency is ERC20 tokens. ERC20 Tokens are smart contracts that fit a specific standard. 

ERC721 and ERC1155 Tokens
These are what are also called NFTs. These two standards, similar to ERC20, provide a base line for what requirements should be met when creating NFTs. They provide similar benefits as well, allowing wallets and NFT marketplaces to instantly be compatible with all NFT collections as they all follow one of these two standards.

1. Smart contract compilation
Contract Source.sol => Solidity compiler => application binary interface (ABI) and Byte Code
Byte Code => Ethereum Blockchain

2. EVM = Ethereum virtual machine

3. Types of environments
Mainnet - used for actual transactions with value, eg. Ethereum (https://etherscan.io/)
Testnet - to test smart contracts and decentralized, eg. Rinkeby Test Networks (https://www.rinkeby.io/#stats)

4. Bytecode is immutable
5. Contract bytecode is public in readable form
6. Contract doesn't have to be public
7. ABI act as a bridge between applications and smart contract
8. ABI and Bytecode cannot be generated without source code.

How to convert Bytecode to Opcode
https://etherscan.io/opcode-tool

Ethereum Opcodes
https://github.com/crytic/evm-opcodes

Metamask
6403b630717ba325063d9cc08f5faadf39323059f7b9308305293fa761f0378f

Rinkeby Faucet or Ropsten Faucet => to generate fake ether and transfer to metamask
https://rinkebyfaucet.com/

Deployment environments
Javascript virtual machine = Transactions will be executed in a sandbox
Injected web3 = Deploy a contract or run a transaction on Ethereum main or test net.
Web3 provider = Connect to a remote node and Ethereum client
 
Metamask secret 
indoor try wasp judge boil burst second wrap empower private foam crew

Types of variables 
1. State Variable = cost gas, cause it is stored in contract level
2. Local Variable = stored inside a function, memory keyword has to be used for string datatype

Functions
1. When you call a setter function it creates a transaction that needs to be mined and costs gas because it changes the blockchain. VIse versa for getter function.
2. When you declare a public state variable a getter function is automatically created

View v/s Pure
Pure cannot read or write state variables
If we don't use pure or view then it throws a warning

Constructor
1. Executed only once
2. You can create only one constructor and that is optional.
3. A default constructor is created by the compiler if there is no explicitly defined constructor.

uint public count;
constructor() {
    count = 0;
}

Overflow 
Well, if there is a limit to the size of numbers in computers, what happens when we cross this limit?
In Ethereum, every unsigned int slot in the storage is 32 Bytes or 256 bits.
The result of this arithmetic addition is a number that is greater than the maximum possible integer. It consists of one followed by 256 zeroes (b100…000), which in total has a length of 257 bits. But the slot of the integer value in the storage can only have 256 bits. Therefore, only the 256 RMB (rightmost bits) are stored in the storage, and everything else is ignored.
As a result, the value that is actually stored is 0x00…000 (0), this is an integer overflow.

storage v/s memory
1. storage = Holds state variables; memory = holds local variables inside Functions
2. storage = persistent and cost g  as; memory = not persistent and no gas fees

Global variables in Solidity
https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html

Visiblity in Solidity<br/><br/>  
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/solidity/visibility.jpg?raw=true)

Why to run Bitcoin Node?
1. For developing a bitcoin software
2. Do not want to rely on third party for validation your transactions



