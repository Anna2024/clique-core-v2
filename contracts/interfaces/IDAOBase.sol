//SPDX-License-Identifier: Unlicense
pragma solidity =0.8.9;

interface IDAOBase {

    function initialize(
        General calldata general_,
        Token calldata token_,
        Governance calldata governance_
    ) external;

    struct General {
        string name;
        string handle;
        string category;
        string description;
        string twitter;
        string github;
        string discord;
        string daoLogo;
    }

    struct Token {
        uint256 chainId;
        address tokenAddress;
    }

    enum VotingType { Any, Single, Multi }
    struct Governance {
        uint256 proposalThreshold;
        uint256 votingQuorum;
        uint256 votingPeriod;          // 0 if removed
        VotingType votingType;
    }

    struct Airdrop {
        address token;
        uint256 tokenReserve;
        bytes32 merkleRoot;
        uint256 startTime;
        uint256 endTime;

        address creator;
    }

}
