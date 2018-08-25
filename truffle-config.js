
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
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
      from: "0xc1a34308514449c2d45db1a425fd8a3fa668d96c ", // that address is MY ACCT 0 / account from which to deploy
      gas: 2900000
     }     
  }
};
