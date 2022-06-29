# Hyperledger

Docs: https://hyperledger-fabric.readthedocs.io/en/release-2.2/whatis.html

Topics
1. What is Hyperledger?
2. Why Hyperledger?
3. Private vs Public Blockchain
4. Hyperledger Fabric
5. Channel
6. MSP
7. Nodes
8. Hyperledger Transaction Flow
9. Hyperledger Testnetwork
10. Deploy smart contract


What is Hyperledger?
 - Private Permissioned Blockchain 
 - Private blockchain

Why Hyperledger?
Due to Issues with public blockchain

Issues:
1. Limited scalability.
2. Limited privacy.
3. Storage constraints.
4. Lack of governance and standards.


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/hyperledger/images/pvsp.jpg?raw=true)


Hyperledger Fabric
![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/hyperledger/images/fabric.jpg?raw=true)

MSP (Member Service Provider)
MSP is a modular component that is used to manage identities on the blockchain network. This provider is used to authenticate clients who want to join the blockchain network.

Access Control List
- An access control list (ACL) is a list of rules that specifies which users or systems are granted or denied access to a particular object or system resource. 

- Full access of transaction can be restricted with this.

Different types of Nodes
 - Committing Nodes = Nodes that have all the copied of the ledger.
 - Endorsing Nodes = Nodes that can execute chain code.
 - Ordering Nodes = Nodes that maintain the sequence of transactions.

Chaincode
Chaincode is a program, written in Go, Node.js or Java that implements a prescribed interface.

# Hyperledger Transaction Flow

1. Client initiating a transaction
2. Validation of transaction
3. Simulating the transaction
4. Verify Proposal Response (51% output should be same)
5. Broadcast transaction to the order (transaction goes to orderer node)
6. Order transaction and create block
7. Peers validate each transaction in the block

 