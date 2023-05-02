/** @type import('hardhat/config').HardhatUserConfig */
require('@nomiclabs/hardhat-waffle');
const INFURA_URL = 'https://sepolia.infura.io/v3/9236ce8ad8bc42c0aa0b2b186c798703';
const PRIVATE_KEY = 'e4a0b8f4602d1e7a747c46834a88f0f13bb7ff58a57c970eaedb6f96e3a7d146';
module.exports = {
  solidity: "0.8.0",
  networks: {
    sepolia: {
      url: INFURA_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  }
};
