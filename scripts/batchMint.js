const { ethers } = require("hardhat");
require("dotenv").config();

async function main() {
  const privateKey = process.env.PRIVATE_KEY;

  const networkAddress =
    "https://eth-goerli.g.alchemy.com/v2/h-asDNMJ21mVniDAY3XE1VQ9F7PW7A0x";

  const provider = new ethers.providers.JsonRpcProvider(networkAddress);

  const signer = new ethers.Wallet(privateKey, provider);

  const contractAddress = "0xFAC6CC003078E0B1F3769361eAf86B922075be96";

  const IndianNFT = await ethers.getContractFactory("country", signer);
  const contract = await IndianNFT.attach(contractAddress);

  await contract.mint(5);

  console.log("Minted 5 tokens");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
