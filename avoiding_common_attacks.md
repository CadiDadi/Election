# Avoiding Common Attacks
Source – Consensys Developer Program Video series & included sources

There are a number of common security vulnerabilities that have been identified. Using established best practices can help avoid common attacks.

## Race Conditions

Calling external contracts can take over the control flow and make changes to your data that the calling function wasn't expecting. 

Two types of Race Condition common attacks:

### 1. Reentrancy - Race Condition

Calling external contracts passes control flow to them. The called contract may end up calling the smart contract function again in a recursive manner.

Prevention:
•	Remove the external call if possible.
•	Implement internal work before making the external function call. 
•	Use the withdrawal design pattern and separate the contract accounting logic and the transfer logic.

### 2. Cross-function - Race Condition

Cross function race conditions can be problematic if your contract has multiple functions that modify the same state.

Prevention:
•	Handle internal contract state changes before calling external contracts.
•	Implement mutual exclusion by locking a state and only allow changes by the owner of the lock.

### Pitfalls in Race Conditions

Some conditions can occur across multiple functions and contracts, and common Race Condition Solutions are not sufficient for prevention.

Additional Prevention methods:
•	Avoid calling functions that call external functions.
•	Lock State to only be accessible to specific contracts, such as Owner.

## Transaction-Ordering Dependence (TOD)

The order of transactions is easily subject to manipulation. Transactions that are broadcast to the network but have not yet been included in a block are in the mempool, which indicate what transactions are about to occur.

## Timestamp Dependence

Timestamps of the block can be manipulated by miners.

Prevention:
•	Consider all direct and indirect uses of the timestamp.

## Integer Overflow and Underflow

A variable that can be set by user input may need to check against overflow, whereas it is infeasible that a variable that is incremented will ever approach this max value. 
Underflow is a similar situation, but when a uint goes below its minimum value it will be set to its maximum value.

Prevention:
•	Be careful with smaller data types like uint8, uint16, etc… they can more easily reach their maximum value

## DoS with (Unexpected) revert

Passing execution to another contract that always reverts makes original function unusable.

Prevention:
•	Utilizing a pull payment system over push payments.
•	Avoid looping patterns.

## DoS with Block Gas Limit

Ethereum blocks can process a certain maximum amount of computation. Too many transactions will surpass the Block Gas Limit and transaction will fail. Attackers can manipulate the amount of gas needed. 

Prevention:
•	Utilizing a pull payment system over push payments.
•	Avoid looping patterns.

## Force Sending Ether 

Be aware that it is possible to send ether to a contract without triggering its fallback function. Using the selfdestruct function on another contract and using the target contract as the recipient will force the destroyed contract’s funds to be sent to the target. It is also possible to precompute a contracts address and send ether to the address before the contract is deployed. 

Prevention:
•	Avoid using the contract balance in certain logic.

## Integer Overflow and Underflow
Integer values wraps we have to be extra careful with smaller data types like uint8, uint16, etc, they can more easily reach their maximum value.

Prevention:
•	Utilize OpenZeppelin SafeMath’s safety checks.
