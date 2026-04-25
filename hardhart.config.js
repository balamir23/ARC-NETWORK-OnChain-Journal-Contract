require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    arc: {
      url: "RPC_URL_BURAYA",
      accounts: ["PRIVATE_KEY_BURAYA"]
    }
  }
};
