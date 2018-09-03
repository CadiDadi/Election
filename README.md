# Election Decentralized Application (dApp)

A dApp to allow users to vote for candidates

---
### Local Setup, Testing, & Interaction

#### Requirements
1. Node.js installed: [Node.js](https://nodejs.org/en/)
2. Metamask browser plugin (Chrome, Firefox, Brave): [Metamask](https://metamask.io/)
3. Ganache installed: ```npm install -g ganache-cli```

#### A. MetaMask
1. Open MetaMask
2. Create account using Import Seed - use the mnemonic from your running ```ganache-cli```
3. Change network to: ```LocalHost 8545``` 

#### B. CLI 1: 
Run: ```ganache-cli```

#### C. CLI 2:
1. Clone project: ```git clone https://github.com/CadiDadi/Election.git```
2. Enter project: ```cd Election```
3. Install NPM: ```npm install```
4. Compile contracts: ```truffle compile```
5. Test contracts: ```truffle test```
6. Migrate contracts: ```truffle migrate```
7. Open server ```npm run dev```  This should open a browser automatically. If not, open a browser and go to; ```localhost:3000```

#### D. dApp Interaction

1. Select a candidate and submit vote.
2. MetaMask will open to complete the transaction
3. The candidate voting status will reflect the change once the transaction is processed.

---
### Rinkeby Setup & Interaction

1. The dApp is hosted:  https://cadidadi.github.io/Election/
2. Connect MetaMask to Rinkeby Network
3. dApp interaction operates similar to Local interaction

