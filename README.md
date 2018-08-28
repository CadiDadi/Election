


## Local Setup

# Requirements
1. Node.js installed: [Node.js](https://nodejs.org/en/)
2. Metamask browser plugin (Chrome, Firefox, Brave): [Metamask](https://metamask.io/)
3. Ganache installed: ```npm install -g ganache-cli```

# A. Clone the repo: ``` git clone https://github.com/CadiDadi/Election  ```

# B. MetaMask
1. Open MetaMask
2. Create account using Import Seed - use the mnemonic from your running ```ganache-cli```
3. Change network to: ```LocalHost 8545``` 

# C. CLI 1:
1. Clone project: ```git clone https://github.com/CadiDadi/Election.git```
2. Enter project: ```cd Election```
3. Install NPM: ```npm install```
4. Compile contracts: ```truffle compile```
5. Test contracts: ```truffle test```
6. Migrate contracts: ```truffle migrate --network rinkeby```
7. Open server ```npm run dev```  This should open a browser automatically. If not, open a browser and go to; ```localhost:3000```


