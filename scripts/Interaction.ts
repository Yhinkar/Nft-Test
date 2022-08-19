import { ethers } from "hardhat";

async function main() {

  const contractAddress = "0x4E387D827E0B134AF9847149E3DEAA0bbDFEc73b"
  const inter= await ethers.getContractAt("Nft", contractAddress);
  
  await.inter.MintTo(0x4E387D827E0B134AF9847149E3DEAA0bbDFEc73b,  "https://ipfs.filebase.io/ipfs/QmT4JUdgbQuucW8SX95g9Wum8vbUCBcAVPVGZCTxEdUhEt");

  console.log("Nft interaction to: ", inter.address);

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });