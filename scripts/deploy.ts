
import { ethers } from "hardhat";

async function main() {
  const WarehouseNFT = await ethers.getContractFactory("WarehouseNFT");
  const nft = await WarehouseNFT.deploy();
  await nft.deployed();
  console.log("Contract deployed to:", nft.address);
}

main()
  .catch((err) => {
    console.error(err);
    process.exit(1);
  });
