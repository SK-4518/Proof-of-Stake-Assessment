# Polygon - Proof of Stake

**Aim of the Project**

To deploy an NFT collection on the Ethereum blockchain, map the collection to Polygon, and transfer assets over via the Polygon Bridge. 



**Basic steps required:**


1. Create the contract "country.sol".

2. Create an account on pinata.cloud to upload the images.

![image](https://github.com/SK-4518/Proof-of-Stake-Assessment/assets/136696857/8e381554-5e8e-46a7-9578-4c5d68fe6ce9)

3. Write the various scripts for deploying, minting, and approving the transfer of the nfts.

4. Copy the metamask wallet address and paste it wherever we require the contract address.

5. Create a dotenv file to add the API key, the private key of the wallet account, and the URLs for the testnets.

   

**Country.sol**


1. The contract initially declares the owner and the maximum number of images to be generated variables.

2. The baseURL has the URL of the gateway of pinata.cloud platform.

3. The constructor initializes the owner as the msg.sender.

4. The mint function checks that the sum totalSupply and quantity should be less than the maxQuantity of images to be generated.

5. The baseURI returns the base URL and promptDescription returns the description of the images generated.
   

**Commands to run**


![image](https://github.com/SK-4518/Proof-of-Stake-Assessment/assets/136696857/f0bf7732-3f36-41c9-aa1d-4ff60fe30039)


1. Run the npm i command to install all the project dependencies.

2. In order to deploy the ERC20 contract on the test network, type the command "npx hardhat run scipts/deploy.js --network goerli".

3. To mint the tokens to the wallet account, type the command "npx hardhat run scipts/batchMint.js --network goerli".

4. For the approval and deposit of the NFTs, enter the command "npx hardhat run scipts/approvedDeposit.js --network goerli" onto the terminal.
   

**Open the the site "https://goerli.etherscan.io" to see the results**
  
  Paste the address in the search bar

  ![image](https://github.com/SK-4518/Proof-of-Stake-Assessment/assets/136696857/4cbd0da7-1095-4ac9-b88b-6ca947908d0e)

  
**Code video walkthrough**

https://www.loom.com/share/6ed8d6ef106543e1a3adc86e9db1deff?sid=72363855-023c-454f-97fb-aa20e67b3cc3


**Author**
Sehajpreet Kaur
(21BCS4518@cuchd.in)
   
