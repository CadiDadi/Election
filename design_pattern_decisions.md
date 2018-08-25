# Design Pattern Decisions
The implementation of Common Design Pattern Decisions can greatly improve Smart Contract development. It is wise to follow protocols that are tried and tested.

## Fail early and fail loud
Functions should check conditions for failure ASAP. This is critical to determine if functions executed properly.  
Two common practices of doing so include:
1. Ensure that if/when functions fail, they throw exceptions. 
2. Check that required conditions for execution are met. This also helps reduce unnecessary code execution in event an exception will be thrown.

## Restricting Access
Prevent unauthorized people or computer programs from reading your contracts’ state. Limit access to public variables and functions to only those deemed necessary.
Two best practices to achieve this: 
1. Restrict other contracts’ access to the state by making state variables private.
2. Restrict levels of function access to classifications of users, such as: Owners, Administrators, Users, Stakeholders.

## Auto Deprecation 
Use Auto Deprecation to close contracts that should expire after a certain amount of time. 
Keep in mind that timestamps, such as the now keyword, may be manipulated by block miners within a 30-second window. 

## Speed Bump

Speed bumps slow down actions so that if malicious actions occur, there is time to recover. They can be utilized to limit function execution frequency.

## Mortal / Kill
Implementing the mortal design pattern means including the ability to destroy the contract and remove it from the blockchain. You can destroy a contract using the self-destruct keyword. 

## Withdraw Pattern / Pull over Push Payments
Protects against re-entrancy and denial of service attacks

## Circuit Breaker
Circuit Breakers are design patterns that allow contract functionality to be stopped. This would be desirable in situations where there is a live contract where a bug has been detected. Freezing the contract would be beneficial for reducing harm before a fix can be implemented.

## Upgradeability
Ensure data and logic are upgradable, remaining effective after upgrades. 

## State Machine
Contracts often act as a state machine, which means that they have certain stages in which they behave differently or in which different functions can be called.

## Restrict Access

Restrict access to contracts, variables, and functions based on levels of necessity, such as Owner, Admin, User, Stakeholder.
