const hre = require("hardhat");

async function main() {
  const IdentityContract = await hre.ethers.getContractFactory("IdentityContract");
  const identity = await IdentityContract.deploy();

  console.log(`Identity contract deployed to: ${identity.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
