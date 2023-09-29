# FlashLoanSimple-Pt-2

Welcome to the `FlashLoanSimple-Pt-2` repository. This repository builds upon the basic implementation of a FlashLoan contract for Aave v3, utilizing the Hardhat framework. While the primary goal of the original project was to provide a simple example of how flash loans work within the Aave ecosystem, this part delves into more advanced topics, including deployment scripts and deploying the FlashLoan contract on testnets, including Layer 2 solutions.

## Table of Contents

- [Introduction](#introduction)
- [Verification and Security](#verification-and-security)
- [Commented Code](#commented-code)
- [Getting Started](#getting-started)
- [Smart Contract Deployment](#smart-contract-deployment)
- [Contributions](#contributions)
- [License](#license)
- [Project Updates](#project-updates)
- [Additional Resources](#additional-resources)
- [Donation](#donations)

## Introduction

This repository is an extension of the [FlashLoanSimple repository](https://github.com/Innovation-Web-3-0-Blockchain/FlashLoanSimple) project, covering more advanced topics related to flash loans within the Aave ecosystem. It includes deployment scripts and instructions for deploying the FlashLoan contract on various testnets, including Layer 2 solutions.

## Verification and Security

Each modification to this project undergoes a meticulous verification process and subsequent signing. This stringent approach guarantees the authenticity and integrity of our codebase. In case you encounter any modifications that lack appropriate verification, we strongly advise against cloning or utilizing them, as they might harbor malicious code.

## Commented Code

**Please take note:** Our codebase is meticulously documented with comprehensive comments, aimed at providing a clear understanding of the functionality of individual components.

## Getting Started

To explore and interact with our `FlashLoanSimple-Part-2` project, follow these steps:

1. Clone this repository to your local machine.

   ```bash
   git clone https://github.com/Innovation-Web-3-0-Blockchain/FlashLoanSimple-Part-2.git
   ```
   
2. Ensure you have `node.js` and `npm` installed in your environment.

3. Install the necessary dependencies by running the following command in your terminal:

   ```bash
   npm install
   ```

## Smart Contract Deployment

**We will be deploying the FlashLoan contract on Polygon Mumbai Testnet.**

To deploy the `FlashLoanSimplePt2.sol` contract, follow these steps:

1. Set your deployment environment by setting the **hardhat.config.js** file with the testnet you want to use with the Hardhat node. For guidance on what to include, please refer to our [Hardhat Configuration File](./hardhat.config.js).

2. Set your RPC endpoint. We recommend using your own RPC URL for better reliability. You can create your own Web3 API keys on the Infura website: [Infura](https://www.infura.io/).

3. Create a **.env** file and add the following:

   ```env
   YOUR_API_KEY=""        // Paste your Web3 API key in between the quotation marks
   YOUR_PRIVATE_KEY=""    // Paste your wallet private key in between the quotation marks
   ```
   
**IMPORTANT NOTE:** Make sure that your **.env** file is private, and that you never share its contents.

4. Get faucets MATIC for the gas fees:
   - MATIC faucets: [Mumbai Faucet](https://mumbaifaucet.com/)

5. Get faucets USDC for the FlashLoan:
   - USDC faucets: [Aave Faucet](https://staging.aave.com/faucet/)

6. Deploy the deployment script by using the following command: 

   ```bash
   npx hardhat run --network mumbai scripts/1_deploy.js
   ```

7. (Optional) To use the Polygon Mainnet for forking purposes, use the following command:

   ```bash
   npx hardhat node
   ```

8. (Optional) Deploy the deployment script by using the following command:

   ```bash
   npx hardhat run 1_deploy.js --network fork
   ```

If the deployment is successful, this is what will show up in your command line console:

```
Deploying FlashLoan contract...
FlashLoan contract deployed at: 0x28b76D579f1B3b314098E99a543dF3bC3C2d9Ee6
View contract at: https://mumbai.polygonscan.com/address/0x28b76D579f1B3b314098E99a543dF3bC3C2d9Ee6
--------------------------------------------------------------------------------------------------------------------------

Transferring 5 USDC to the FlashLoan contract...
Transferred 5 USDC tokens to the FlashLoan contract
Waiting for 1 block to verify the transfer...
--------------------------------------------------------------------------------------------------------------------------

USDC balance of the FlashLoan contract is: 5 USDC
--------------------------------------------------------------------------------------------------------------------------

Requesting a flash loan of 1000 USDC...
Flash loan executed!
View transaction at: https://mumbai.polygonscan.com/tx/0x04bf0178a90535f95821925dcc00c12145b9db84de247222f59b6b91794bf0d8
--------------------------------------------------------------------------------------------------------------------------

Withdrawing 4.5 USDC from the FlashLoan contract...
Funds sent!
View transaction at: https://mumbai.polygonscan.com/tx/0xf59acb85d752fd50cb4b990b9a684e1eb0f25b930a9ad43df9faa7b996431f55
--------------------------------------------------------------------------------------------------------------------------
```

**This code tutorial uses a testnet; however, the exact same instructions and sequence will work on the mainnet as well.**

## Contributions

Contributions to this project are welcome and encouraged. If you identify any bugs, have feature requests, or would like to improve the project, please open an issue or submit a pull request. We appreciate your interest and contributions.

## License

This project is licensed under the MIT License. For details, please refer to the [LICENSE](LICENSE) file.

## Project Updates

As the DeFi ecosystem continues to evolve, we will monitor and update this project to align with the latest developments and best practices. Stay tuned for updates and improvements!

## Additional Resources

For more details on flash loans and how they work in Aave, please refer to the [Aave Flash Loans Guide](https://docs.aave.com/developers/guides/flash-loans). 

To verify any Aave V3 testnet addresses, please refer to the [Docs for Aave V3 Testnet Adresses](https://docs.aave.com/developers/deployed-contracts/v3-testnet-addresses#contract-name-changes-from-v2-greater-than-v3by).

## Donations

### Our Values

We do not use any form of social media or engage in marketing activities. Our principles are rooted in open source and privacy, and we do not receive compensation for our contributions to GitHub. Furthermore, we do not endorse or have affiliations with any other projects.

### Supporting Us

While we remain committed to providing valuable resources for aspiring blockchain developers, any donations are greatly appreciated. Your support will help us offset the time and effort we invest in these projects to facilitate access to accessible information.

### Donation Options

We welcome contributions in Bitcoin and Monero, and you can send contributions by scanning one of the addresses in the QR codes at the following link: [Donate to Innovation Web 3.0](https://innovationweb3.github.io/)

Thank you for your support and for being part of our community!
