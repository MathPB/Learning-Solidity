pragma solidity ^0.5.1;

contract Ballot{
    
    struct Voter{
        uint weight;
        bool voted;
        uint8 vote;
    }
    
    struct Proposal {
        uint voteCount;
    }
    
    address chairperson;
    mapping(address => Voter) voter;
    Proposal[] proposals;
    
    constructor (uint8 _numProposals) public {
        chairperson = msg.sender;
        voters[chairperson].weight = 2;
        proposals.length = _numProposals;
    }
    
}