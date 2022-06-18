# Truffle

Topics
1. Ganache
2. Writing Contract in VS Code using Truffle
3. Truffle Compilation
4. Truffle Migration
5. Infura
6. Deploy contract on testnet

Ganache = local blockchain simulator
Truffle = Truffle is a development environment, asset pipeline, and testing framework for developing smart contracts.

```shell
truffle compile
truffle migrate
truffle migrate --reset
truffle migrate --network ropsten
```

![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/truffle/truffledeploy.jpg?raw=true)


![alt text](https://github.com/bluntbrain/blockchain-notes/blob/main/truffle/ganache_sc.jpg?raw=true)

What is Infura?
to deploy smart contracts on ethereum testnet or mainnet <br/>
https://medium.com/what-is-infura/what-is-infura-59dbdd778455

Deploying smart contract on testnet with truffle
```shell
  Deploying 'demo'
   ----------------
   > transaction hash:    0x668d6b347298500965ef3f7eb634959a142b56144013c42b73d84a3616bd9a51
   > Blocks: 1            Seconds: 8
   > contract address:    0x2AbbbfF1169E825Ab51F80BeFb2899d291505f61
   > block number:        12418108
   > block timestamp:     1655534376
   > account:             0xc2223264b4B8f3F98c4DBF0c2f6Be2700Ae86062
   > balance:             4.998485442495759239
   > gas used:            127861 (0x1f375)
   > gas price:           2.500000007 gwei
   > value sent:          0 ETH
   > total cost:          0.000319652500895027 ETH

   Pausing for 2 confirmations...

   -------------------------------
   > confirmation number: 1 (block: 12418109)
   > confirmation number: 2 (block: 12418110)
   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.000319652500895027 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.000802760002247728 ETH
```
Deployed contract link : https://ropsten.etherscan.io/tx/0x668d6b347298500965ef3f7eb634959a142b56144013c42b73d84a3616bd9a51


Commands for frontend:
```shell
  create frontend:              truffle unbox react
  Contracts: Compile:         cd truffle && truffle compile
  Contracts: Test:            cd truffle && truffle test
  Contracts: Migrate:         cd truffle && truffle migrate
  Dapp: Run dev server:       cd client && npm start
  Dapp: Test:                 cd client && npm test
  Dapp: Build for production: cd client && npm run build
```
