pragma solidity 0.4.24;

import "./SafeMath.sol";

contract Election {
    // Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Voter accts
    mapping(address => bool) public voters;
    // Candidates
    mapping(uint => Candidate) public candidates;
    // Candidates Count
    uint public candidatesCount;

    // voted
    event votedEvent (
        uint indexed _candidateId
    );

    constructor () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
        // only 1 vote
        require(!voters[msg.sender]);

        // candidate required
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record vote
        voters[msg.sender] = true;

        // update vote Count
        candidates[_candidateId].voteCount ++;

        // trigger voted event
        emit votedEvent(_candidateId);
    }
}