// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title AddressStorage
 * @dev A simple contract to store and retrieve an Ethereum address.
 */
contract AddressStorage {
    /// @notice Stores the address
    address private storedAddress;

    /**
     * @dev Initializes the contract with an initial address.
     * @param _initialAddress The address to store initially.
     */
    constructor(address _initialAddress) {
        require(_initialAddress != address(0), "Initial address cannot be zero address");
        storedAddress = _initialAddress;
    }

    /**
     * @notice Sets a new address.
     * @param _newAddress The new address to store.
     */
    function setAddress(address _newAddress) public {
        require(_newAddress != address(0), "New address cannot be zero address");
        storedAddress = _newAddress;
    }

    /**
     * @notice Gets the stored address.
     * @return The address currently stored in the contract.
     */
    function getAddress() public view returns (address) {
        return storedAddress;
    }
}
