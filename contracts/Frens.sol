// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█████╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████████╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬████▀│▄▓███╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█▒╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬███▀│▄████▀██░╙▀╣╬╬╬╬╬╬╬╬╬╬▓▀╙▐█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬███╙░▄███▄▄▄▒██▒░░░░╙▀▓╬╬▓╝▀└   █╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██│░]███▀░░░░╚███▒░░░░▄▓██▄'    ▐█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██│░▄██░╠╠╠╠╠╠╠██▌╙█▄▓╬╬╬╬╬╬╬▓▄  █╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██│░▐██▒▄▓▀▀▀#╠╠███▀│██╬╬╬╬╬╬╬╬╬▓▓█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██░░░██░░░▄▄▄▄▄░╠██▌░░░╟█╬╬╬╬╬╬╬╬╬█╙█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╟█▌░░▓█▓██████▀▀█████░░░░██╬╬╬╬╬╬╬╫▌░░│▀█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██░░░████▄▄███▓▓▓████░░░░░█▒╬╬╬╬╬╬█░░░░░│▀█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╣██░░░██▒░╚╚▀▀▀▀╚░╠╟██░░░░░╟█╬╬╬╬╬█▒╚╚╚╟▌░░│▀█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╫▌▌░░░██▒╠╠╠╠╠╠╠╠╠╠╟██▒░░░░░█╬╬╬╬╬█▄▄▄▄▄█░░░░│▀█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▓▌░░░██╠▒▒╠╠░▄▄▄░╠╟██▒░░░░░╫█╬╬╬██╬╬██░█░░░░░░│█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▒▌░░░██╚▀▀▀╠▒╚╚░░▒╠██▌░░░░░╟█╬╬╣█╟▌░░▄▓▀░░░░░░░░╙█╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▌▌░░░█████████████████░░░░░║█╬╬█▒╠█░░╟▒░█╚▌░█╬█▄▄██╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▌█░░░████▀▀▀▀▀▀▀╙╙╠█▀█░░░░░▐█╬╣█╠╠╟▌░░╙╙░░█╣▒╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▌╫░░░╟█         .▓▀│░█░░░░░]█╬█░╠╠╠█░░░░░░█╫╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▌╚▌░░░▀▀██'    ▄█│░░░█▒░░░░▐█╫▌╠╠╠╠╟▌░░░▓▀██▀█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╣▒▄▄█░▄███░█'  .▓▀▄╪▀╪░╫▌░░░░╟██▒╠╠╠╠╠█░░╫█#▀▀▓█▒╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╠╬╬╬╬╬╬█╬█╙╙' .█│░▄██▓▄╟▌░░░░╫█▌╠╠╠╠╠╠╫▌░░╫▄▄▄█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╫⌐   .█░░╙█╫███░█░░░░██╠╠╠╠╠╠╠╠█░░░░███▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬███▌    █▒░░░│╙╙│░░█░░░]█▒╠╠╠╠╠╠╠╠█▌░░░░░╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓.   ▐▌░░░░░░░░;▄█▒░░╫█╠╠╠╠╠╠╠╠╠╠█░░░░½█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╙.  │█░░░░░░░░░╙╬█▒░░█▓▓▌╠╠╠╠╠╠╠╠█▌░░░█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▌    j▌░░░░░░░░░░░▐╬███▓▓▒╠╠╠╠╠╠╠▄█▒░░██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▌    ▐▌░░░░░░░░░░░▐╬█▒╠╠╠╠╠╠╠╠╠╠█▀░░░██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█    j▌░░░░░░░░]▓▀▓█▀▌╠╠╠╠╠╠╠╬█▀░░░╓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█,  '█░░░░░░░░█#▀▀▀▄█╠╠╠╠╠▒█▀░░░░▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓▓▄╟▌░░░░░░░╟▄▄▄▄▓░╠╠╠▄█▀░░░░▄█▒██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╣██▓▓▄▄▄▄░░░╙╫▒╠▒▓█▒░░░░▓█╬╬╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█╙█▄░░│╙╠█▀▀▓▓█▀░░░░▄█╬╬╬╬╬██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█░░╙▀▓▄░░▀▀▀╙░░▄▄██╬╬╬╬╬╬╬╬█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▒░░░░│█╬▀▀▀▀╬█╬╬╬╬╬╬╬╬╬╬╬╟█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▒░░░░░█╠╠╠╠╠╠▀█▒╬╬╬╬╬╬╬╬╬╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█░░░░░░█╠╠╠╠╠╠▓█╬╬╬╬╬╬╬╬╬╬╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╣█░░░░│▄█╠╠╠╠╠╠█╬╬╬╬╬╬╬╬╬╬╬╫▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▒░░░▓█░╠╠╠╠╠╠╠╫▒╬╬╬╬╬╬╬╬╬╬╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╣█░░░░░██▒╠╠╠╠╠╠╟█╬╬╬╬╬╬╬╬╬╬╫█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█░░░░░░░██▒╠╠╠╠╠╟█╬╬╬╬╬╬╬╬╬╬╣█╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// ╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬█▌░░░░░░░░███▒╠╠╠╠█╬╬╬╬╬╬╬╬╬╬╬██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬
// 
// FRENS are fun, colorful art by Gabe Weis 
// FRENS are fun, colorful code by Ryan Meyers
//
// The world will be saved by beauty
//

