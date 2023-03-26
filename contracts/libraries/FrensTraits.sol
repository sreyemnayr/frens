//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Utilities.sol";

/**

@title  FrensMetadata
@author VisualizeValue
@notice Renders ERC721 compatible metadata for Frens.
*/
library FrensTraits {

    function colors(
      uint128 rando
    ) public pure returns (uint8){
      uint8 unpacked = Utilities.unpack(rando, 0);
      if (unpacked > 254) return 64;
      if (unpacked > 192) return 4;
      if (unpacked > 128) return 3;
      if (unpacked > 64) return 7;
      if (unpacked > 32) return 6;
      if (unpacked > 16) return 2;
      if (unpacked > 8) return 16;
      if (unpacked > 4) return 8;
      if (unpacked > 2) return 32;
      if (unpacked > 1) return 1;
      return 0;
    }

    function palette(
      uint128 rando
    ) public pure returns (uint8){
      return Utilities.unpack(rando, 1);
    }

    function rotation(
      uint128 rando
    ) public pure returns (uint8) {
      uint8 unpacked = Utilities.unpack(rando, 2);
      return unpacked % 8;
    }

    function direction(
      uint128 rando
    ) public pure returns (string memory) {
      uint8 unpacked = Utilities.unpack(rando, 3);
      return unpacked % 2 == 0 ? "FORWARD" : "REVERSE";
    }

    function segment(
      uint128 rando
    ) public pure returns (string memory){
      uint8 unpacked = Utilities.unpack(rando, 4);
      if (unpacked > 64) return "FULL";
      if (unpacked > 42) return "H2";
      if (unpacked > 20) return "H1";
      if (unpacked > 16) return "T3";
      if (unpacked > 12) return "T2";
      if (unpacked > 8) return "T1";
      if (unpacked > 6) return "Q4";
      if (unpacked > 4) return "Q3";
      if (unpacked > 2) return "Q2";
      return "Q1";
    }

}