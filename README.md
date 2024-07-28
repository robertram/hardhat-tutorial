# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.js
```

# Commands

Video Recap

https://www.loom.com/share/945c3f3f4ee847749eb12d5c4bc020e7?sid=f683c016-e160-4e2c-8182-59d2e130f556

Video 2
https://www.loom.com/share/9d4eb86d7f7b48e6aee8cfc30b0808f1?sid=3396a9aa-d22a-4c2e-a6e3-74704f2e4173

## 

npx hardhat

## Compile contract

npx hardhat compile

## Run tests

npx hardhat test

## Deploy smart contract

npx hardhat ignition deploy ./ignition/modules/Lock.js

### Choose network 

--network

#### Network options

localhost
optimismSepolia

## Verify smart contract

npx hardhat ignition deploy ignition/modules/Lock.js --network sepolia --verify

## See local hardhat blockchain
npx hardhat node