import "./extensions/ERC721PartnerSeaDropBurnable.sol";
import "./interfaces/IFrens.sol";
import "./libraries/FrensMetadata.sol";
import "chiru-labs/ERC721A@4.2.3/contracts/interfaces/IERC721AQueryable.sol";

contract FRENS is IFrens, ERC721PartnerSeaDropBurnable {

    mapping(uint24 => Epoch) epochs; // All epochs
    uint24 public epoch;  // The current epoch index
    mapping(uint256 => bool) stoicsClaimed;
    bool public breakupsAllowed;

    IERC721AQueryable public Stoics;
    

    /**
     * @notice Deploy the token contract with its name, symbol,
     *         administrator, and allowed SeaDrop addresses.
     */
    constructor(
        string memory name,
        string memory symbol,
        address administrator,
        address[] memory allowedSeaDrop
    ) ERC721PartnerSeaDropBurnable(name, symbol, administrator, allowedSeaDrop) {
        epoch = 1;
        Stoics = IERC721AQueryable(0x12632d6E11C6Bbc0c53f3e281eA675e5899a5DF5);
    }

    /**
     * @notice Mint tokens, restricted to the SeaDrop contract.
     *
     * @param minter   The address to mint to.
     * @param quantity The number of tokens to mint.
     */
    function mintSeaDrop(address minter, uint256 quantity)
        external
        virtual
        override
    {
        // BOGO for Stoics
        uint256 stoicsBalance = Stoics.balanceOf(minter);

        if (stoicsBalance > 0){
            uint extraFrens = 0;
            uint[] memory ownedStoics = Stoics.tokensOfOwner(minter);
            for(uint i = 0; i < stoicsBalance && extraFrens < quantity;){
                if(!stoicsClaimed[ownedStoics[i]]) {
                    unchecked { extraFrens++; }
                    stoicsClaimed[ownedStoics[i]] = true;
                }
                unchecked { i++; }
            }
            unchecked { quantity += extraFrens; }
        }
        // Ensure the SeaDrop is allowed.
        _onlyAllowedSeaDrop(msg.sender);
        // Mint the quantity of tokens to the minter.
        _mint(minter, quantity);
    }

    function _mint(address to, uint256 quantity) internal override {
        uint256 nextTokenId = _nextTokenId();
        resolveEpochIfNecessary();
        super._mint(to, quantity);
        // Store the epoch in the erc721a extraData
        _setExtraDataAt(nextTokenId, epoch);
    }

    function breakup(
        uint256 tokenOne, uint256 tokenTwo
    ) public {
        _burn(tokenOne, true);
        _burn(tokenTwo, true);
        _mint(msg.sender, 1);
    }

    function toggleBreakups() public onlyOwnerOrAdministrator {
        breakupsAllowed = !breakupsAllowed;
    }


    /// @notice Initializes and closes epochs.
    /// @dev Based on the commit-reveal scheme proposed by MouseDev.
    function resolveEpochIfNecessary() public {
        Epoch storage currentEpoch = epochs[epoch];

        if (
            // If epoch has not been committed,
            currentEpoch.committed == false ||
            // Or the reveal commitment timed out.
            (currentEpoch.revealed == false && currentEpoch.revealBlock < block.number - 256)
        ) {
            // This means the epoch has not been committed, OR the epoch was committed but has expired.
            // Set committed to true, and record the reveal block:
            currentEpoch.revealBlock = uint64(block.number + 50);
            currentEpoch.committed = true;

        } else if (block.number > currentEpoch.revealBlock) {
            // Epoch has been committed and is within range to be revealed.
            // Set its randomness to the target block hash.
            currentEpoch.randomness = uint128(uint256(keccak256(
                abi.encodePacked(
                    blockhash(currentEpoch.revealBlock),
                    block.difficulty
                ))) % (2 ** 128 - 1)
            );
            currentEpoch.revealed = true;

            // Notify DAPPs about the new epoch.
            emit NewEpoch(epoch, currentEpoch.revealBlock);

            // Initialize the next epoch
            epoch++;
            resolveEpochIfNecessary();
        }
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (!_exists(tokenId)) revert URIQueryForNonexistentToken();
        Epoch storage tokenEpoch = epochs[_ownershipOf(tokenId).extraData];
        return FrensMetadata.tokenURI(tokenId, tokenEpoch.randomness, _baseURI());
    }

    function _extraData(address, address, uint24 previousExtraData) internal pure override returns (uint24) {
        return previousExtraData;
    }

    

}