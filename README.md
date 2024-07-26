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

## See local environment
npx hardhat node
# hardhat-tutorial





require("@nomicfoundation/hardhat-toolbox");
require("@nomicfoundation/hardhat-verify");
require("dotenv").config();

const { ALCHEMY_API_KEY, PRIVATE_KEY, ETHERSCAN_API_KEY } = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {},
    localhost: {
      url: "http://127.0.0.1:8545",
    },
    optimismSepolia: {
      url: `https://opt-sepolia.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    baseSepolia: {
      url: `https://base-sepolia.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    optimism: {
      url: `https://opt-mainnet.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
  }, 
  etherscan: {
    apiKey: {
      sepolia: ETHERSCAN_API_KEY,
    },
    customChains: [
      {
        network: "optimismSepolia",
        chainId: 11155420,
        urls: {
          apiURL: "https://api-sepolia-optimistic.etherscan.io/api",
          browserURL: "https://sepolia-optimism.etherscan.io/"
        }
      }
    ]
  },
};












