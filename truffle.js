
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      host: "localhost",
      port: 8545,
      network_id: "4", // Rinkeby ID 4
      from: "0x86AdEdCAB87183d4C2E80fc4C505d5fffB07854D", // that address is MY ACCT 0 / account from which to deploy
      gas: 2900000
     }     
  }
};

