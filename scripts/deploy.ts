import { ethers } from "hardhat";

async function main() {

  const Nft = await ethers.getContractFactory(
    "YinkaToken"
  );
  const NFT= await Nft.deploy();
  await NFT.deployed();

  console.log("Nft deployed to: ", NFT.address);

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });