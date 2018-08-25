pragma solidity ^0.4.24;

contract Migrations {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor () {
    owner = msg.sender;
  }

  function setCompleted(uint completed) {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}