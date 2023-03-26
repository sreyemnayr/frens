// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Many thanks to the dev of the fantastic Checks smart contract 

interface IFrens {

    struct Fren {
        uint8 palette;   // The palette ID (0-255)
        uint8 colors;    // The number of colors ()
        uint8 rotation;  // Number of steps the palette should be rotated
        string direction; // Forward or backward
        string segment;   // Full, H1, H2, Q1, Q2, Q3, Q4, T1, T2, T3
        bool inverted;    // Yes/No
        bool attention;     // Yes/No
        uint32 epoch;      // Each fren is revealed in an epoch
        bool isRevealed;      // Whether the fren is revealed
        uint256 seed;        // The instantiated seed for pseudo-randomisation
    }

    struct Epoch {
        uint128 randomness;    // The source of randomness for tokens from this epoch
        uint64 revealBlock;   // The block at which this epoch was / is revealed
        bool committed;      // Whether the epoch has been instantiated
        bool revealed;      // Whether the epoch has been revealed
    }

    event NewEpoch(
        uint256 indexed epoch,
        uint64 indexed revealBlock
    );

    error NotAllowed();
    error InvalidTokenCount();
    error ZeroFren__InvalidFren();

}
