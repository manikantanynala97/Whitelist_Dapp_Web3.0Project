const { ethers } =  require("hardhat");

const  main = async() =>
{

    const whitelistContract  = await ethers.getContractFactory("Whitelist");

    const deployedWhitelistContract = await whitelistContract.deploy(10);

    await deployedWhitelistContract.deployed();

    console.log("Whitelist Contract Address",deployedWhitelistContract.address);


}


const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.error(error);
      process.exit(1);
    }
  };
  
  
  
  runMain();